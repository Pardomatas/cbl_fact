IDENTIFICATION DIVISION.
	PROGRAM-ID. "Factorial".
DATA DIVISION. 
WORKING-STORAGE SECTION.
    01 fact PIC 9(15) COMP.
    01 high-number PIC 99.
    01 temp-number PIC 99.
    01 original-number PIC XX.
    01 display-number PIC X(18).
PROCEDURE DIVISION.
    MOVE 16 TO high-number
    MOVE 0 TO temp-number
    MOVE 1 TO fact
    PERFORM UNTIL temp-number GREATER THAN high-number
        MOVE temp-number TO original-number
        MOVE fact TO display-number
        DISPLAY original-number "! = " display-number
        ADD 1 TO temp-number
        MULTIPLY temp-number BY fact
            ON SIZE ERROR DISPLAY "value too big"
        END-MULTIPLY
    END-PERFORM.
STOP RUN.