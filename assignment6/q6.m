img1=double(imread('rice.png'));
img1=mat2gray(img1);
imshow(img1)
title('original image');
scale=2;
[rows,cols]=size(img1); 
nrows=round(rows.*scale);
ncols=round(cols.*scale); 
[x,y]=meshgrid(1:rows,1:cols); 
xx=linspace(1,rows,nrows); 
yy=linspace(1,cols,ncols); 
[xnew,ynew]=meshgrid(xx,yy); 
img1_spline=interp2(x,y,img1,xnew,ynew,'spline');
img1_bilinear=interp2(x,y,img1,xnew,ynew,'linear');
img1_nearest=interp2(x,y,img1,xnew,ynew,'nearest');
figure; imshow(img1_spline) 
title ('spline');
figure; imshow(img1_bilinear) 
title ('bilinear');
figure; imshow(img1_nearest) 
title ('nearest neighbour');