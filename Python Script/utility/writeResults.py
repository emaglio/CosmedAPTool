'''
Created on 9 May 2016

@author: emanu
'''

import os

currentPath = os.getcwd()
'''don't want the results file in the utility folder'''
# currentPath = currentPath[0:len(currentPath)-8]
resultFilePath = str(currentPath) + '//results.txt'

def populateTxt(date, numItems, invNumber, pnList, descrList, qtyList,snList):
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
    '''write line's number of the file'''
    txtFile = open(resultFilePath, 'r')
    lines = txtFile.readlines()
    txtFile.close()
    os.remove(resultFilePath)
    txtFile = open(resultFilePath, 'w')
    txtFile.write(str(numRows+2)+'\n')
    for line in lines:
        txtFile.write(line)
    
    txtFile.close()

