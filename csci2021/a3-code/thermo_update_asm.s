.text
.global  set_temp_from_ports

set_temp_from_ports:  # input is the pointer to temp struct, stored in %rdi
    movzwl    THERMO_SENSOR_PORT(%rip), %eax # saves THERMO_SENSOR_PORT to %eax, commence rounding
    cmpl    $64000,     %eax      # checks for overflowed values as well
    jg      .failure
    cmpl    $0,         %eax
    jl      .failure
    addl    $32,        %eax      # int temp_c = -500 + (THERMO_SENSOR_PORT+32)/64;
    sarl    $6,         %eax      # divide by 64
    subl    $500,       %eax      # subtract by 500
    cmpl    $500,       %eax      # if (temp_c > 500), then return a 1
    jg      .failure

    movzbl    THERMO_STATUS_PORT(%rip), %edx  # acquires THERMO_STATUS_PORT and puts in %rdx
    testb   %dl,        %dl       # checks whether the THERMO_STATUS_PORT is set to 0
    je      .status0              # if it is zero
    imull   $9,         %eax      # if it is one start calculations temp->tenths_degrees = ((temp_c * 9) / 5 + 320);
    cltq
    cqto
    movl    $5,         %ecx
    idivl   %ecx                  # divide temp_c*9 (%rax) by 5, stores quotient in %rax
    addl    $320,       %eax      # add 320 to rax to finish conversion
    movw    %ax,      0(%rdi)     # changes tenths_degrees to converted degrees
    movb    $1,       2(%rdi)     # sets is_fahrenheit to 1
    movl    $0,         %eax      # prepares return
    ret

.status0:   # it is not one
    movw    %ax,      0(%rdi)     # directly puts degrees in celsius without conversion
    movb    $0,       2(%rdi)     # sets is_fahrenheit to 0
    movl    $0,         %eax      # prepares return
    ret

.failure:
    movl $1,%eax
    ret

mask:                             # declare multiple ints in a row
    .int 0b0111111                # 0
    .int 0b0000110                # 1
    .int 0b1011011                # 2
    .int 0b1001111                # 3
    .int 0b1100110                # 4
    .int 0b1101101                # 5
    .int 0b1111101                # 6
    .int 0b0000111                # 7
    .int 0b1111111                # 8
    .int 0b1101111                # 9
    .int 0b1000000                # negative sign

.text
.global  set_display_from_temp

set_display_from_temp:            # input is the struct, stored in %rdi and the pointer to the display, stored in %rsi
    leaq  mask(%rip),   %r10      # contains pointer to array of int masks
    movq    $0,         %rcx      # zero out %rcx
    movq    $0,         %r12      # zero out display, r12 acts as temporary display int to be set as rsi
    movw    %di,        %cx       # rcx contains the tenths_degrees
    sarq    $16,        %rdi      # to access is_fahrenheit

    cmpb    $0,         %dil      # if(temp.is_fahrenheit > 1 || temp.is_fahrenheit <0)
    jl     .fail1                 # return 1;
    cmpb    $1,         %dil
    jg     .fail1

    cmpb    $1,         %dil      # if(temp.is_fahrenheit == 1)
    je      .is_fahrenheit

.is_celsius:                      # if(temp.is_fahrenheit == 0)
    cmpw    $500,       %cx
    jg      .fail1
    cmpw    $-500,      %cx
    jl        .fail1
    jmp     .startmasks

.is_fahrenheit:                   # if(temp.tenths_degrees > 1220 || temp.tenths_degrees < -580)
    cmpw    $1220,      %cx
    jg      .fail1
    cmpw    $-580,      %cx
    jl      .fail1

.startmasks:
    cmpw    $0,         %cx       # checks if number is negative
    jge     .temp_hundreds
    imulw   $-1,        %cx

.neg_sign:                        # mask and shift for the negative sign
    movq    $10,        %r9
    movb   (%r10,%r9,4),%r9b
    orq     %r9,        %r12
    salq    $7,         %r12

