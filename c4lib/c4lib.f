      function c4_abs ( z )

c*********************************************************************72
c
cc C4_ABS evaluates the absolute value of a C4.
c
c  Discussion:
c
c    A C4 is a complex value.
c
c  Licensing:
c
c    This code is distributed under the GNU LGPL license. 
c
c  Modified:
c
c    13 December 2008
c
c  Author:
c
c    John Burkardt
c
c  Parameters:
c
c    Input, complex Z, the argument.
c
c    Output, real C4_ABS, the function value.
c
      implicit none

      real c4_abs
      complex z

      c4_abs = sqrt ( ( real ( z ) )**2 + ( aimag ( z ) )**2 )

      return
      end
      function c4_acos ( z )

c*********************************************************************72
c
cc C4_ACOS evaluates the inverse cosine of a C4.
c
c  Discussion:
c
c    A C4 is a complex value.
c
c    FORTRAN77 does not have an intrinsic inverse cosine function for C4 arguments.
c
c    Here we use the relationship:
c
c      C4_ACOS ( Z ) = pi/2 - C4_ASIN ( Z ).
c
c  Licensing:
c
c    This code is distributed under the GNU LGPL license. 
c
c  Modified:
c
c    13 December 2008
c
c  Author:
c
c    John Burkardt
c
c  Parameters:
c
c    Input, complex Z, the argument.
c
c    Output, complex C4_ACOS, the function value.
c
      implicit none

      complex c4_acos
      complex c4_asin
      real r4_pi_half
      parameter ( r4_pi_half = 1.57079632679489661923E+00 )
      complex z

      c4_acos = r4_pi_half - c4_asin ( z )

      return
      end
      function c4_acosh ( z )

c*********************************************************************72
c
cc C4_ACOSH evaluates the inverse hyperbolic cosine of a C4.
c
c  Discussion:
c
c    A C4 is a complex value.
c
c    FORTRAN77 does not have an intrinsic inverse hyperbolic 
c    cosine function for C4 arguments.
c
c    Here we use the relationship:
c
c      C4_ACOSH ( Z ) = i * C4_ACOS ( Z ).
c
c  Licensing:
c
c    This code is distributed under the GNU LGPL license. 
c
c  Modified:
c
c    13 December 2008
c
c  Author:
c
c    John Burkardt
c
c  Parameters:
c
c    Input, complex Z, the argument.
c
c    Output, complex C4_ACOSH, the function value.
c
      implicit none

      complex c4_acos
      complex c4_acosh
      complex c4_i
      complex z

      c4_i = cmplx ( 0.0E+00, 1.0E+00 )

      c4_acosh = c4_i * c4_acos ( z )

      return
      end
      function c4_add ( z1, z2 )

c*********************************************************************72
c
cc C4_ADD adds two C4's.
c
c  Discussion:
c
c    A C4 is a complex value.
c
c  Licensing:
c
c    This code is distributed under the GNU LGPL license. 
c
c  Modified:
c
c    13 December 2004
c
c  Author:
c
c    John Burkardt
c
c  Parameters:
c
c    Input, complex Z1, Z2, the values to add.
c
c    Output, complex C4_ADD, the function value.
c
      implicit none

      complex c4_add
      complex z1
      complex z2

      c4_add = z1 + z2

      return
      end
      function c4_arg ( x )

c*********************************************************************72
c
cc C4_ARG returns the argument of a C4.
c
c  Discussion:
c
c    A C4 is a complex value.
c
c  Licensing:
c
c    This code is distributed under the GNU LGPL license. 
c
c  Modified:
c
c    13 December 2008
c
c  Author:
c
c    John Burkardt
c
c  Parameters:
c
c    Input, complex X, the value whose argument is desired.
c
c    Output, real C4_ARG, the function value.
c
      implicit none

      real c4_arg
      complex x

      if ( aimag ( x ) .eq. 0.0E+00 .and. 
     &     real ( x ) .eq. 0.0E+00 ) then
  
        c4_arg = 0.0E+00

      else

        c4_arg = atan2 ( aimag ( x ), real ( x ) )

      end if

      return
      end
      function c4_asin ( z )

c*********************************************************************72
c
cc C4_ASIN evaluates the inverse sine of a C4.
c
c  Discussion:
c
c    A C4 is a complex value.
c
c    FORTRAN77 does not have an intrinsic inverse sine function for C4 arguments.
c
c    Here we use the relationship:
c
c      C4_ASIN ( Z ) = - i * log ( i * z + sqrt ( 1 - z * z ) )
c
c  Licensing:
c
c    This code is distributed under the GNU LGPL license. 
c
c  Modified:
c
c    13 December 2008
c
c  Author:
c
c    John Burkardt
c
c  Parameters:
c
c    Input, complex Z, the argument.
c
c    Output, complex C4_ASIN, the function value.
c
      implicit none

      complex c4_asin
      complex c4_i
      complex c4_log
      complex c4_sqrt
      complex z

      c4_i = cmplx ( 0.0E+00, 1.0E+00 )

      c4_asin = - c4_i 
     &  * c4_log ( c4_i * z + c4_sqrt ( 1.0E+00 - z * z ) )

      return
      end
      function c4_asinh ( z )

c*********************************************************************72
c
cc C4_ASINH evaluates the inverse hyperbolic sine of a C4.
c
c  Discussion:
c
c    A C4 is a complex value.
c
c    FORTRAN77 does not have an intrinsic inverse hyperbolic 
c    sine function for C4 arguments.
c
c    Here we use the relationship:
c
c      C4_ASINH ( Z ) = - i * C4_ASIN ( i * Z ).
c
c  Licensing:
c
c    This code is distributed under the GNU LGPL license. 
c
c  Modified:
c
c    13 December 2008
c
c  Author:
c
c    John Burkardt
c
c  Parameters:
c
c    Input, complex Z, the argument.
c
c    Output, complex C4_ASINH, the function value.
c
      implicit none

      complex c4_asin
      complex c4_asinh
      complex c4_i
      complex z

      c4_i = cmplx ( 0.0E+00, 1.0E+00 )

      c4_asinh = - c4_i * c4_asin ( c4_i * z )

      return
      end
      function c4_atan ( z )

c*********************************************************************72
c
cc C4_ATAN evaluates the inverse tangent of a C4.
c
c  Discussion:
c
c    A C4 is a complex value.
c
c    FORTRAN77 does not have an intrinsic inverse tangent function
c    for C4 arguments.
c
c    FORTRAN77 does not have a logarithm function for C4 argumentsc
c
c    Here we use the relationship:
c
c      C4_ATAN ( Z ) = ( i / 2 ) * log ( ( 1 - i * z ) / ( 1 + i * z ) )
c
c  Licensing:
c
c    This code is distributed under the GNU LGPL license. 
c
c  Modified:
c
c    13 December 2008
c
c  Author:
c
c    John Burkardt
c
c  Parameters:
c
c    Input, complex Z, the argument.
c
c    Output, complex C4_ATAN, the function value.
c
      implicit none

      complex arg
      complex c4_atan
      complex c4_log
      complex c4_i
      complex z

      c4_i = cmplx ( 0.0E+00, 1.0E+00 )

      arg = ( 1.0E+00 - c4_i * z ) / ( 1.0E+00 + c4_i * z )

      c4_atan = 0.5E+00 * c4_i * c4_log ( arg ) 

      return
      end
      function c4_atanh ( z )

c*********************************************************************72
c
cc C4_ATANH evaluates the inverse hyperbolic tangent of a C4.
c
c  Discussion:
c
c    A C4 is a complex value.
c
c    FORTRAN77 does not have an intrinsic inverse hyperbolic 
c    tangent function for C4 arguments.
c
c    Here we use the relationship:
c
c      C4_ATANH ( Z ) = - i * C4_ATAN ( i * Z ).
c
c  Licensing:
c
c    This code is distributed under the GNU LGPL license. 
c
c  Modified:
c
c    13 December 2008
c
c  Author:
c
c    John Burkardt
c
c  Parameters:
c
c    Input, complex Z, the argument.
c
c    Output, complex C4_ATANH, the function value.
c
      implicit none

      complex c4_atan
      complex c4_atanh
      complex c4_i
      complex z

      c4_i = cmplx ( 0.0E+00, 1.0E+00 )

      c4_atanh = - c4_i * c4_atan ( c4_i * z )

      return
      end
      function c4_conj ( z )

c*********************************************************************72
c
cc C4_CONJ evaluates the conjugate of a C4.
c
c  Discussion:
c
c    A C4 is a complex value.
c
c  Licensing:
c
c    This code is distributed under the GNU LGPL license. 
c
c  Modified:
c
c    13 December 2008
c
c  Author:
c
c    John Burkardt
c
c  Parameters:
c
c    Input, complex Z, the argument.
c
c    Output, complex C4_CONJ, the function value.
c
      implicit none

      complex c4_conj
      complex z

      c4_conj = cmplx ( real ( z ), - aimag ( z ) )

      return
      end
      function c4_copy ( z )

