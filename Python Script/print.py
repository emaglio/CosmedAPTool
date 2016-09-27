'''
Created on 27 Sep 2016

@author: Emanuele
'''

import win32com.client
import os.path

c = win32com.client.Dispatch("ExcelConverter.ExcelConverterX")

src="D:\CosmedAPTool\ConfigFiles\\tsr_repair.xlsx";
dest="D:\CosmedAPTool\ConfigFiles\\test.pdf";

c.convert(src, dest, "-c PDF -log c:\\test\\Excel.log");

if not os.path.exists(file_path):
  print(c.ErrorMessage)

doc.build (story)
win32api.ShellExecute (0, "print", pdf_file_name, None, ".", 0)
