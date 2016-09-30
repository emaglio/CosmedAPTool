'''
Created on 27 Sep 2016

@author: Emanuele
'''

import win32com.client
import os
import sys

pathFile = str(sys.argv[1])
pathPDF = str(sys.argv[2])
'''
pathFile = "D:/CosmedAPTool/ConfigFiles/tsr_agreement.xlsx"
pathPDF = "D:/CosmedAPTool/ConfigFiles/test.pdf"
'''
def printThis(pathFile, pathPDF):
    '''remove file exist otherwise I have an exception from the ExportAsFixedFormat ''' 
    if os.path.isfile(pathPDF):
        os.remove(pathPDF)
        
    
    o = win32com.client.Dispatch("Excel.Application")
    o.Visible = False
    
    wb = o.Workbooks.Open(pathFile)
    wb.ActiveSheet.ExportAsFixedFormat(0,pathPDF)
    
    wb.Quit()
    
printThis(pathFile, pathPDF)