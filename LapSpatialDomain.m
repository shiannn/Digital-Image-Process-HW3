img = imread("barbara.tif");
td = 1;
lr = 1;
[m,n] = size(img);
NewImg = zeros(m,n);
Paddledimg = [zeros(size(img,1),lr),img,zeros(size(img,1),lr)];
Paddledimg = [zeros(td,size(Paddledimg,2));Paddledimg;zeros(td,size(Paddledimg,2))];
H1 = [1,1,1;1,-8,1;1,1,1];
H2 = [0,-1,0;-1,4,-1; 0,-1,0];

op = input('1:H1 2:H2') 

if(op==1)
    H = H1;
elseif(op==2)
    H = H2;
end
%img = imgaussfilt(img,1);
G = conv2(H,img,'full');

if(op==1)
    imwrite(G,"H1_Spatial.png");
elseif(op==2)
    imwrite(G,"H2_Spatial.png");
end

figure; 
imshow(G)
figure;
imshow(Paddledimg)
I = (Paddledimg-0.25*uint8(255*G));
figure; 
imshow(I)