c*********************************************************************72
c
cc C4_COPY copies a C4.
c
c  Discussion:
c
c    A C4 is a complex value.
c
c  Licensing:
c
c    This code is distributed under the GNU LGPL license. 
c
c  Modified:
c
c    13 December 2008
c
c  Author:
c
c    John Burkardt
c
c  Parameters:
c
c    Input, complex Z, the argument.
c
c    Output, complex C4_COPY, the function value.
c
      implicit none

      complex c4_copy
      complex z

      c4_copy = z

      return
      end
      function c4_cos ( z )

c*********************************************************************72
c
cc C4_COS evaluates the cosine of a C4.
c
c  Discussion:
c
c    A C4 is a complex value.
c
c    We use the relationship:
c
c      C4_COS ( C ) = ( C4_EXP ( i * C ) + C4_EXP ( - i * C ) ) / 2
c
c  Licensing:
c
c    This code is distributed under the GNU LGPL license. 
c
c  Modified:
c
c    13 December 2008
c
c  Author:
c
c    John Burkardt
c
c  Parameters:
c
c    Input, complex Z, the argument.
c
c    Output, complex C4_COS, the function value.
c
      implicit none

      complex c4_cos
      complex c4_exp
      complex c4_i
      complex z

      c4_i = cmplx ( 0.0E+00, 1.0E+00 )

      c4_cos = ( c4_exp ( c4_i * z ) + c4_exp ( - c4_i * z ) ) 
     &  / 2.0E+00

      return
      end
      function c4_cosh ( z )

c*********************************************************************72
c
cc C4_COSH evaluates the hyperbolic cosine of a C4.
c
c  Discussion:
c
c    A C4 is a complex value.
c
c  Licensing:
c
c    This code is distributed under the GNU LGPL license. 
c
c  Modified:
c
c    13 December 2008
c
c  Author:
c
c    John Burkardt
c
c  Parameters:
c
c    Input, complex Z, the argument.
c
c    Output, complex C4_COSH, the function value.
c
      implicit none

      complex c4_cosh
      complex c4_exp
      complex z

      c4_cosh = ( c4_exp ( z ) + c4_exp ( - z ) ) / 2.0E+00

      return
      end
      function c4_cube_root ( x )

c*********************************************************************72
c
cc C4_CUBE_ROOT returns the principal cube root of a C4.
c
c  Discussion:
c
c    A C4 is a complex value.
c
c  Licensing:
c
c    This code is distributed under the GNU LGPL license. 
c
c  Modified:
c
c    13 December 2008
c
c  Author:
c
c    John Burkardt
c
c  Parameters:
c
c    Input, complex X, the number whose cube root is desired.
c
c    Output, complex C4_CUBE_ROOT, the function value.
c
      implicit none

      real arg
      real c4_arg
      complex c4_cube_root
      real c4_mag
      real mag
      complex x

      arg = c4_arg ( x )

      mag = c4_mag ( x )

      if ( mag .eq. 0.0E+00 ) then

        c4_cube_root = cmplx ( 0.0E+00, 0.0E+00 )

      else

        c4_cube_root = mag**( 1.0E+00 / 3.0E+00 ) 
     &    * cmplx ( cos ( arg / 3.0E+00 ), 
     &              sin ( arg / 3.0E+00 ) )

      end if

      return
      end
      function c4_div ( z1, z2 )

c*********************************************************************72
c
cc C4_DIV divides two C4's.
c
c  Discussion:
c
c    A C4 is a complex value.
c
c  Licensing:
c
c    This code is distributed under the GNU LGPL license. 
c
c  Modified:
c
c    13 December 2004
c
c  Author:
c
c    John Burkardt
c
c  Parameters:
c
c    Input, complex Z1, Z2, the arguments.
c
c    Output, complex C4_DIV, the function value.
c
      implicit none

      complex c4_div
      complex z1
      complex z2

      c4_div = z1 / z2

      return
      end
      function c4_div_r8 ( z1, r )

c*********************************************************************72
c
cc C4_DIV_R8 divides a C4 by an R8.
c
c  Discussion:
c
c    A C4 is a complex value.
c    An R8 is a real value.
c
c  Licensing:
c
c    This code is distributed under the GNU LGPL license. 
c
c  Modified:
c
c    13 December 2004
c
c  Author:
c
c    John Burkardt
c
c  Parameters:
c
c    Input, complex Z1, the value to be divided.
c
c    Input, real R, the divisor.
c
c    Output, complex C4_DIV_R8, the function value.
c
      implicit none

      complex c4_div_r8
      real r
      complex z1

      c4_div_r8 = z1 / r

      return
      end
      function c4_exp ( z )

c*********************************************************************72
c
cc C4_EXP evaluates the exponential of a C4.
c
c  Discussion:
c
c    A C4 is a complex value.
c
c  Licensing:
c
c    This code is distributed under the GNU LGPL license. 
c
c  Modified:
c
c    13 December 2008
c
c  Author:
c
c    John Burkardt
c
c  Parameters:
c
c    Input, complex Z, the argument.
c
c    Output, complex C4_EXP, the function value.
c
      implicit none

      complex   c4_exp
      complex   z
      real zi
      real zr

      zr = real ( z )
      zi = aimag ( z )

      c4_exp = exp ( zr ) * cmplx ( cos ( zi ), sin ( zi ) )

      return
      end
      function c4_i ( )

c*********************************************************************72
c
cc C4_I returns the the imaginary unit, i as a C4.
c
c  Discussion:
c
c    A C4 is a complex value.
c
c  Licensing:
c
c    This code is distributed under the GNU LGPL license. 
c
c  Modified:
c
c    13 December 2008
c
c  Author:
c
c    John Burkardt
c
c  Parameters:
c
c    Output, complex C4_I, the value of complex i.
c
      implicit none

      complex c4_i

      c4_i = cmplx ( 0.0E+00, 1.0E+00 )

      return
      end
      function c4_imag ( z )

c*********************************************************************72
c
cc C4_IMAG evaluates the imaginary part of a C4.
c
c  Discussion:
c
c    A C4 is a complex value.
c
c  Licensing:
c
c    This code is distributed under the GNU LGPL license. 
c
c  Modified:
c
c    13 December 2008
c
c  Author:
c
c    John Burkardt
c
c  Parameters:
c
c    Input, complex Z, the argument.
c
c    Output, real C4_IMAG, the function value.
c
      implicit none

      real c4_imag
      complex z

      c4_imag = aimag ( z )

      return
      end
      function c4_inv ( z )

c*********************************************************************72
c
cc C4_INV evaluates the inverse of a C4.
c
c  Discussion:
c
c    A C4 is a complex value.
c
c  Licensing:
c
c    This code is distributed under the GNU LGPL license. 
c
c  Modified:
c
c    13 December 2008
c
c  Author:
c
c    John Burkardt
c
c  Parameters:
c
c    Input, complex Z, the argument.
c
c    Output, complex C4_INV, the function value.
c
      implicit none

      complex c4_inv
      complex z
      real z_imag
      real z_norm
      real z_real

      z_real = real ( z )
      z_imag = aimag ( z )

      z_norm = sqrt ( z_real * z_real + z_imag * z_imag )

      c4_inv = cmplx ( z_real, - z_imag ) / z_norm / z_norm

      return
      end
      function c4_le_l1 ( x, y )

c*********************************************************************72
c
cc C4_LE_L1 := X <= Y for C4 values, and the L1 norm.
c
c  Discussion:
c
c    A C4 is a complex value.
c
c    The L1 norm can be defined here as:
c
c      C4_NORM_L1(X) = abs ( real (X) ) + abs ( imag (X) )
c
c  Licensing:
c
c    This code is distributed under the GNU LGPL license. 
c
c  Modified:
c
c    13 December 2008
c
c  Author:
c
c    John Burkardt
c
c  Parameters:
c
c    Input, complex X, Y, the values to be compared.
c
c    Output, logical C4_LE_L1, is TRUE if X <= Y.
c
      implicit none

      logical c4_le_l1
      complex x
      complex y

      if ( abs ( real ( x ) ) + abs ( aimag ( x ) ) .le. 
     &     abs ( real ( y ) ) + abs ( aimag ( y ) ) ) then
        c4_le_l1 = .true.
      else
        c4_le_l1 = .false.
      end if

      return
      end
      function c4_le_l2 ( x, y )

c*********************************************************************72
c
cc C4_LE_L2 := X <= Y for complex values, and the L2 norm.
c
c  Discussion:
c
c    A C4 is a complex value.
c
c    The L2 norm can be defined here as:
c
c      value = sqrt ( ( real (X) )**2 + ( imag (X) )**2 )
c
c  Licensing:
c
c    This code is distributed under the GNU LGPL license.
c
c  Modified:
c
c    13 December 2008
c
c  Author:
c
c    John Burkardt
c
c  Parameters:
c
c    Input, complex X, Y, the values to be compared.
c
c    Output, logical C4_LE_L2, is TRUE if X <= Y.
c
      implicit none

      logical c4_le_l2
      logical value
      complex x
      complex y

      if ( ( real ( x ) )**2 + ( aimag ( x ) )**2 .le.
     &     ( real ( y ) )**2 + ( aimag ( y ) )**2 ) then
        value = .true.
      else
        value = .false.
      end if

      c4_le_l2 = value

      return
      end
      function c4_le_li ( x, y )

