function gauss_seidel_test ( )

%*****************************************************************************80
%
%% gauss_seidel_test() tests gauss_seidel().
%
%  Licensing:
%
%    This code is distributed under the GNU LGPL license.
%
%  Modified:
%
%    23 January 2019
%
%  Author:
%
%    John Burkardt
%
  addpath ( '../gauss_seidel' );

  timestamp ( );
  fprintf ( 1, '\n' );
  fprintf ( 1, 'gauss_seidel_test():\n' );
  fprintf ( 1, '  MATLAB/Octave version %s\n', version ( ) );
  fprintf ( 1, '  Test gauss_seidel().\n' );

  gauss_seidel_test01 ( );
  gauss_seidel_test02 ( );
%
%  Terminate.
%
  fprintf ( 1, '\n' );
  fprintf ( 1, 'gauss_seidel_test():\n' );
  fprintf ( 1, '  Normal end of execution.\n' );
  fprintf ( 1, '\n' );
  timestamp ( );

  rmpath ( '../gauss_seidel' );

  return
end
function timestamp ( )

%*****************************************************************************80
%
%% timestamp() prints the current YMDHMS date as a timestamp.
%
%  Licensing:
%
%    This code is distributed under the GNU LGPL license.
%
%  Modified:
%
%    14 February 2003
%
%  Author:
%
%    John Burkardt
%
  t = now;
  c = datevec ( t );
  s = datestr ( c, 0 );
  fprintf ( 1, '%s\n', s );

  return
end

