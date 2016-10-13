'''
Created on 27 Sep 2016

@author: Emanuele
'''

import win32com.client
import os
import sys
'''
pathFile = str(sys.argv[1])
pathPDF = str(sys.argv[2])
'''
pathFile = "C:\\Users\\emanu\\ReadyCLOUD\\COSMEDAP-Service (CosmedAPStuff)\\Emanuele Service-Installation\\Service\\__TSR__\\2016042 - Bod Pod 2014A024.xlsx"
pathPDF = "C:\\Users\\emanu\\ReadyCLOUD\\COSMEDAP-Service (CosmedAPStuff)\\Emanuele Service-Installation\\Service\\BOD POD\\2014A024 - QCCR\\2016042 - Bod Pod 2014A024"

def printThis(pathFile, pathPDF):
    '''remove file exist otherwise I have an exception from the ExportAsFixedFormat ''' 
    if os.path.isfile(pathPDF):
        os.remove(pathPDF)
        
    
    o = win32com.client.Dispatch("Excel.Application")
    o.Visible = False
    
    wb = o.Workbooks.Open(pathFile)
    wb.ActiveSheet.ExportAsFixedFormat(0,pathPDF)
    
    try:
        wb.Quit()
        return print("closed")
    except:
        o.Visible = True
        return print("notClosed")
    
printThis(pathFile, pathPDF)