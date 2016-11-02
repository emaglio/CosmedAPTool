'''
Created on 2 Nov 2016

@author: emanu
'''
import shutil
import sys
import time
import ctypes

# path = "D:\\testFolder\\install"

path = str(sys.argv[1])

def cleanUpInstallation(path):
    time.sleep(1)
    ctypes.windll.user32.MessageBoxW(0, "Waiting for LabView to close", "Installation clean up", 1)
    shutil.rmtree(path, False)

cleanUpInstallation(path)