c*********************************************************************72
c
cc C4_LE_LI := X <= Y for C4 values, and the L Infinity norm.
c
c  Discussion:
c
c    A C4 is a complex value.
c
c    The L Infinity norm can be defined here as:
c
c      C4_NORM_LI(X) = max ( abs ( real (X) ), abs ( imag (X) ) )
c
c  Licensing:
c
c    This code is distributed under the GNU LGPL license. 
c
c  Modified:
c
c    13 December 2008
c
c  Author:
c
c    John Burkardt
c
c  Parameters:
c
c    Input, complex X, Y, the values to be compared.
c
c    Output, logical C4_LE_LI, is TRUE if X <= Y.
c
      implicit none

      logical c4_le_li
      complex x
      complex y

      if ( amax1 ( abs ( real ( x ) ), abs ( aimag ( x ) ) ) .le.
     &     amax1 ( abs ( real ( y ) ), abs ( aimag ( y ) ) ) ) then
        c4_le_li = .true.
      else
        c4_le_li = .false.
      end if

      return
      end
      function c4_log ( z )

c*********************************************************************72
c
cc C4_LOG evaluates the logarithm of a C4.
c
c  Discussion:
c
c    A C4 is a complex value.
c
c    FORTRAN77 does not have a logarithm function for C4 argumentsc
c
c    Here we use the relationship:
c
c      C4_LOG ( Z ) = LOG ( R ) + i * ARG ( R )
c
c  Licensing:
c
c    This code is distributed under the GNU LGPL license. 
c
c  Modified:
c
c    13 December 2008
c
c  Author:
c
c    John Burkardt
c
c  Parameters:
c
c    Input, complex Z, the argument.
c
c    Output, complex C4_LOG, the function value.
c
      implicit none

      real arg
      real c4_arg
      complex c4_i
      complex c4_log
      real c4_mag
      real r
      complex z

      c4_i = cmplx ( 0.0E+00, 1.0E+00 )

      arg = c4_arg ( z )
      r = c4_mag ( z )

      c4_log = alog ( r ) + c4_i * arg
 
      return
      end
      function c4_mag ( x )

c*********************************************************************72
c
cc C4_MAG returns the magnitude of a C4.
c
c  Discussion:
c
c    A C4 is a complex value.
c
c  Licensing:
c
c    This code is distributed under the GNU LGPL license. 
c
c  Modified:
c
c    13 December 2008
c
c  Author:
c
c    John Burkardt
c
c  Parameters:
c
c    Input, complex X, the value whose magnitude is desired.
c
c    Output, real C4_MAG, the function value.
c
      implicit none

      real c4_mag
      complex x

      c4_mag = sqrt ( ( real ( x ) )**2 + ( aimag ( x ) )**2 )

      return
      end
      function c4_mul ( z1, z2 )

c*********************************************************************72
c
cc C4_MUL multiplies two C4's.
c
c  Discussion:
c
c    A C4 is a complex value.
c
c  Licensing:
c
c    This code is distributed under the GNU LGPL license. 
c
c  Modified:
c
c    13 December 2004
c
c  Author:
c
c    John Burkardt
c
c  Parameters:
c
c    Input, complex Z1, Z2, the values to multiply.
c
c    Output, complex C4_MUL, the function value.
c
      implicit none

      complex c4_mul
      complex z1
      complex z2

      c4_mul = z1 * z2

      return
      end
      function c4_neg ( c1 )

c*****************************************************************************80
c
cc C4_NEG returns the negative of a C4.
c
c  Discussion:
c
c    A C4 is a complex value.
c
c  Licensing:
c
c    This code is distributed under the GNU LGPL license. 
c
c  Modified:
c
c    13 December 2008
c
c  Author:
c
c    John Burkardt
c
c  Parameters:
c
c    Input, complex C1, the value to be negated.
c
c    Output, complex C4_NEG, the function value.
c
      implicit none

      complex c1
      complex c4_neg

      c4_neg = - c1

      return
      end
      function c4_norm_l1 ( x )

c*********************************************************************72
c
cc C4_NORM_L1 evaluates the L1 norm of a C4.
c
c  Discussion:
c
c    A C4 is a complex value.
c
c    Numbers of equal norm lie along diamonds centered at (0,0).
c
c    The L1 norm can be defined here as:
c
c      C4_NORM_L1(X) = abs ( real (X) ) + abs ( imag (X) )
c
c  Licensing:
c
c    This code is distributed under the GNU LGPL license. 
c
c  Modified:
c
c    13 December 2008
c
c  Author:
c
c    John Burkardt
c
c  Parameters:
c
c    Input, complex X, the value whose norm is desired.
c
c    Output, real C4_NORM_L1, the norm of X.
c
      implicit none

      real c4_norm_l1
      complex x

      c4_norm_l1 = abs ( real ( x ) ) + abs ( aimag ( x ) )

      return
      end
      function c4_norm_l2 ( x )

c*********************************************************************72
c
cc C4_NORM_L2 evaluates the L2 norm of a C4.
c
c  Discussion:
c
c    A C4 is a complex value.
c
c    Numbers of equal norm lie on circles centered at (0,0).
c
c    The L2 norm can be defined here as:
c
c      C4_NORM_L2(X) = sqrt ( ( real (X) )**2 + ( imag ( X ) )**2 )
c
c  Licensing:
c
c    This code is distributed under the GNU LGPL license. 
c
c  Modified:
c
c    13 December 2008
c
c  Author:
c
c    John Burkardt
c
c  Parameters:
c
c    Input, complex X, the value whose norm is desired.
c
c    Output, real C4_NORM_L2, the 2-norm of X.
c
      implicit none

      real c4_norm_l2
      complex x

      c4_norm_l2 = sqrt ( ( real ( x ) )**2 
     &                  + ( aimag ( x ) )**2 )

      return
      end
      function c4_norm_li ( x )

c*********************************************************************72
c
cc C4_NORM_LI evaluates the L-infinity norm of a C4.
c
c  Discussion:
c
c    A C4 is a complex value.
c
c    Numbers of equal norm lie along squares whose centers are at (0,0).
c
c    The L-infinity norm can be defined here as:
c
c      C4_NORM_LI(X) = max ( abs ( real (X) ), abs ( imag (X) ) )
c
c  Licensing:
c
c    This code is distributed under the GNU LGPL license. 
c
c  Modified:
c
c    13 December 2008
c
c  Author:
c
c    John Burkardt
c
c  Parameters:
c
c    Input, complex X, the value whose norm is desired.
c
c    Output, real C4_NORM_LI, the infinity norm of X.
c
      implicit none

      real c4_norm_li
      complex x

      c4_norm_li = amax1 ( abs ( real ( x ) ), abs ( aimag ( x ) ) )

      return
      end
      function c4_normal_01 ( seed )

c*********************************************************************72
c
cc C4_NORMAL_01 returns a unit pseudonormal C4.
c
c  Discussion:
c
c    A C4 is a complex value.
c
c  Licensing:
c
c    This code is distributed under the GNU LGPL license.
c
c  Modified:
c
c    13 December 2008
c
c  Author:
c
c    John Burkardt
c
c  Parameters:
c
c    Input/output, integer SEED, a seed for the random number generator.
c
c    Output, complex C4_NORMAL_01, a sample of the PDF.
c
      implicit none

      complex c4_normal_01
      real r4_pi
      parameter ( r4_pi = 3.141592653589793E+00 )
      real r4_uniform_01
      integer seed
      real v1
      real v2
      real x_c
      real x_r

      v1 = r4_uniform_01 ( seed )
      v2 = r4_uniform_01 ( seed )

      x_r = sqrt ( - 2.0E+00 * alog ( v1 ) ) 
     &  * cos ( 2.0E+00 * r4_pi * v2 )

      x_c = sqrt ( - 2.0E+00 * alog ( v1 ) ) 
     &  * sin ( 2.0E+00 * r4_pi * v2 )

      c4_normal_01 = cmplx ( x_r, x_c )

      return
      end
      function c4_one ( )

c*********************************************************************72
c
cc C4_ONE returns the value of 1 as a C4.
c
c  Discussion:
c
c    A C4 is a complex value.
c
c  Licensing:
c
c    This code is distributed under the GNU LGPL license. 
c
c  Modified:
c
c    13 December 2008
c
c  Author:
c
c    John Burkardt
c
c  Parameters:
c
c    Output, complex C4_ONE, the value of complex 1.
c
      implicit none

      complex c4_one

      c4_one = cmplx ( 1.0E+00, 0.0E+00 )

      return
      end
      subroutine c4_print ( a, title )

c*********************************************************************72
c
cc C4_PRINT prints a C4.
c
c  Discussion:
c
c    A C4 is a complex value.
c
c  Licensing:
c
c    This code is distributed under the GNU LGPL license. 
c
c  Modified:
c
c    13 December 2008
c
c  Author:
c
c    John Burkardt
c
c  Parameters:
c
c    Input, complex A, the value to be printed.
c
c    Input, character*(*) TITLE, a title.
c
      implicit none

      complex a
      character*(*) title

      if ( 0 .lt. len_trim ( title ) ) then
        write ( *, '(a,2x,a,g14.6,a,g14.6,a)' ) 
     &    trim ( title ), '(', real ( a ), ',', aimag ( a ), ')'
      else
        write ( *, '(a,g14.6,a,g14.6,a)' ) 
     &    '(', real ( a ), ',', aimag ( a ), ')'
      end if

      return
      end
      function c4_real ( z )

