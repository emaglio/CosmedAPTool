'''
Created on 9 May 2016

@author: emanu
'''

import os

currentPath = os.getcwd()
'''don't want the results file in the utility folder'''
# currentPath = currentPath[0:len(currentPath)-8]
# txtFilePath = str(currentPath) + '\\utility.txt'

def getDate(txtFilePath):
    date = ""
    txtFile = open(txtFilePath)
    pdfLine=[]
    found = False
    
    for line in txtFile:
        pdfLine.append(line)
    i=0
    for i in range(0,len(pdfLine)):
        if 'www.cosmed.com' in pdfLine[i]:
            date=pdfLine[i+1]
            found = True
        i=i+1
    
    '''new PDF format the date is after "email: accounting@cosmed.com"'''
    if found == False:
        i=0
        for i in range(0,len(pdfLine)):
            if 'accounting@cosmed.com' in pdfLine[i]:
                date=pdfLine[i+1]
                found = True
            i=i+1
    
    txtFile.close
    
    return date

def getInvNumber(txtFilePath):
    invNumber = ""
    txtFile = open(txtFilePath)
    pdfLine=[]
    found = False
    
    for line in txtFile:
        pdfLine.append(line)
    i=0
    for i in range(0,len(pdfLine)):
        if 'Dated:' in pdfLine[i]:
            invNumber=pdfLine[i+1]
            found = True
        i=i+1
    
    '''new PDF format the invoice number
    is after "99999999999"'''
    if found == False:
        i=0
        for i in range(0,len(pdfLine)):
            if '99999999999' in pdfLine[i]:
                invNumber=pdfLine[i+1][2:len(pdfLine[i+1])]
                found = True
            i=i+1
    
    txtFile.close
    
    return invNumber

