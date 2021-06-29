CHARACTER(len=128) :: filename
CHARACTER(len=10) :: input
INTEGER(4) I
IF(COMMAND_ARGUMENT_COUNT().NE.1)THEN
     WRITE(*,*)'ERROR, NEED INPUT AS ARGUMENT'
     STOP
ENDIF
 
CALL GET_COMMAND_ARGUMENT(1, filename) ! read in input
Open(1, file=filename)
Read(1,*) input
IF (LEN(input) >= 3) THEN
     IF (input(1:1) == 'b') THEN
          if(input(2:2) == 'u') THEN
               if(input(3:3) == 'g') THEN
                    call abort  ! call SIGABRT
               ENDIF
          ENDIF
     ENDIF
ENDIF
WRITE(*,*)input ! this is ok.
 
END PROGRAM