img = imread("barbara.tif");
td = 2;
lr = 2;
[m,n] = size(img);
NewImg = zeros(m,n);
Paddledimg = [zeros(size(img,1),lr),img,zeros(size(img,1),lr)];
Paddledimg = [zeros(td,size(Paddledimg,2));Paddledimg;zeros(td,size(Paddledimg,2))];
H1 = [1,1,1;1,-8,1;1,1,1];
H2 = [0,-1,0;-1,4,-1;0,-1,0];
G = conv2(H1,img,'full');
figure; 
imshow(G)