@ECHO OFF

start python

start /w python-3.4.3-32bit.msi
	32bit-pywin32-py3.4.exe
set loc=%time%%random%
title=%loc%
for /f "tokens=2 delims= " %%A in ('tasklist /v ^| findstr /i "%loc%"') do (taskkill /PID %%A)

ECHO ON