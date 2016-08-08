'''
Created on 16 Nov 2015

@author: Emanuele
'''

import os
import sys
import PyPDF2
from utility import writeResults
from utility import getINVInfo

currentPath = os.getcwd()
# pdfFilePath = str(currentPath)+'//COSMEDInvoiceINV16-01309.PDF'
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
    date = ""
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
        'get INV date'
        date = getINVInfo.getDate()
        'get INV number'
        invNumber = getINVInfo.getInvNumber()
        i=0
        for i in range(0,len(pdfLine)):
            '''find the part number which can be A-.... or C0....'''
            if 'A-' == pdfLine[i][0:2] or 'C0' == pdfLine[i][0:2]:
                if 'NIP' == str(pdfLine[i-1][0:3]):
                    '''avoid to add not inventory parts'''
                    i=i+1
                else:
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
                if i == len(indexList)-1:
                    '''looking for serial number
                    in case the part number has no 
                    serial number the string none is
                    appended'''                
                    sn=[]
                    while(index < len(pdfLine)):
                        if 'Serial' in pdfLine[index] or 's/n' in pdfLine[index] or 'SN' in pdfLine[index]:
                            sn.append(pdfLine[index])
                            snList.append(pdfLine[index][0:(len(pdfLine[index])-1)])
                            index=index+1
                        else:
                            index=index+1
                    if(len(sn)==0 and page == pdfReader.numPages-1):
                        snList.append('none')
                else:
                    sn=[]
                    while(index < indexList[i+1] ): 
                        if 'Serial' in pdfLine[index] or 's/n' in pdfLine[index] or 'SN' in pdfLine[index]:
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
            while(index < len(pdfLine)):
                if 'Serial' in pdfLine[index] or 's/n' in pdfLine[index] or 'SN' in pdfLine[index]:
                    sn.append(pdfLine[index])
                    snList.append(pdfLine[index][0:(len(pdfLine[index])-1)])
                    index=index+1
                else:
                    index=index+1
                    
    snList = cleanUpSN(snList)    
    txtFile.close()
    os.remove(txtFilePath)
    pdfFileObj.close()
    writeResults.populateTxt(date, numItems, invNumber, pnList, descrList, qtyList,snList)


def cleanUpSN(snList):
    i=0
    for i in range(0,len(snList)):
        if(not "none" in snList[i]):
            sn = snList[i]
            j=0
            for j in range(0,len(sn)):
                if (not sn[j].isdigit()):
                    offset = j
                else:
                    if (offset != 0):
                        break
                j=j+1
            snList[i]=snList[i][offset+1:len(snList[i])]
    for i in range(0,len(snList)):
        if len(snList[i])>20 or len(snList[i])<2:
            snList[i]="none"
    return snList

getCosmedINVdata(pdfFilePath)
    