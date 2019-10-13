        !COMPILER-GENERATED INTERFACE MODULE: Wed Oct 02 13:05:41 2019
        ! This source file is for reference only and may not completely
        ! represent the generated interface used by the compiler.
        MODULE PLOT_WAVEELEVATION__genmod
          INTERFACE 
            SUBROUTINE PLOT_WAVEELEVATION(ID,ENVIRONMENT,IW,IBETA,RAOS, &
     &RESULTS)
              USE MRESULTS
              USE MENVIRONMENT
              USE MIDENTIFICATION
              TYPE (TRESULTS) :: RESULTS
              TYPE (TID) :: ID
              TYPE (TENVIRONMENT) :: ENVIRONMENT
              INTEGER(KIND=4) :: IW
              INTEGER(KIND=4) :: IBETA
              COMPLEX(KIND=4) :: RAOS(RESULTS%NINTEGRATION,RESULTS%NW,*)
            END SUBROUTINE PLOT_WAVEELEVATION
          END INTERFACE 
        END MODULE PLOT_WAVEELEVATION__genmod
