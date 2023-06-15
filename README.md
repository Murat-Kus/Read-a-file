# Read-a-file
This is a COBOL program that reads data from a file named itemfile.dat and displays the contents of the file on the screen.

The program starts with the IDENTIFICATION DIVISION which contains the program name and author details. The ENVIRONMENT DIVISION specifies the input and output files to be used by the program. In this case, the program reads data from the ITEM-FILE file.

The DATA DIVISION defines the structure of the input file. The FILE SECTION contains the file description for the ITEM-FILE. The WORKING-STORAGE SECTION defines the variables used in the program.

The PROCEDURE DIVISION contains the main logic of the program. The OPEN statement opens the ITEM-FILE for input. The PERFORM UNTIL loop reads each record from the file until the end of file is reached. The READ statement reads a record from the file into the WS-STOCK-ITEMS variable. If the end of file is reached, the loop terminates. Otherwise, the contents of the WS-STOCK-ITEMS variable are displayed on the screen using the DISPLAY statement. Finally, the CLOSE statement closes the ITEM-FILE.

COBOL is a programming language used mainly for business applications. It is known for its verbosity and is still used in some legacy systems today.

Note: The program may not run as expected if the file path is incorrect or if the file does not exist.
