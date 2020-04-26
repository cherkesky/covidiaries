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
              DISPLAY " ______   ___   _______  ______    __   __ ".
              DISPLAY "|      | |   | |   _   ||    _ |  |  | |  |".
              DISPLAY "|  _    ||   | |  |_|  ||   | ||  |  |_|  |".
              DISPLAY "| | |   ||   | |       ||   |_||_ |       |".
              DISPLAY "| |_|   ||   | |       ||    __  ||_     _|".
              DISPLAY "|       ||   | |   _   ||   |  | |  |   |  ".
              DISPLAY "|______| |___| |__| |__||___|  |_|  |___|  ".
              DISPLAY "                                           ".
              DISPLAY "                 \\||//                     ".
              DISPLAY "               -- (oo) --                   ".
              DISPLAY "                 //||\\                    ".
              DISPLAY "                                          ".

              MOVE "HAVE A SNACK" TO MORNING-ACTIVITY(1).
              MOVE "BINGE NETFLIX" TO MORNING-ACTIVITY(2).
              MOVE "EXERCISE. HAHA JUST KIDDING" TO MORNING-ACTIVITY(3).

              MOVE "HAVE A SNACK" TO NOON-ACTIVITY(1).
              MOVE "TAKE A NAP" TO NOON-ACTIVITY(2).
              MOVE "LEARN COBOL" TO NOON-ACTIVITY(3). 

              MOVE "HAVE A SNACK" TO EVENING-ACTIVITY(1).
              MOVE "THINK OF A $1M IDEA" TO EVENING-ACTIVITY(2).
              MOVE "PLAN THE NEXT VACATION" TO EVENING-ACTIVITY(3).  

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