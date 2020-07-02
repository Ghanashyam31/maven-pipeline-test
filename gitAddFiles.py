#!/bin/env python3
import sys,os
from datetime import datetime

#os.chdir('/home/jenkin/jenkins-data/maven-pipeline-test')
DtTimestr=datetime.now().strftime('%d-%m-%Y-%H%M%S')

msg1='Adding file to repository '+DtTimestr
gtCmd='git commit -m "'+ msg1 +'"'
#print('git commit -m "'+ msg1 +'"')
os.system('git add test.txt')
os.system(gtCmd)

