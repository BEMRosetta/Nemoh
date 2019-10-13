!****************************************************************************
!
!  PROGRAM: Nemoh
!
!  PURPOSE:  Entry point for the console application.
!
!****************************************************************************

subroutine PrintHelp()
    write(*,*)'Options:'
    write(*,*)'  -h             Shows this help'
    write(*,*)'  -pre'
    write(*,*)'  -preprocessor  Runs the preprocessor'
    write(*,*)'  -solver        Runs the solver'
    write(*,*)'  -post'
    write(*,*)'  -postprocessor Runs the postprocessor'
    write(*,*)'  -all           Runs preprocessor, solver and postprocessor'
    write(*,*)'This version packages the classic preprocessor, solver and postprocessor in one binary'
    write(*,*)'id.dat is now unnecesary, so the Nemoh.cal and results folder have to be in the same directory'
    end subroutine

subroutine PrintCredits()
    character(len=120) :: compiler

#ifdef __GFORTRAN__
    compiler = 'GNU Fortran 64 bits.'
#elif __INTEL_COMPILER
    compiler = 'Intel Fortran 64 bits.'
#else
    compiler = 'Unknown compiler.'
#endif

    call PrintCreditsC(compiler)

    end subroutine

program Nemoh
    implicit none

    ! Variables
    integer :: i, numArgs
    character(len=32) :: arg

    call PrintCredits()
    call ProgressInit()

    numArgs = iargc()

    if(numArgs .EQ. 0) then
        call PrintHelp()
    else
        DO i = 1, numArgs
            CALL getarg(i, arg)

            select case(arg)
            case("--help", "-h")
                call PrintHelp()
            case("-pre", "-preprocessor")
                call Preprocessor()
            case("-solver")
                call Solver()
            case("-post", "-postprocessor")
                call Postprocessor()
            case("-all")
                call Preprocessor()
                call Solver()
                call Postprocessor()
            case default
                write(*,*) "Option ", arg, " unknown"
                call PrintHelp()
            end select
        END DO
    end if
end program Nemoh