.temp_hundreds:                   # %r12 has temp display pointer
    movq    %rcx,       %r9       # temporary variable to keep track of hundres,tens,ones,tenths before mask
    movq    %rcx,       %rax      # prep for division  int temp_hundreds = (t-t%1000)/1000;
    movq    $1000,      %r8       # divisor of 1000
    cqto
    idivq   %r8                   # t%1000 in %rdx, t/1000 in %rax t in %r9 (currently)
    movq    %rdx,       %rcx      # t = t%1000;
    subq    %rdx,       %r9       # %r9: (t-t%1000)
    movq    %r9,        %rax      # prep for second divisions       (t-t%1000)/1000
    cqto
    idivq   %r8                   # %rax holds desired value
    movq    %rax,       %r9

    cmpq    $0,         %r9       # if the hundreds place is 0 then dont add bits
    je      .temp_tens_leadingzero # case that there is a leading 0

    ;  # mask, value, int size
    movb   (%r10,%r9,4),%r9b      # actual masking part
    orq     %r9,        %r12      # masks hundreds with %r12
    salq    $7,         %r12
    jmp     .temp_tens            # case that there is not a leading 0


.temp_tens_leadingzero:           # %rcx holds shortened t, %r9 keep track of tenths,
    movq    %rcx,       %r9       # int temp_tens = (t-t%100)/100; set %r9 to t
    movq    %rcx,       %rax      # setting up division
    movq    $100,       %r8
    cqto
    idivq   %r8                   # divide by 100
    movq    %rdx,       %rcx      # t = t%100;
    subq    %rdx,       %r9       # %r9: t-t%1000
    movq    %r9,        %rax      # division round two
    cqto
    idivq   %r8
    movq    %rax,       %r9       # r9 now holds desired value
    cmpq    $0,         %r9
    je      .temp_ones            # if there was a leading 0, and tens place is also 0, dont do anything for tens place

    movb   (%r10,%r9,4),%r9b      # masking
    orq     %r9,        %r12      # masks tens with %r12
    salq    $7,         %r12      # shift left by 7
    jmp     .temp_ones

.temp_tens:                       # case that the hundreds was not 0, therefore tens can be anything including 0
    movq    %rcx,       %r9       # int temp_tens = (t-t%100)/100; set %r9 to t
    movq    %rcx,       %rax      # setting up division
    movq    $100,       %r8
    cqto
    idivq   %r8                   # divide by 100
    movq    %rdx,       %rcx      # t = t%100;
    subq    %rdx,       %r9       # %r9: t-t%1000
    movq    %r9,        %rax      # division round two
    cqto
    idivq   %r8
    movq    %rax,       %r9       # r9 now holds desired value
    movb   (%r10,%r9,4),%r9b      # masking
    orq     %r9,        %r12      # masks tens with %r12
    salq    $7,         %r12      # shift left by 7

.temp_ones:
    movq    %rcx,       %r9       # int temp_tens = (t-t%10)/10; set %r9 to t
    movq    %rcx,       %rax      # setting up division
    movq    $10,        %r8
    cqto
    idivq   %r8                   # divide by 10
    movq    %rdx,       %rcx      # t = t%10
    movq    %rax,       %r9
    movb   (%r10,%r9,4),%r9b      # masking
    orq     %r9,        %r12      # masks ones with %r12
    salq    $7,         %r12      # shift left by 7

.temp_tenths:
    movq    %rcx,       %r9
    movb   (%r10,%r9,4),%r9b
    orq     %r9,        %r12

.temp_sign:
    cmpb    $0,         %dil      # %rdi is is_fahrenheit
    jne     .fahrenheit

.celsius:                         # mask for celsius sign
    movq    $1,         %r9
    salq    $28,        %r9
    orq     %r9,        %r12
    jmp     .exit0
.fahrenheit:
    movq    $1,         %r9
    salq    $29,        %r9
    orq     %r9,        %r12

.exit0:
    movl    %r12d,      (%rsi)     # saves to int pointer
    movl    $0,         %eax
    ret

.fail1:
    movl    $1,         %eax
    ret

.text
.global thermo_update

thermo_update:

  subq      $16,        %rsp      # align stack, and give space for temp struct

  movw      $0,        (%rsp)     # set value of temp to 0
  movb      $48,      2(%rsp)     # set character to '0'
  movq      %rsp,       %rdi      # get pointer of temp struct in %rdi
  call      set_temp_from_ports   # call set_temp_from_ports
  cmpl      $1,         %eax      # failcheck
  je        .failure1

  movq      (%rdi),     %rdi      # get actual struct in %rdi
  leaq      THERMO_DISPLAY_PORT(%rip), %rsi # get the display int into %rsi
  call      set_display_from_temp # call set_display_from_temp

  addq      $16,        %rsp      # fix stack
  ret

.failure1:
  movl      $1,         %eax
  addq      $16,        %rsp
  ret
