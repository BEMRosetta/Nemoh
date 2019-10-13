        !COMPILER-GENERATED INTERFACE MODULE: Wed Oct 02 13:05:43 2019
        ! This source file is for reference only and may not completely
        ! represent the generated interface used by the compiler.
        MODULE COMPUTE_RAOS__genmod
          INTERFACE 
            SUBROUTINE COMPUTE_RAOS(RAOS,RESULTS)
              USE MRESULTS
              TYPE (TRESULTS) :: RESULTS
              COMPLEX(KIND=4) :: RAOS(RESULTS%NINTEGRATION,RESULTS%NW,*)
            END SUBROUTINE COMPUTE_RAOS
          END INTERFACE 
        END MODULE COMPUTE_RAOS__genmod
