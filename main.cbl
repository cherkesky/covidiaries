           *> setup the identification division
            IDENTIFICATION DIVISION.
            *> setup the program id
            PROGRAM-ID. COVIDIARIES.
            
            *> setup the procedure division (like 'main' function)
            DATA DIVISION.
              *> working storage defines variables
              WORKING-STORAGE SECTION.
              01 USER-INPUT.
                 05 USER-NAME PIC A(10).
                 05 QUESTION-1 PIC 9(3).
                 05 QUESTION-2 PIC 9(3).
                 05 QUESTION-3 PIC 9(3).
              01 MORNING-TABLE.
                 05 MORNING-ACTIVITY PIC X(30) OCCURS 3 TIMES.
              01 NOON-TABLE.
                 05 NOON-ACTIVITY PIC X(30) OCCURS 3 TIMES.  
              01 EVENING-TABLE.
                 05 EVENING-ACTIVITY PIC X(30) OCCURS 3 TIMES.    
            PROCEDURE DIVISION.

              DISPLAY ' _______  _______  __   __  ___   ______   '.
              DISPLAY "|       ||       ||  | |  ||   | |      | ".
              DISPLAY "|       ||   _   ||  |_|  ||   | |  _    |".
              DISPLAY "|       ||  | |  ||       ||   | | | |   |".
              DISPLAY "|      _||  |_|  ||       ||   | | |_|   | ".
              DISPLAY "|     |_ |       | |     | |   | |       | ".
              DISPLAY "|_______||_______|  |___|  |___| |______| ".
              
              MOVE "HAVE A SNACK" TO ACTIVITY-NAME(1).
              MOVE "BINGE NETFLIX" TO ACTIVITY-NAME(2).
              MOVE "EXERCISE. HAHA JUST KIDDING" TO ACTIVITY-NAME(3).
              
              DISPLAY "What is your name?".
              ACCEPT USER-NAME.
              display "Hello, " USER-NAME.
              DISPLAY "What is your name?".
              ACCEPT USER-NAME.
              display "Hello, " USER-NAME.      
              DISPLAY "What is your name?".
              ACCEPT USER-NAME.
              display "Hello, " USER-NAME.

            
            *> end our program
            STOP RUN.