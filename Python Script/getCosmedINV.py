'''
Created on 16 Nov 2015

@author: Emanuele
'''

import os
import sys
import PyPDF2

currentPath = os.getcwd()
'''pdfFilePath = str(currentPath)+'//COSMEDInvoiceINV15-00756.PDF'''
pdfFilePath = str(sys.argv[1])
txtFilePath = str(currentPath) + '//utility.txt'
resultFilePath = str(currentPath) + '//results.txt'

def getCosmedINVdata(pdfFilePath):
    
    
    pdfFileObj = open(pdfFilePath, 'rb')
    pdfReader = PyPDF2.PdfFileReader(pdfFileObj)
    
    pnList = []
    descrList = []
    qtyList = []
    snList = []
    numItems = 0
    data = ""
    invNumber = ""
    
    page=0
    for page in range(0,pdfReader.numPages):
        '''for each page of the pdf a txt file is created'''
        pageObj = pdfReader.getPage(page)
        txtFile = open(txtFilePath, 'w')
        txtFile.write(pageObj.extractText())
        txtFile = open(txtFilePath)
        pdfLine=[]
        indexList = []
        for line in txtFile:
            pdfLine.append(line)
        if page == 0:
            '''get the invoice date from the fist page just after the cosmed website'''
            i=0
            for i in range(0,len(pdfLine)):
                if 'www.cosmed.com' in pdfLine[i]:
                    date=pdfLine[i+1]
                if 'Dated:' in pdfLine[i]:
                    invNumber = pdfLine[i+1]
                i=i+1    
        i=0
        for i in range(0,len(pdfLine)):
            '''find the part number which can be A-.... or C0....'''
            if 'A-' == pdfLine[i][0:2] or 'C0' == pdfLine[i][0:2]:
                indexList.append(i)
                i=i+1
            else:
                i=i+1
        
        i=0
        if len(indexList)!=0:
            '''in case the indexList is null,
            probably some other info are in the next page'''        
            for i in range(0,len(indexList)):
                index=indexList[i] 
                pnList.append(pdfLine[index][0:(len(pdfLine[index])-1)])
                numItems=numItems+1
                index=index+1
                descrList.append(pdfLine[index][0:(len(pdfLine[index])-1)])
                index=index+1
                qty = int(pdfLine[index][0:(len(pdfLine[index])-1)])
                qtyList.append(pdfLine[index][0:(len(pdfLine[index])-1)])
                index=index+1
                found=False
                if i == len(indexList)-1:
                    '''looking for serial number
                    in case the part number has no 
                    serial number the string none is
                    appended'''                
                    sn=[]
                    while(index < len(pdfLine) and found != True):
                        if 'Serial' in pdfLine[index] or 's/n' in pdfLine[index]:
                            j=0
                            for j in range(0,qty):
                                sn.append(pdfLine[index])
                                snList.append(pdfLine[index][0:(len(pdfLine[index])-1)])
                                index=index+1
                                j=j+1
                            found=True
                        else:
                            index=index+1
                    if(len(sn)==0 and page == pdfReader.numPages-1):
                        snList.append('none')
                else:
                    sn=[]
                    while(index < indexList[i+1] ): 
                        if 'Serial' in pdfLine[index] or 's/n' in pdfLine[index]:
                            j=0
                            for j in range(0,qty):
                                sn.append(pdfLine[index])
                                snList.append(pdfLine[index][0:(len(pdfLine[index])-1)])
                                index=index+1
                                j=j+1
                        else:
                            index=index+1
                    if(len(sn)==0):
                        snList.append('none')
        else:
            '''this is executed when the indexList is null
            looking for just the serial numbers'''
            index=0
            while(index < len(pdfLine) and found != True):
                if 'Serial' in pdfLine[index] or 's/n' in pdfLine[index]:
                    j=0
                    for j in range(0,qty):
                        sn.append(pdfLine[index])
                        snList.append(pdfLine[index][0:(len(pdfLine[index])-1)])
                        index=index+1
                    found=True
                else:
                    index=index+1
                if(len(sn)==0 and page == pdfReader.numPages-1):
                    snList.append('none')
    
    snList = cleanUpSN(snList)    
    txtFile.close()
    os.remove(txtFilePath)
    pdfFileObj.close()
    writeResults(date, numItems, invNumber, pnList, descrList, qtyList,snList)


def cleanUpSN(snList):
    i=0
    for i in range(0,len(snList)):
        if(not "None" in snList[i]):
            if("Serial" in snList[i]):
                snList[i] = snList[i][10:len(snList[i])]
                i=i+1
            else:
                snList[i] = snList[i][-10:]
                i=i+1
    return snList

def writeResults(date, numItems, invNumber, pnList, descrList, qtyList,snList):
    '''write a txt file to get the data in LabView easily'''
    txtFile = open(resultFilePath, 'w')
    index=0
    indexSn=0
    numRows = 0
    txtFile.write(date)
    txtFile.write(str(invNumber))
    for index in range(0,numItems):
        if int(qtyList[index])>1 and snList[indexSn]!='none':
            j=0
            for j in range(0,int(qtyList[index])):
                if j==0:
                    txtFile.write(pnList[index] +'//'+ snList[indexSn]+'//'+ descrList[index]+'//'+ qtyList[index]+'\n')
                    numRows=numRows+1
                else:
                    txtFile.write(pnList[index] +'//'+ snList[indexSn]+'//'+ descrList[index]+'// \n')
                    numRows=numRows+1                    
                j=j+1
                indexSn = indexSn +1
            index=index +1
        else:
            txtFile.write(pnList[index] +'//'+ snList[indexSn]+'//'+ descrList[index]+'//'+ qtyList[index]+'\n')
            numRows=numRows+1
            index=index+1
            indexSn= indexSn + 1
    
    txtFile = open(resultFilePath, 'r')
    lines = txtFile.readlines()
    txtFile.close()
    os.remove(resultFilePath)
    txtFile = open(resultFilePath, 'w')
    txtFile.write(str(numRows+2)+'\n')
    for line in lines:
        txtFile.write(line)
    
    txtFile.close()

getCosmedINVdata(pdfFilePath)
    