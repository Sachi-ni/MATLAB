function I = alphaBlend(IFG,IBG,a)
if length(size(IFG)) == 3
  IFG = rgb2gray(IFG);
end
if length(size(IBG)) == 3
  IBG = rgb2gray(IBG);
end
[r,c] = size(IBG);
I = IBG;
for i = 1:r
  for j =1:c
    I(i,j) = a*IFG(i,j) + (1-a)*IBG(i,j);
  end
end
