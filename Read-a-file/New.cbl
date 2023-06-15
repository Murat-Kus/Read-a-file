       IDENTIFICATION DIVISION.
       PROGRAM-ID. ADDING-ITEMS.
      *********************************
      *AUTHOR. MURAT KUÞ.
      *DATE-WRITTEN. 14/06/2023.
      *********************************
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.

           SELECT ITEM-FILE ASSIGN TO
           "C:\Coding etc\Github Cobol\Write-to-a-file\itemfile.dat"           *>Location of the file you want to read
           ORGANIZATION IS LINE SEQUENTIAL
           ACCESS IS SEQUENTIAL.

       DATA DIVISION.
       FILE SECTION.

       FD  ITEM-FILE.
       01  STOCK-ITEMS.
        02 ITEM-NAME PIC X(20).
        02 ITEM-CODE PIC X(5).
        02 ITEM-PRICE PIC $Z(5).9(2).

       WORKING-STORAGE SECTION.

       01  WS-STOCK-ITEMS.
        02 WS-ITEM-NAME PIC X(20).
        02 WS-ITEM-CODE PIC X(5).
        02 WS-ITEM-PRICE PIC $Z(5).9(2).
       01  WS-ENDOF PIC A(1).

       PROCEDURE DIVISION.
       OPEN INPUT ITEM-FILE.
           PERFORM UNTIL WS-ENDOF='Y'
               READ ITEM-FILE INTO WS-STOCK-ITEMS
               AT END MOVE 'Y' TO WS-ENDOF
               NOT AT END DISPLAY WS-STOCK-ITEMS
               END-READ
           END-PERFORM
       CLOSE ITEM-FILE.
           STOP RUN.
