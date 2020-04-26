program algorytm_pijaka
    integer :: x = 0
    integer :: N = 200
    integer :: K = 40000
    real :: r = 0
    real, dimension(:), allocatable :: path_len
    real, dimension(:), allocatable :: path_len_q
    real, dimension(:), allocatable :: sigma
    allocate(path_len(N))
    allocate(path_len_q(N))
    allocate(sigma(N))

    do i = 0,N
        path_len(i) = 0
        path_len_q(i) = 0
        sigma(i) = 0
    end do

    !open (1, action="write", file = "path.txt", status = "new")
    !open (2, action="write", file = "histogram.txt", status = "new")
    open (3, action="write", file = "sigma.txt", status = "new")

    do j = 0,K
        x = 0
        do i = 0,N
            call random_number(r)
            if( r < 0.5) then
                x = x - 1
            else
                x = x + 1
            end if
            !if (i == (N)) then
                !write(2,*) j,x
            !end if
            !write(1,*) i, x
            path_len(i) = path_len(i) + x
            path_len_q(i) = path_len_q(i) + x**2
        end do
    end
    do i = 0,N
        sigma(i) = ((path_len_q(i)/N) - (average_pl(i)/N)**2)**0.5
        write(3,*) log10(float(i)), log10(sigma(i))
    end do
    close(1)
end program
