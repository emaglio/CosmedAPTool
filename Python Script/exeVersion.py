'''
Created on 17 Oct 2016

@author: Emanuele
'''

import sys
from win32com.client import Dispatch 

'''
path = "D:\\LabView builds\\CosmedAPTools.exe"
'''
path = str(sys.argv[1])

def exeVersion(path):
    ver_parser = Dispatch('Scripting.FileSystemObject')
    info = ver_parser.GetFileVersion(path)
    
    if info == 'No Version Information Available':
        info = "None"
    
    return print(info)

exeVersion(path)