c*********************************************************************72
c
cc C4_REAL evaluates the real part of a C4.
c
c  Discussion:
c
c    A C4 is a complex value.
c
c  Licensing:
c
c    This code is distributed under the GNU LGPL license. 
c
c  Modified:
c
c    13 December 2008
c
c  Author:
c
c    John Burkardt
c
c  Parameters:
c
c    Input, complex Z, the argument.
c
c    Output, real C4_REAL, the function value.
c
      implicit none

      real c4_real
      complex z

      c4_real = real ( z )

      return
      end
      function c4_sin ( z )

c*********************************************************************72
c
cc C4_SIN evaluates the sine of a C4.
c
c  Discussion:
c
c    A C4 is a complex value.
c
c    We use the relationship:
c
c      C4_SIN ( C ) = - i * ( C4_EXP ( i * C ) - C4_EXP ( - i * C ) ) / 2
c
c  Licensing:
c
c    This code is distributed under the GNU LGPL license. 
c
c  Modified:
c
c    13 December 2008
c
c  Author:
c
c    John Burkardt
c
c  Parameters:
c
c    Input, complex Z, the argument.
c
c    Output, complex C4_SIN, the function value.
c
      implicit none

      complex c4_exp
      complex c4_i
      complex c4_sin
      complex z

      c4_i = cmplx ( 0.0E+00, 1.0E+00 )

      c4_sin = - c4_i 
     &  * ( c4_exp ( c4_i * z ) - c4_exp ( - c4_i * z ) ) 
     &  / 2.0E+00

      return
      end
      function c4_sinh ( z )

c*********************************************************************72
c
cc C4_SINH evaluates the hyperbolic sine of a C4.
c
c  Discussion:
c
c    A C4 is a complex value.
c
c  Licensing:
c
c    This code is distributed under the GNU LGPL license. 
c
c  Modified:
c
c    13 December 2008
c
c  Author:
c
c    John Burkardt
c
c  Parameters:
c
c    Input, complex Z, the argument.
c
c    Output, complex C4_SINH, the function value.
c
      implicit none

      complex c4_exp
      complex c4_sinh
      complex z

      c4_sinh = ( c4_exp ( z ) - c4_exp ( - z ) ) / 2.0E+00

      return
      end
      function c4_sqrt ( x )

c*********************************************************************72
c
cc C4_SQRT returns the principal square root of a C4.
c
c  Discussion:
c
c    A C4 is a complex value.
c
c  Licensing:
c
c    This code is distributed under the GNU LGPL license. 
c
c  Modified:
c
c    13 December 2008
c
c  Author:
c
c    John Burkardt
c
c  Parameters:
c
c    Input, complex X, the number whose square root is desired.
c
c    Output, complex C4_SQRT, the function value.
c
      implicit none

      real arg
      real c4_arg
      real c4_mag
      complex c4_sqrt
      real mag
      complex x

      arg = c4_arg ( x )
      mag = c4_mag ( x )

      if ( mag .eq. 0.0E+00 ) then

        c4_sqrt = cmplx ( 0.0E+00, 0.0E+00 )

      else

        c4_sqrt = sqrt ( mag ) 
     &    * cmplx ( cos ( arg / 2.0E+00 ), 
     &              sin ( arg / 2.0E+00 ) )

      end if

      return
      end
      function c4_sub ( z1, z2 )

c*********************************************************************72
c
cc C4_SUB subtracts two C4's.
c
c  Discussion:
c
c    A C4 is a complex value.
c
c  Licensing:
c
c    This code is distributed under the GNU LGPL license. 
c
c  Modified:
c
c    13 December 2004
c
c  Author:
c
c    John Burkardt
c
c  Parameters:
c
c    Input, complex Z1, Z2, the values to subtract.
c
c    Output, complex C4_SUB, the function value.
c
      implicit none

      complex c4_sub
      complex z1
      complex z2

      c4_sub = z1 - z2

      return
      end
      subroutine c4_swap ( x, y )

c*********************************************************************72
c
cc C4_SWAP swaps two C4's.
c
c  Discussion:
c
c    A C4 is a complex value.
c
c  Licensing:
c
c    This code is distributed under the GNU LGPL license. 
c
c  Modified:
c
c    13 December 2008
c
c  Author:
c
c    John Burkardt
c
c  Parameters:
c
c    Input/output, complex X, Y.  On output, the values of X and
c    Y have been interchanged.
c
      implicit none

      complex x
      complex y
      complex z

      z = x
      x = y
      y = z

      return
      end
      function c4_tan ( z )

c*********************************************************************72
c
cc C4_TAN evaluates the tangent of a C4.
c
c  Discussion:
c
c    A C4 is a complex value.
c
c    We use the relationship:
c
c      C4_TAN ( C ) = - i * ( C4_EXP ( i * C ) - C4_EXP ( - i * C ) ) 
c                         / ( C4_EXP ( I * C ) + C4_EXP ( - i * C ) )
c
c  Licensing:
c
c    This code is distributed under the GNU LGPL license. 
c
c  Modified:
c
c    13 December 2008
c
c  Author:
c
c    John Burkardt
c
c  Parameters:
c
c    Input, complex Z, the argument.
c
c    Output, complex C4_TAN, the function value.
c
      implicit none

      complex c4_exp
      complex c4_i
      complex c4_tan
      complex z

      c4_i = cmplx ( 0.0E+00, 1.0E+00 )

      c4_tan = - c4_i 
     &  * ( c4_exp ( c4_i * z ) - c4_exp ( - c4_i * z ) ) 
     &  / ( c4_exp ( c4_i * z ) + c4_exp ( - c4_i * z ) )

      return
      end
      function c4_tanh ( z )

c*********************************************************************72
c
cc C4_TANH evaluates the hyperbolic tangent of a C4.
c
c  Discussion:
c
c    A C4 is a complex value.
c
c  Licensing:
c
c    This code is distributed under the GNU LGPL license. 
c
c  Modified:
c
c    13 December 2008
c
c  Author:
c
c    John Burkardt
c
c  Parameters:
c
c    Input, complex Z, the argument.
c
c    Output, complex C4_TANH, the function value.
c
      implicit none

      complex c4_exp
      complex c4_tanh
      complex z

      c4_tanh = ( c4_exp ( z ) - c4_exp ( - z ) ) 
     &        / ( c4_exp ( z ) + c4_exp ( - z ) )

      return
      end
      subroutine c4_to_cartesian ( z, x, y )

c*********************************************************************72
c
cc C4_TO_CARTESIAN converts a C4 to Cartesian form.
c
c  Discussion:
c
c    A C4 is a complex value.
c
c  Licensing:
c
c    This code is distributed under the GNU LGPL license. 
c
c  Modified:
c
c    13 December 2008
c
c  Author:
c
c    John Burkardt
c
c  Parameters:
c
c    Input, complex Z, the argument.
c
c    Output, real X, Y, the Cartesian form.
c
      implicit none

      real x
      real y
      complex z

      x = real ( z )
      y = aimag ( z )

      return
      end
      subroutine c4_to_polar ( z, r, theta )

c*********************************************************************72
c
cc C4_TO_POLAR converts a C4 to polar form.
c
c  Discussion:
c
c    A C4 is a complex value.
c
c  Licensing:
c
c    This code is distributed under the GNU LGPL license. 
c
c  Modified:
c
c    13 December 2008
c
c  Author:
c
c    John Burkardt
c
c  Parameters:
c
c    Input, complex Z, the argument.
c
c    Output, real R, THETA, the polar form.
c
      implicit none

      real c4_arg
      real c4_mag
      real r
      real theta
      complex z

      r = c4_mag ( z )
      theta = c4_arg ( z )

      return
      end
      function c4_uniform_01 ( seed )

c*********************************************************************72
c
cc C4_UNIFORM_01 returns a unit pseudorandom C4.
c
c  Discussion:
c
c    A C4 is a complex value.
c
c    The angle should be uniformly distributed between 0 and 2 * PI,
c    the square root of the radius uniformly distributed between 0 and 1.
c
c    This results in a uniform distribution of values in the unit circle.
c
c  Licensing:
c
c    This code is distributed under the GNU LGPL license. 
c
c  Modified:
c
c    13 December 2008
c
c  Author:
c
c    John Burkardt
c
c  Parameters:
c
c    Input/output, integer SEED, the "seed" value, which should NOT be 0.
c    On output, SEED has been updated.
c
c    Output, complex Z_UNIFORM_01, a pseudorandom complex value.
c
      implicit none
      complex c4_uniform_01
      integer k
      real r
      real r4_pi
      parameter ( r4_pi = 3.141592653589793E+00 )
      integer seed
      real theta

      if ( seed .eq. 0 ) then
        write ( *, '(a)' ) ' '
        write ( *, '(a)' ) 'C4_UNIFORM_01 - Fatal errorc'
        write ( *, '(a)' ) '  Input value of SEED = 0.'
        stop
      end if

      k = seed / 127773

      seed = 16807 * ( seed - k * 127773 ) - k * 2836

      if ( seed .lt. 0 ) then
        seed = seed + 2147483647
      end if

      r = sqrt ( real ( seed ) * 4.656612875E-10 )

      k = seed / 127773

      seed = 16807 * ( seed - k * 127773 ) - k * 2836

      if ( seed .lt. 0 ) then
        seed = seed + 2147483647
      end if

      theta = 2.0E+00 * r4_pi * ( real ( seed ) * 4.656612875E-10 )

      c4_uniform_01 = r * cmplx ( cos ( theta ), sin ( theta ) )

      return
      end
      function c4_zero ( )

