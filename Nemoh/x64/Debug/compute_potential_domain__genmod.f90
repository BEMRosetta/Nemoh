        !COMPILER-GENERATED INTERFACE MODULE: Wed Oct 02 13:05:43 2019
        ! This source file is for reference only and may not completely
        ! represent the generated interface used by the compiler.
        MODULE COMPUTE_POTENTIAL_DOMAIN__genmod
          INTERFACE 
            SUBROUTINE COMPUTE_POTENTIAL_DOMAIN(ID,PHI,XC,YC,ZC,AM0,AMH,&
     &NEXP)
              USE MIDENTIFICATION
              TYPE (TID) :: ID
              COMPLEX(KIND=4) :: PHI
              REAL(KIND=4) :: XC
              REAL(KIND=4) :: YC
              REAL(KIND=4) :: ZC
              REAL(KIND=4) :: AM0
              REAL(KIND=4) :: AMH
              INTEGER(KIND=4) :: NEXP
            END SUBROUTINE COMPUTE_POTENTIAL_DOMAIN
          END INTERFACE 
        END MODULE COMPUTE_POTENTIAL_DOMAIN__genmod
