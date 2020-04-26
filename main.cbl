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
              01 C PIC 9(3).
              01 R PIC 9(1).
              01 CURRENT PIC 9(3).
              01 RND PIC 9(3).
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
              DISPLAY "Hello, " USER-NAME.

              DISPLAY "I'll help you create today's quarantine agenda."
              DISPLAY "Just answer a few questions to get started."

              
              DISPLAY "First, how much do you like quarantine?".
              DISPLAY "     1 - It's not much of a change from my".
              DISPLAY "         regular routine".
              DISPLAY "     2 - I want to bust through the walls like ".
              DISPLAY "         the Kool-Aid guy.".
              DISPLAY "     3 - Ew, David".
              ACCEPT QUESTION-1.
              DISPLAY " ".
              
              DISPLAY "On a scale of 1 - 638596, how much do you miss".
              DISPLAY "brunch?".
              ACCEPT QUESTION-2.    
              DISPLAY " ".
              
              DISPLAY "Great, last question:".
              DISPLAY "Where will you go for your first post-social". 
              DISPLAY "distancing destination?".
              DISPLAY "     1 - Salon. Hair, nails, the works.".
              DISPLAY "     2 - The tattoo shop for a commemorative 'I". 
              DISPLAY "         survived quarantine and all I got was" 
              DISPLAY "         this lousy tattoo' tattoo".
              DISPLAY "     3 - I'm leaving on a jet plane. Don't know". 
              DISPLAY "         when I'll be back again.".
              DISPLAY "     4 - No, OMG, stop, David".
              DISPLAY "     5 - My front porch".
              ACCEPT QUESTION-3.
              
              ACCEPT CURRENT FROM TIME.
              MOVE CURRENT TO RND.
              DIVIDE RND BY 4 GIVING C REMAINDER QUESTION-1.
              IF R = 0 THEN
                MOVE 1 TO R
             DISPLAY "MORNING ACTIVITY: "MORNING-ACTIVITY(QUESTION-1).
              
            *>   DISPLAY "QUESTION-1: " QUESTION-1.
            *>   DISPLAY "CURRENT " CURRENT.
            *>   DISPLAY "RND: " RND.
            *>   DISPLAY "C: " C.
            *>   DISPLAY "R: " R.
            
            *> end our program
            STOP RUN.