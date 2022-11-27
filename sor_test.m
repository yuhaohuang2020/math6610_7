function sor_test ( )

%*****************************************************************************80
%
%% sor_test() tests sor().
%
%  Licensing:
%
%    This code is distributed under the GNU LGPL license.
%
%  Modified:
%
%    25 March 2019
%
%  Author:
%
%    John Burkardt
%
  addpath ( '../sor' );

  timestamp ( );
  fprintf ( 1, '\n' );
  fprintf ( 1, 'sor_test():\n' );
  fprintf ( 1, '  MATLAB/Octave version %s\n', version ( ) );
  fprintf ( 1, '  Test sor().\n' );

  w = 0.5;
  sor_test01 ( w );
  pause ( 5 )

  w = 1.0;
  sor_test01 ( w );
  pause ( 5 )

  w = 1.5;
  sor_test01 ( w );
%
%  Terminate.
%
  fprintf ( 1, '\n' );
  fprintf ( 1, 'sor_test():\n' );
  fprintf ( 1, '  Normal end of execution.\n' );
  fprintf ( 1, '\n' );
  timestamp ( );

  rmpath ( '../sor' );

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

