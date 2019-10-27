img = imread("barbara.tif");
td = 1;
lr = 1;
[m,n] = size(img);
NewImg = zeros(m,n);
Paddledimg = [zeros(size(img,1),lr),img,zeros(size(img,1),lr)];
Paddledimg = [zeros(td,size(Paddledimg,2));Paddledimg;zeros(td,size(Paddledimg,2))];
fftImage = fft2(double(img),size(Paddledimg,1),size(Paddledimg,2));
H1 = [1,1,1;1,-8,1;1,1,1];
H2 = [0,-1,0;-1,4,-1;0,-1,0];
op = input('1:H1 2:H2') 

if(op==1)
    H = H1;
elseif(op==2)
    H = H2;
end

fftH=fft2(double(H),size(Paddledimg,1),size(Paddledimg,2));
G = fftImage .* fftH;
g=real(ifft2(G));

if(op==1)
    imwrite(g,"H1_Frequency.png");
elseif(op==2)
    imwrite(g,"H2_Frequency.png");
end

figure;
imshow(g);
I = Paddledimg + 0.15*uint8(255.*g);
figure;
imshow(I);