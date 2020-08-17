A = [1,0,0;0,1,0;0,0,1];
assert(isdiag(A));

B = [1,1,1;0,1,1;0,0,1];
C = [1,0,0;1,1,0;1,1,1];
assert(istriu(B));
assert(~istril(B));
assert(istril(C));
assert(~istriu(C));

D = [3,1,1;1,3,1;1,1,3];
assert(is_dominant(D));

E = [1,1,1,1,1,1,1,1];
assert(is_square(A));
assert(is_square(B));
assert(is_square(C));
assert(is_square(D));
assert(~is_square(E));

F_a = [1,2,3;4,5,6;7,8,9];
F_b = [1,2,3];
[F_a, F_b] = simplify(F_a, F_b);
assert(all(all(F_a == [1,2,3;4/5,1,6/5;7/9,8/9,1])));
assert(all(all(F_b == [1,2/5,1/3])));

G_a = [1,0,0;2,1,0;3,2,1];
G_b = [1,2,3];
assert(all(all(subst_lower(G_a, G_b) == [1, 0, 0])));

H_a = [1,2,3;0,1,2;0,0,1];
H_b = [3,2,1];
assert(all(all(subst_upper(H_a, H_b) == [0, 0, 1])));

I_a = [9,1,1;1,9,1;1,1,9];
[I_L, I_U] = subst_lu(I_a);
assert(all(all(I_L == [1,0,0;1/9,1,0;1/9,1/9,1])));
assert(all(all(I_L == [1,0,0;1/9,1,0;1/9,1/9,1])));

I_b = [1,2,3];
I_y = subst_upper(I_U, I_b);
I_x = subst_lower(I_L, I_y);
% i stopped caring here