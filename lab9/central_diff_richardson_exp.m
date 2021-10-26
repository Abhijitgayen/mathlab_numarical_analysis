function [Res] = central_diff_richardson_exp(fn,x,h,eps_step)
Res(1, 1) = (fn(x + h) - fn(x - h))/(2*h);
for it=1:20
   h = h/2;
   Res(it + 1, 1) = (fn(x + h) - fn(x - h))/(2*h);
   for j=1:it
      Res(it + 1, j + 1) = (4^j*Res(it  + 1, j) - Res(it, j))/(4^j - 1);
   end
   if ( abs( Res(it + 1, it + 1) - Res(it, it) ) < eps_step )
      break;
   elseif ( it == 20 )
      fprintf( 'Richardson extrapolation failed here\ns' );
   end
end
end