c*********************************************************************72
c
cc C4_ZERO returns the value of 0 as a C4.
c
c  Discussion:
c
c    A C4 is a complex value.
c
c  Licensing:
c
c    This code is distributed under the GNU LGPL license. 
c
c  Modified:
c
c    13 December 2008
c
c  Author:
c
c    John Burkardt
c
c  Parameters:
c
c    Output, complex C4_ZERO, the value of complex 0.
c
      implicit none

      complex c4_zero

      c4_zero = cmplx ( 0.0E+00, 0.0E+00 )

      return
      end
      subroutine c4mat_identity ( n, a )

c*********************************************************************72
c
cc C4MAT_IDENTITY sets a C4MAT to the identity.
c
c  Discussion:
c
c    A C4MAT is a matrix of C4's.
c
c  Licensing:
c
c    This code is distributed under the GNU LGPL license.
c
c  Modified:
c
c    13 December 2008
c
c  Author:
c
c    John Burkardt
c
c  Parameters:
c
c    Input, integer N, the order of the matrix.
c
c    Output, complex A(N,N), the matrix.
c
      implicit none

      integer n

      complex a(n,n)
      integer i
      integer j

      do j = 1, n
        do i = 1, n
          if ( i .eq. j ) then
            a(i,j) = cmplx ( 1.0E+00, 0.0E+00 )
          else
            a(i,j) = cmplx ( 0.0E+00, 0.0E+00 )
          end if
        end do
      end do

      return
      end
      subroutine c4mat_indicator ( m, n, a )

c*********************************************************************72
c
cc C4MAT_INDICATOR returns the C4MAT indicator matrix.
c
c  Discussion:
c
c    A C4MAT is a matrix of C4's.
c
c  Licensing:
c
c    This code is distributed under the GNU LGPL license.
c
c  Modified:
c
c    13 December 2008
c
c  Author
c
c    John Burkardt
c
c  Parameters:
c
c    Input, integer M, N, the number of rows and columns.
c
c    Output, complex A(M,N), the matrix.
c
      implicit none

      integer m
      integer n

      complex a(m,n)
      integer i
      integer j

      do j = 1, n
        do i = 1, m
          a(i,j) = cmplx ( i, j )
        end do
      end do

      return
      end
      subroutine c4mat_nint ( m, n, a )

c*********************************************************************72
c
cc C4MAT_NINT rounds the entries of a C4MAT.
c
c  Discussion:
c
c    A C4MAT is a matrix of C4's.
c
c  Licensing:
c
c    This code is distributed under the GNU LGPL license. 
c
c  Modified:
c
c    13 December 2008
c
c  Author:
c
c    John Burkardt
c
c  Parameters:
c
c    Input, integer M, N, the number of rows and columns of A.
c
c    Input/output, complex A(M,N), the matrix to be NINT'ed.
c
      implicit none

      integer m
      integer n

      complex a(m,n)
      integer i
      integer j

      do j = 1, n
        do i = 1, m
          a(i,j) = cmplx ( nint ( real ( a(i,j) ) ), 
     &                     nint ( aimag ( a(i,j) ) ) )
        end do
      end do

      return
      end
      subroutine c4mat_print ( m, n, a, title )

c*********************************************************************72
c
cc C4MAT_PRINT prints a C4MAT.
c
c  Discussion:
c
c    A C4MAT is a matrix of C4's.
c
c  Licensing:
c
c    This code is distributed under the GNU LGPL license. 
c
c  Modified:
c
c    13 December 2008
c
c  Author:
c
c    John Burkardt
c
c  Parameters:
c
c    Input, integer M, N, the number of rows and columns 
c    in the matrix.
c
c    Input, complex A(M,N), the matrix.
c
c    Input, character * ( * ) TITLE, a title.
c
      implicit none

      integer m
      integer n

      complex a(m,n)
      character * ( * ) title

      call c4mat_print_some ( m, n, a, 1, 1, m, n, title )

      return
      end
      subroutine c4mat_print_some ( m, n, a, ilo, jlo, ihi, jhi, 
     &  title )

c*********************************************************************72
c
cc C4MAT_PRINT_SOME prints some of a C4MAT.
c
c  Discussion:
c
c    A C4MAT is a matrix of C4's.
c
c  Licensing:
c
c    This code is distributed under the GNU LGPL license. 
c
c  Modified:
c
c    21 June 2010
c
c  Author:
c
c    John Burkardt
c
c  Parameters:
c
c    Input, integer M, N, the number of rows and columns 
c    in the matrix.
c
c    Input, complex A(M,N), the matrix.
c
c    Input, integer ILO, JLO, IHI, JHI, the first row and
c    column, and the last row and column to be printed.
c
c    Input, character * ( * ) TITLE, a title.
c
      implicit none

      integer incx
      parameter ( incx = 4 )
      integer m
      integer n

      complex a(m,n)
      character * ( 20 ) ctemp(incx)
      integer i
      integer i2hi
      integer i2lo
      integer ihi
      integer ilo
      integer inc
      integer j
      integer j2
      integer j2hi
      integer j2lo
      integer jhi
      integer jlo
      character * ( * ) title
      complex zero

      zero = cmplx ( 0.0E+00, 0.0E+00 )

      write ( *, '(a)' ) ' '
      write ( *, '(a)' ) trim ( title )

      if ( m .le. 0 .or. n .le. 0 ) then
        write ( *, '(a)' ) ' '
        write ( *, '(a)' ) '  (None)' 
        return
      end if
c
c  Print the columns of the matrix, in strips of INCX.
c
      do j2lo = jlo, min ( jhi, n ), incx

        j2hi = j2lo + incx - 1
        j2hi = min ( j2hi, n )
        j2hi = min ( j2hi, jhi )

        inc = j2hi + 1 - j2lo

        write ( *, '(a)' ) ' '

        do j = j2lo, j2hi
          j2 = j + 1 - j2lo
          write ( ctemp(j2), '(i10,10x)' ) j
        end do

        write ( *, '(a,4a20)' ) '  Col: ', ( ctemp(j2), j2 = 1, inc )
        write ( *, '(a)' ) '  Row'
        write ( *, '(a)' ) '  ---'
c
c  Determine the range of the rows in this strip.
c
        i2lo = max ( ilo, 1 )
        i2hi = min ( ihi, m )

        do i = i2lo, i2hi
c
c  Print out (up to) INCX entries in row I, that lie in the current strip.
c
          do j2 = 1, inc

            j = j2lo - 1 + j2

            if ( a(i,j) .eq. zero ) then
              ctemp(j2) = '       0.0          '
            else if ( aimag ( a(i,j) ) .eq. 0.0E+00 ) then
              write ( ctemp(j2), '(g10.3,10x)' ) real ( a(i,j) )
            else
              write ( ctemp(j2), '(2g10.3)' ) a(i,j)
            end if

          end do

          write ( *, '(i5,a1,4a20)' ) i, ':', ( ctemp(j2), j2 = 1, inc )

        end do

      end do

      return
      end
      subroutine c4mat_uniform_01 ( m, n, seed, c )

c*********************************************************************72
c
cc C4MAT_UNIFORM_01 returns a unit pseudorandom C4MAT.
c
c  Discussion:
c
c    A C4MAT is a matrix of C4's.
c
c    The angles should be uniformly distributed between 0 and 2 * PI,
c    the square roots of the radius uniformly distributed between 0 and 1.
c
c    This results in a uniform distribution of values in the unit circle.
c
c  Licensing:
c
c    This code is distributed under the GNU LGPL license. 
c
c  Modified:
c
c    13 December 2008
c
c  Author:
c
c    John Burkardt
c
c  Parameters:
c
c    Input, integer M, N, the number of rows and columns in the matrix.
c
c    Input/output, integer SEED, the "seed" value, which should NOT be 0.
c    On output, SEED has been updated.
c
c    Output, complex C(M,N), the pseudorandom complex matrix.
c
      implicit none

      integer m
      integer n

      complex c(m,n)
      integer i
      integer j
      integer k
      real r
      real r4_pi
      parameter ( r4_pi = 3.141592653589793E+00 )
      integer seed
      real theta

      if ( seed .eq. 0 ) then
        write ( *, '(a)' ) ' '
        write ( *, '(a)' ) 'C4MAT_UNIFORM_01 - Fatal errorc'
        write ( *, '(a)' ) '  Input value of SEED = 0.'
        stop
      end if

      do j = 1, n
        do i = 1, m

          k = seed / 127773

          seed = 16807 * ( seed - k * 127773 ) - k * 2836

          if ( seed .lt. 0 ) then
            seed = seed + 2147483647
          end if

          r = sqrt ( real ( seed ) * 4.656612875E-10 )

          k = seed / 127773

          seed = 16807 * ( seed - k * 127773 ) - k * 2836

          if ( seed .lt. 0 ) then
            seed = seed + 2147483647
          end if

          theta = 2.0E+00 * r4_pi * ( real ( seed ) * 4.656612875E-10 )

          c(i,j) = r * cmplx ( cos ( theta ), sin ( theta ) )

        end do

      end do

      return
      end
      subroutine c4vec_indicator ( n, a )

