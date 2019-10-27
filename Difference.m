SpH1 = imread('H1_Spatial.png');
SpH2 = imread('H2_Spatial.png');
FrH1 = imread('H1_Frequency.png');
FrH2 = imread('H2_Frequency.png');

size(SpH1)
size(SpH2)
size(FrH1)
size(FrH2)

H1_Spatial_Frequency_Difference = SpH1-FrH1;
figure
imshow(H1_Spatial_Frequency_Difference)
imwrite(H1_Spatial_Frequency_Difference,"H1_Difference.png");
H2_Spatial_Frequency_Difference = SpH2-FrH2;
figure
imshow(H2_Spatial_Frequency_Difference)
imwrite(H2_Spatial_Frequency_Difference,"H2_Difference.png");