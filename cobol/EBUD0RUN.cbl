       IDENTIFICATION DIVISION.
       PROGRAM-ID.    EBUD0RUN.
       AUTHOR.        DENNIS BEHM.
       ENVIRONMENT DIVISION.
      *************************************************************

      *************************************************************
       CONFIGURATION SECTION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
      * TEST 001
       01 INTERFACE-AREA.
           COPY LINPUT.

       01 PROGRAM-TO-CALL          PIC X(07).

       LINKAGE SECTION.
       PROCEDURE DIVISION.
       010-INITIALIZATION.
      *       Initialize Program-work-fields
           DISPLAY "Program EBUD0RUN STARTING "

           ACCEPT L-CCYY.
           ACCEPT L-MM.
           ACCEPT L-DD.

      *    MOVE 1984 TO L-CCYY .
      *    MOVE 01 TO L-MM .
      *    MOVE 21 TO L-DD .
           MOVE 'EBUD01' TO PROGRAM-TO-CALL .
           PERFORM 020-LOGIC .
      *
       END-OF-SECTION.
           EXIT.

       020-LOGIC.
           CALL  PROGRAM-TO-CALL USING INTERFACE-AREA .
           IF RETC  > 1
              PERFORM 030-SEEYA
           ELSE
              PERFORM 050-PRINT
           GOBACK.


       030-SEEYA.
      *    DISPLAY "PROGRAM IS ENDING SEEYA".

       040-GOODBYE.
      *    DISPLAY "PROGRAM IS ENDING -- GOODBYE".

       050-PRINT.
           DISPLAY 'Retirement-Date'.
           DISPLAY RETIREMENT-DATE
           PERFORM 030-SEEYA.

       END PROGRAM EBUD0RUN.