c*********************************************************************72
c
cc C4VEC_INDICATOR sets a C4VEC to the indicator vector.
c
c  Discussion:
c
c    A C4VEC is a vector of C4's
c
c    X(1:N) = ( 1-1i, 2-2i, 3-3i, 4-4i, ... )
c
c  Licensing:
c
c    This code is distributed under the GNU LGPL license. 
c
c  Modified:
c
c    13 December 2008
c
c  Author:
c
c    John Burkardt
c
c  Parameters:
c
c    Input, integer N, the number of elements of A.
c
c    Output, complex A(N), the array to be initialized.
c
      implicit none

      integer n

      complex a(n)
      integer i

      do i = 1, n
        a(i) = cmplx ( i, -i )
      end do

      return
      end
      subroutine c4vec_nint ( n, a )

c*********************************************************************72
c
cc C4VEC_NINT rounds the entries of a C4VEC.
c
c  Discussion:
c
c    A C4VEC is a vector of C4's
c
c  Licensing:
c
c    This code is distributed under the GNU LGPL license. 
c
c  Modified:
c
c    13 December 2008
c
c  Author:
c
c    John Burkardt
c
c  Parameters:
c
c    Input, integer N, the number of entries in the vector.
c
c    Input/output, complex A(N), the vector to be NINT'ed.
c
      implicit none

      integer n

      complex a(n)
      integer i

      do i = 1, n
        a(i) = cmplx ( nint ( real ( a(i) ) ), 
     &                 nint ( aimag ( a(i) ) ) )
      end do

      return
      end
      function c4vec_norm_l2 ( n, a )

c*********************************************************************72
c
cc C4VEC_NORM_L2 returns the L2 norm of a C4VEC.
c
c  Discussion:
c
c    A C4VEC is a vector of C4's
c
c    The vector L2 norm is defined as:
c
c      C4VEC_NORM_L2 = sqrt ( sum ( 1 <= I <= N ) conjg ( A(I) ) * A(I) ).
c
c  Licensing:
c
c    This code is distributed under the GNU LGPL license. 
c
c  Modified:
c
c    13 December 2008
c
c  Author:
c
c    John Burkardt
c
c  Parameters:
c
c    Input, integer N, the number of entries in A.
c
c    Input, complex A(N), the vector whose L2 norm is desired.
c
c    Output, real C4VEC_NORM_L2, the L2 norm of A.
c
      implicit none

      integer n

      complex a(n)
      real c4vec_norm_l2
      integer i

      c4vec_norm_l2 = 0.0E+00
      do i = 1, n
        c4vec_norm_l2 = c4vec_norm_l2 + conjg ( a(i) ) * a(i)
      end do
      c4vec_norm_l2 = sqrt ( c4vec_norm_l2 )

      return
      end
      subroutine c4vec_print ( n, a, title )

c*********************************************************************72
c
cc C4VEC_PRINT prints a C4VEC, with an optional title.
c
c  Discussion:
c
c    A C4VEC is a vector of C4's
c
c  Licensing:
c
c    This code is distributed under the GNU LGPL license. 
c
c  Modified:
c
c    13 December 2008
c
c  Author:
c
c    John Burkardt
c
c  Parameters:
c
c    Input, integer N, the number of components of the vector.
c
c    Input, complex A(N), the vector to be printed.
c
c    Input, character*(*) TITLE, a title.
c
      implicit none

      integer n

      complex a(n)
      integer i
      character*(*) title

      write ( *, '(a)' ) ' '
      write ( *, '(a)' ) trim ( title )
      write ( *, '(a)' ) ' '

      do i = 1, n
        write ( *, '(2x,i8,a1,1x,2g14.6)' ) i, ':', a(i)
      end do

      return
      end
      subroutine c4vec_print_part ( n, a, max_print, title )

c*********************************************************************72
c
cc C4VEC_PRINT_PART prints "part" of a C4VEC.
c
c  Discussion:
c
c    The user specifies MAX_PRINT, the maximum number of lines to print.
c
c    If N, the size of the vector, is no more than MAX_PRINT, then
c    the entire vector is printed, one entry per line.
c
c    Otherwise, if possible, the first MAX_PRINT-2 entries are printed,
c    followed by a line of periods suggesting an omission,
c    and the last entry.
c
c  Licensing:
c
c    This code is distributed under the GNU LGPL license.
c
c  Modified:
c
c    22 June 2010
c
c  Author:
c
c    John Burkardt
c
c  Parameters:
c
c    Input, integer N, the number of entries of the vector.
c
c    Input, complex A(N), the vector to be printed.
c
c    Input, integer MAX_PRINT, the maximum number of lines
c    to print.
c
c    Input, character * ( * ) TITLE, a title.
c
      implicit none

      integer n

      complex a(n)
      integer i
      integer max_print
      character * ( * )  title

      if ( max_print .le. 0 ) then
        return
      end if

      if ( n .le. 0 ) then
        return
      end if

      write ( *, '(a)' ) ' '
      write ( *, '(a)' ) trim ( title )
      write ( *, '(a)' ) ' '

      if ( n .le. max_print ) then

        do i = 1, n
          write ( *, '(2x,i8,a,1x,g14.6,2x,g14.6)' ) i, ':', a(i)
        end do

      else if ( 3 .le. max_print ) then

        do i = 1, max_print - 2
          write ( *, '(2x,i8,a,1x,g14.6,2x,g14.6)' ) i, ':', a(i)
        end do
        write ( *, '(a)' ) '  ........  ..............  ..............'
        i = n
        write ( *, '(2x,i8,a,1x,g14.6,2x,g14.6)' ) i, ':', a(i)

      else

        do i = 1, max_print - 1
          write ( *, '(2x,i8,a,1x,g14.6,2x,g14.6)' ) i, ':', a(i)
        end do
        i = max_print
        write ( *, '(2x,i8,a,1x,g14.6,2x,g14.6,2x,a)' ) i, ':', a(i), 
     &    '...more entries...'

      end if

      return
      end
      subroutine c4vec_print_some ( n, x, i_lo, i_hi, title )

c*********************************************************************72
c
cc C4VEC_PRINT_SOME prints some of a C4VEC.
c
c  Discussion:
c
c    A C4VEC is a vector of C4's.
c
c  Licensing:
c
c    This code is distributed under the GNU LGPL license. 
c
c  Modified:
c
c    13 December 2008
c
c  Author:
c
c    John Burkardt
c
c  Parameters:
c
c    Input, integer N, the number of entries of the vector.
c
c    Input, complex X(N), the vector to be printed.
c
c    Input, integer I_LO, I_HI, the first and last entries
c    to print.
c
c    Input, character*(*) TITLE, a title.
c
      implicit none

      integer n

      integer i
      integer i_hi
      integer i_lo
      character*(*) title
      complex x(n)

      write ( *, '(a)' ) ' '
      write ( *, '(a)' ) trim ( title )
      write ( *, '(a)' ) ' '

      do i = max ( 1, i_lo ), min ( n, i_hi )
        write ( *, '(2x,i8,2x,2g14.6)' ) i, x(i)
      end do

      return
      end
      subroutine c4vec_sort_a_l1 ( n, x )

c*********************************************************************72
c
cc C4VEC_SORT_A_L1 ascending sorts a C4VEC by L1 norm.
c
c  Discussion:
c
c    A C4VEC is a vector of C4's.
c
c    The L1 norm of A+Bi is abs(A) + abs(B).
c
c  Licensing:
c
c    This code is distributed under the GNU LGPL license. 
c
c  Modified:
c
c    13 December 2008
c
c  Author:
c
c    John Burkardt
c
c  Parameters:
c
c    Input, integer N, the number of entries in the array.
c
c    Input/output, complex X(N).
c    On input, an unsorted array.
c    On output, X has been sorted.
c
      implicit none

      integer n

      logical c4_le_l1
      integer i
      integer indx
      integer isgn
      integer j
      complex x(n)

      if ( n .le. 1 ) then
        return
      end if

      i = 0
      indx = 0
      isgn = 0
      j = 0

10    continue

        call sort_heap_external ( n, indx, i, j, isgn )

        if ( 0 .lt. indx ) then

          call c4_swap ( x(i), x(j) )

        else if ( indx .lt. 0 ) then

          if ( c4_le_l1 ( x(i), x(j) ) ) then
            isgn = -1
          else
            isgn = +1
          end if

        else if ( indx .eq. 0 ) then

          go to 20

        end if

      go to 10

20    continue

      return
      end
      subroutine c4vec_sort_a_l2 ( n, x )

