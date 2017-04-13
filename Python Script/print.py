'''
Created on 27 Sep 2016

@author: Emanuele
'''

import win32com.client
import os
import sys

pathFile = str(sys.argv[1])
pathPDF = str(sys.argv[2])

# pathFile = "X:\Emanuele Service-Installation\\Service\\__TSR__\\2017017 - RMR 2011050212.xlsx"
# pathPDF = "X:\Emanuele Service-Installation\\Service\\2016042 - Pony FX 2004050635"

def printThis(pathFile, pathPDF):
    '''remove file exist otherwise I have 
    an exception from the ExportAsFixedFormat ''' 
    if os.path.isfile(pathPDF):
        os.remove(pathPDF)
        
    
    o = win32com.client.Dispatch("Excel.Application")
    o.Visible = 0
    
    wb = o.Workbooks.Open(pathFile)
    wb.ActiveSheet.ExportAsFixedFormat(0,pathPDF)
    
    
    try:
        wb.Close()
        o.Quit()
        return print("closed")
    except:
        o.Visible = 1
        return print("notClosed")
    
printThis(pathFile, pathPDF)