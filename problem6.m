A=toeplitz([1,-1,0,0],[1,0,0]);
[U,S,V] =svds(A);
disp(rank(A));
disp(U);
disp(S);
disp(V);