c*********************************************************************72
c
cc C4VEC_SORT_A_L2 ascending sorts a C4VEC by L2 norm.
c
c  Discussion:
c
c    A C4VEC is a vector of C4's.
c
c    The L2 norm of A+Bi is sqrt ( A**2 + B**2 ).
c
c  Licensing:
c
c    This code is distributed under the GNU LGPL license. 
c
c  Modified:
c
c    13 December 2008
c
c  Author:
c
c    John Burkardt
c
c  Parameters:
c
c    Input, integer N, the number of entries in the array.
c
c    Input/output, complex X(N).
c    On input, an unsorted array.
c    On output, X has been sorted.
c
      implicit none

      integer n

      logical c4_le_l2
      integer i
      integer indx
      integer isgn
      integer j
      complex x(n)

      if ( n .le. 1 ) then
        return
      end if

      i = 0
      indx = 0
      isgn = 0
      j = 0

10    continue

        call sort_heap_external ( n, indx, i, j, isgn )

        if ( 0 .lt. indx ) then

          call c4_swap ( x(i), x(j) )

        else if ( indx .lt. 0 ) then

          if ( c4_le_l2 ( x(i), x(j) ) ) then
            isgn = -1
          else
            isgn = +1
          end if

        else if ( indx .eq. 0 ) then

          go to 20

        end if

      go to 10

20    continue

      return
      end
      subroutine c4vec_sort_a_li ( n, x )

c*********************************************************************72
c
cc C4VEC_SORT_A_LI ascending sorts a C4VEC by L-infinity norm.
c
c  Discussion:
c
c    A C4VEC is a vector of C4's.
c
c    The L infinity norm of A+Bi is max ( abs ( A ), abs ( B ) ).
c
c  Licensing:
c
c    This code is distributed under the GNU LGPL license. 
c
c  Modified:
c
c    13 December 2008
c
c  Author:
c
c    John Burkardt
c
c  Parameters:
c
c    Input, integer N, the number of entries in the array.
c
c    Input/output, complex X(N).
c    On input, an unsorted array.
c    On output, X has been sorted.
c
      implicit none

      integer n

      logical c4_le_li
      integer i
      integer indx
      integer isgn
      integer j
      complex x(n)

      if ( n .le. 1 ) then
        return
      end if

      i = 0
      indx = 0
      isgn = 0
      j = 0

10    continue

        call sort_heap_external ( n, indx, i, j, isgn )

        if ( 0 .lt. indx ) then

          call c4_swap ( x(i), x(j) )

        else if ( indx .lt. 0 ) then

          if ( c4_le_li ( x(i), x(j) ) ) then
            isgn = -1
          else
            isgn = +1
          end if

        else if ( indx .eq. 0 ) then

          go to 20

        end if

      go to 10

20    continue

      return
      end
      subroutine c4vec_spiral ( n, m, c1, c2, c )

c*********************************************************************72
c
cc C4VEC_SPIRAL returns N points on a spiral between C1 and C2.
c
c  Discussion:
c
c    A C4VEC is a vector of C4's.
c
c    Let the polar form of C1 be ( R1, T1 ) and the polar form of C2 
c    be ( R2, T2 ) where, if necessary, we increase T2 by 2*PI so that T1 <= T2.
c    
c    Then the polar form of the I-th point C(I) is:
c
c      R(I) = ( ( N - I     ) * R1 
c             + (     I - 1 ) * R2 ) 
c              / ( N    - 1 )
c
c      T(I) = ( ( N - I     ) * T1 
c             + (     I - 1 ) * ( T2 + M * 2 * PI ) ) 
c             / ( N     - 1 )
c
c  Licensing:
c
c    This code is distributed under the GNU LGPL license. 
c
c  Modified:
c
c    13 December 2008
c
c  Author:
c
c    John Burkardt
c
c  Parameters:
c
c    Input, integer N, the number of points on the spiral.
c
c    Input, integer M, the number of full circuits the spiral makes.
c
c    Input, complex C1, C2, the first and last points on the spiral.
c
c    Output, complex C(N), the points.
c
      implicit none

      integer n

      complex c(n)
      complex c1
      complex c2
      real c4_arg
      real c4_mag
      integer i
      integer m
      real r1
      real r2
      real ri
      real r4_pi
      parameter ( r4_pi = 3.141592653589793 )
      real t1
      real t2
      real ti

      r1 = c4_mag ( c1 )
      r2 = c4_mag ( c2 )

      t1 = c4_arg ( c1 )
      t2 = c4_arg ( c2 )

      if ( m .eq. 0 ) then

        if ( t2 .lt. t1 ) then
          t2 = t2 + 2.0E+00 * r4_pi
        end if

      else if ( 0 .lt. m ) then

        if ( t2 .lt. t1 ) then
          t2 = t2 + 2.0E+00 * r4_pi
        end if

        t2 = t2 + real ( m ) * 2.0E+00 * r4_pi

      else if ( m .lt. 0 ) then

        if ( t1 .lt. t2 ) then
          t2 = t2 - 2.0E+00 * r4_pi
        end if

        t2 = t2 - real ( m ) * 2.0E+00 * r4_pi

      end if

      do i = 1, n

        ri = ( real ( n - i     ) * r1 
     &       + real (     i - 1 ) * r2 ) 
     &       / real ( n     - 1 )

        ti = ( real ( n - i     ) * t1 
     &       + real (     i - 1 ) * t2 ) 
     &       / real ( n     - 1 )

        call polar_to_c4 ( ri, ti, c(i) )

      end do

      return
      end
      subroutine c4vec_uniform_01 ( n, seed, c )

c*********************************************************************72
c
cc C4VEC_UNIFORM_01 returns a unit pseudorandom C4VEC.
c
c  Discussion:
c
c    A C4VEC is a vector of C4's
c
c    The angles should be uniformly distributed between 0 and 2 * PI,
c    the square roots of the radius uniformly distributed between 0 and 1.
c
c    This results in a uniform distribution of values in the unit circle.
c
c  Licensing:
c
c    This code is distributed under the GNU LGPL license. 
c
c  Modified:
c
c    13 December 2008
c
c  Author:
c
c    John Burkardt
c
c  Parameters:
c
c    Input, integer N, the number of values to compute.
c
c    Input/output, integer SEED, the "seed" value, which should NOT be 0.
c    On output, SEED has been updated.
c
c    Output, complex C(N), the pseudorandom complex vector.
c
      implicit none

      integer n

      complex c(n)
      integer i
      integer k
      real r
      real r4_pi
      parameter ( r4_pi = 3.141592653589793E+00 )
      integer seed
      real theta

      if ( seed .eq. 0 ) then
        write ( *, '(a)' ) ' '
        write ( *, '(a)' ) 'C4VEC_UNIFORM_01 - Fatal errorc'
        write ( *, '(a)' ) '  Input value of SEED = 0.'
        stop
      end if

      do i = 1, n

        k = seed / 127773

        seed = 16807 * ( seed - k * 127773 ) - k * 2836

        if ( seed .lt. 0 ) then
          seed = seed + 2147483647
        end if

        r = sqrt ( real ( seed ) * 4.656612875E-10 )

        k = seed / 127773

        seed = 16807 * ( seed - k * 127773 ) - k * 2836

        if ( seed .lt. 0 ) then
          seed = seed + 2147483647
        end if

        theta = 2.0E+00 * r4_pi * ( real ( seed ) * 4.656612875E-10 )

        c(i) = r * cmplx ( cos ( theta ), sin ( theta ) )

      end do

      return
      end
      subroutine c4vec_unity ( n, a )

c*********************************************************************72
c
cc C4VEC_UNITY returns the N roots of unity.
c
c  Discussion:
c
c    A C4VEC is a vector of C4's
c
c    X(1:N) = exp ( 2 * PI * (0:N-1) / N )
c
c    X(1:N)**N = ( (1,0), (1,0), ..., (1,0) ).
c
c  Licensing:
c
c    This code is distributed under the GNU LGPL license. 
c
c  Modified:
c
c    13 December 2008
c
c  Author:
c
c    John Burkardt
c
c  Parameters:
c
c    Input, integer N, the number of elements of A.
c
c    Output, complex A(N), the N roots of unity.
c
      implicit none

      integer n

      complex a(n)
      integer i
      real r4_pi
      parameter ( r4_pi = 3.141592653589793E+00 )
      real theta

      do i = 1, n
        theta = r4_pi * real ( 2 * ( i - 1 ) ) / real ( n )
        a(i) = cmplx ( cos ( theta ), sin ( theta ) )
      end do

      return
      end
      subroutine cartesian_to_c4 ( x, y, z )

c*********************************************************************72
c
cc CARTESIAN_TO_C4 converts a Cartesian form to a C4.
c
c  Discussion:
c
c    A C4 is a complex value.
c
c  Licensing:
c
c    This code is distributed under the GNU LGPL license. 
c
c  Modified:
c
c    13 December 2008
c
c  Author:
c
c    John Burkardt
c
c  Parameters:
c
c    Input, real X, Y, the Cartesian form.
c
c    Output, complex Z, the complex number.
c
      implicit none

      real x
      real y
      complex z

      z = cmplx ( x, y )

      return
      end
      subroutine polar_to_c4 ( r, theta, z )

