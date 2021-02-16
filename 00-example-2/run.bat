@echo off

Rem - Batch file to compile and run .jj files from javacc and javac
Rem - Run with "run.bat NameOfFileWithoutExtension" to compile and run
Rem - Run with "run.bat clean" to clean generated files

if "%1"=="clean" (
  del *.class
  ECHO Generated classes deleted
) else (
  rem - To execute JJTree
  call jjtree "%~1.jjt"
  rem - To generate Java Code with JavaCC
  javacc "%~1.jj"
  rem - To compile generated Java Code
  javac *.java
  ECHO Launching Program
  rem - To execute the syntax analyzer
  java %1
  PAUSE
)

