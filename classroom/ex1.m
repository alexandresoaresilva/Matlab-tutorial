u = [1 2 3];
v = [3 2 1];
%% element wise operations
u_plus_v = u + v

u_i_times_v_i = u .* v

u_i_div_by_v_i = u ./ v
% result is 3x3 matrix
dot_prod = u' * v

M = [u; v; 2*v]

%should give you v, but instead returns a scaled version of it
u_i_times_v_i\u

%should give you u, but instead returns a scaled version of it
u_i_times_v_i\v