c*********************************************************************72
c
cc POLAR_TO_C4 converts a polar form to a C4.
c
c  Discussion:
c
c    A C4 is a complex value.
c
c  Licensing:
c
c    This code is distributed under the GNU LGPL license. 
c
c  Modified:
c
c    13 December 2008
c
c  Author:
c
c    John Burkardt
c
c  Parameters:
c
c    Input, real R, THETA, the polar form.
c
c    Output, complex Z, the complex number.
c
      implicit none

      real r
      real theta
      complex z

      z = r * cmplx ( cos ( theta ), sin ( theta ) )

      return
      end
      function r4_uniform_01 ( seed )

c*********************************************************************72
c
cc R8_UNIFORM_01 returns a unit pseudorandom R8.
c
c  Discussion:
c
c    This routine implements the recursion
c
c      seed = 16807 * seed mod ( 2**31 - 1 )
c      r4_uniform_01 = seed / ( 2**31 - 1 )
c
c    The integer arithmetic never requires more than 32 bits,
c    including a sign bit.
c
c    If the initial seed is 12345, then the first three computations are
c
c      Input     Output      R8_UNIFORM_01
c      SEED      SEED
c
c         12345   207482415  0.096616
c     207482415  1790989824  0.833995
c    1790989824  2035175616  0.947702
c
c  Licensing:
c
c    This code is distributed under the GNU LGPL license.
c
c  Modified:
c
c    13 December 2008
c
c  Author:
c
c    John Burkardt
c
c  Reference:
c
c    Paul Bratley, Bennett Fox, Linus Schrage,
c    A Guide to Simulation,
c    Springer Verlag, pages 201-202, 1983.
c
c    Pierre L'Ecuyer,
c    Random Number Generation,
c    in Handbook of Simulation,
c    edited by Jerry Banks,
c    Wiley Interscience, page 95, 1998.
c
c    Bennett Fox,
c    Algorithm 647:
c    Implementation and Relative Efficiency of Quasirandom
c    Sequence Generators,
c    ACM Transactions on Mathematical Software,
c    Volume 12, Number 4, pages 362-376, 1986.
c
c    Peter Lewis, Allen Goodman, James Miller,
c    A Pseudo-Random Number Generator for the System/360,
c    IBM Systems Journal,
c    Volume 8, pages 136-143, 1969.
c
c  Parameters:
c
c    Input/output, integer SEED, the "seed" value, which should NOT be 0.
c    On output, SEED has been updated.
c
c    Output, real R8_UNIFORM_01, a new pseudorandom variate,
c    strictly between 0 and 1.
c
      implicit none

      integer k
      real r4_uniform_01
      integer seed

      if ( seed .eq. 0 ) then
        write ( *, '(a)' ) ' '
        write ( *, '(a)' ) 'R8_UNIFORM_01 - Fatal error!'
        write ( *, '(a)' ) '  Input value of SEED = 0.'
        stop
      end if

      k = seed / 127773

      seed = 16807 * ( seed - k * 127773 ) - k * 2836

      if ( seed .lt. 0 ) then
        seed = seed + 2147483647
      end if
c
c  Although SEED can be represented exactly as a 32 bit integer,
c  it generally cannot be represented exactly as a 32 bit real numberc
c
      r4_uniform_01 = real ( seed ) * 4.656612875E-10

      return
      end
      subroutine sort_heap_external ( n, indx, i, j, isgn )

c*********************************************************************72
c
cc SORT_HEAP_EXTERNAL externally sorts a list of items into ascending order.
c
c  Discussion:
c
c    The actual list of data is not passed to the routine.  Hence this
c    routine may be used to sort integers, reals, numbers, names,
c    dates, shoe sizes, and so on.  After each call, the routine asks
c    the user to compare or interchange two items, until a special
c    return value signals that the sorting is completed.
c
c  Licensing:
c
c    This code is distributed under the GNU LGPL license.
c
c  Modified:
c
c    25 January 2007
c
c  Author:
c
c    Original FORTRAN77 version by Albert Nijenhuis, Herbert Wilf
c    This FORTRAN77 version by John Burkardt
c
c  Reference:
c
c    Albert Nijenhuis, Herbert Wilf,
c    Combinatorial Algorithms for Computers and Calculators,
c    Second Edition,
c    Academic Press, 1978,
c    ISBN: 0-12-519260-6,
c    LC: QA164.N54.
c
c  Parameters:
c
c    Input, integer N, the number of items to be sorted.
c
c    Input/output, integer INDX, the main communication signal.
c
c    The user must set INDX to 0 before the first call.
c    Thereafter, the user should not change the value of INDX until
c    the sorting is done.
c
c    On return, if INDX is
c
c      greater than 0,
c      * interchange items I and J;
c      * call again.
c
c      less than 0,
c      * compare items I and J;
c      * set ISGN = -1 if I .lt. J, ISGN = +1 if J .lt. I;
c      * call again.
c
c      equal to 0, the sorting is done.
c
c    Output, integer I, J, the indices of two items.
c    On return with INDX positive, elements I and J should be interchanged.
c    On return with INDX negative, elements I and J should be compared, and
c    the result reported in ISGN on the next call.
c
c    Input, integer ISGN, results of comparison of elements I and J.
c    (Used only when the previous call returned INDX less than 0).
c    ISGN .le. 0 means I is less than or equal to J;
c    0 .le. ISGN means I is greater than or equal to J.
c
      implicit none

      integer i
      integer i_save
      integer indx
      integer isgn
      integer j
      integer j_save
      integer k
      integer k1
      integer n
      integer n1

      save i_save
      save j_save
      save k
      save k1
      save n1

      data i_save / 0 /
      data j_save / 0 /
      data k / 0 /
      data k1 / 0 /
      data n1 / 0 /
c
c  INDX = 0: This is the first call.
c
      if ( indx .eq. 0 ) then

        i_save = 0
        j_save = 0
        k = n / 2
        k1 = k
        n1 = n
c
c  INDX .lt. 0: The user is returning the results of a comparison.
c
      else if ( indx .lt. 0 ) then

        if ( indx .eq. -2 ) then

          if ( isgn .lt. 0 ) then
            i_save = i_save + 1
          end if

          j_save = k1
          k1 = i_save
          indx = -1
          i = i_save
          j = j_save
          return

        end if

        if ( 0 .lt. isgn ) then
          indx = 2
          i = i_save
          j = j_save
          return
        end if

        if ( k .le. 1 ) then

          if ( n1 .eq. 1 ) then
            i_save = 0
            j_save = 0
            indx = 0
          else
            i_save = n1
            n1 = n1 - 1
            j_save = 1
            indx = 1
          end if

          i = i_save
          j = j_save
          return

        end if

        k = k - 1
        k1 = k
c
c  0 .lt. INDX, the user was asked to make an interchange.
c
      else if ( indx .eq. 1 ) then

        k1 = k

      end if

10    continue

        i_save = 2 * k1

        if ( i_save .eq. n1 ) then
          j_save = k1
          k1 = i_save
          indx = -1
          i = i_save
          j = j_save
          return
        else if ( i_save .le. n1 ) then
          j_save = i_save + 1
          indx = -2
          i = i_save
          j = j_save
          return
        end if

        if ( k .le. 1 ) then
          go to 20
        end if

        k = k - 1
        k1 = k

      go to 10

20    continue

      if ( n1 .eq. 1 ) then
        i_save = 0
        j_save = 0
        indx = 0
        i = i_save
        j = j_save
      else
        i_save = n1
        n1 = n1 - 1
        j_save = 1
        indx = 1
        i = i_save
        j = j_save
      end if

      return
      end
      subroutine timestamp ( )

c*********************************************************************72
c
cc TIMESTAMP prints out the current YMDHMS date as a timestamp.
c
c  Discussion:
c
c    This FORTRAN77 version is made available for cases where the
c    FORTRAN90 version cannot be used.
c
c  Licensing:
c
c    This code is distributed under the GNU LGPL license.
c
c  Modified:
c
c    12 January 2007
c
c  Author:
c
c    John Burkardt
c
c  Parameters:
c
c    None
c
      implicit none

      character * ( 8 ) ampm
      integer d
      character * ( 8 ) date
      integer h
      integer m
      integer mm
      character * ( 9 ) month(12)
      integer n
      integer s
      character * ( 10 ) time
      integer y

      save month

      data month /
     &  'January  ', 'February ', 'March    ', 'April    ', 
     &  'May      ', 'June     ', 'July     ', 'August   ', 
     &  'September', 'October  ', 'November ', 'December ' /

      call date_and_time ( date, time )

      read ( date, '(i4,i2,i2)' ) y, m, d
      read ( time, '(i2,i2,i2,1x,i3)' ) h, n, s, mm

      if ( h .lt. 12 ) then
        ampm = 'AM'
      else if ( h .eq. 12 ) then
        if ( n .eq. 0 .and. s .eq. 0 ) then
          ampm = 'Noon'
        else
          ampm = 'PM'
        end if
      else
        h = h - 12
        if ( h .lt. 12 ) then
          ampm = 'PM'
        else if ( h .eq. 12 ) then
          if ( n .eq. 0 .and. s .eq. 0 ) then
            ampm = 'Midnight'
          else
            ampm = 'AM'
          end if
        end if
      end if

      write ( *, 
     &  '(i2,1x,a,1x,i4,2x,i2,a1,i2.2,a1,i2.2,a1,i3.3,1x,a)' ) 
     &  d, month(m), y, h, ':', n, ':', s, '.', mm, ampm

      return
      end
