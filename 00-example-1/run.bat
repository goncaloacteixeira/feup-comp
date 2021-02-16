@echo off

Rem - Batch file to compile and run .jj files from javacc and javac
Rem - Run with "run.bat NameOfFileWithoutExtension" to compile and run
Rem - Run with "run.bat clean" to clean generated files

if "%1"=="clean" (
  del *.java *.class
  ECHO Generated files deleted
) else (
  rem - To generate Java Code with JavaCC
  call javacc "%~1.jj"
  rem - To compile generated Java Code
  javac *.java
  ECHO Launching Program
  rem - To execute the syntax analyzer
  java %1
  PAUSE
)

