clear all;
close all;
clc;
image_array = dir('emotions/other/*.jpg');
L=length(image_array);
for i = 1:L
    disp(i)
    disp(image_array(i).name);
    str = strcat('emotions/other/',image_array(i).name);
    I =imread(str);
    if(size(I,3)==3)
        I = rgb2gray(I);
    end
    I_res = cat(3,I,I,I);
    imwrite(I_res,str)
end