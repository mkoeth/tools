@echo off
IF EXIST .git (
	echo Already initialised ... doing nothing
) ELSE (
	echo Initialise %1
	git init
	git remote add origin https://github.com/mkoeth/%1.git
)
