function I = linearFilter(I)
%F- filter of size (2K+1)x(2L+1)
    if (length(size(I)) == 3)
      I = rgb2gray(I);
    end
    [M,N]=size(I);
    [k,l] = size(F); %filter size
    
    K = (k-1)/2;
    L = (l-1)/2;
    J = I; %obtain a copy of I
    for x=(K+1):(M-L)
        for y = (L+1):(N-L)
            S = 0;
            for i =-K:K
                for j= -L:L
                     p=j(x+i,y+j)*F(K+i+1,L+j+1);
                     S=S+uint32(P);
                end
                     