
clear all;
close all;
clc;
image_array = dir('emotions/Neutral/*.png');
L=length(image_array)


for i = 1:L
    disp(i)
    disp(image_array(i).name);
    str = strcat('emotions/Neutral/',image_array(i).name);
    I =imread(str);
    I_res = imresize(I,[227,227]);
    imwrite(I_res,str)
end

image_array = dir('emotions/Sad/*.png');
L=length(image_array)


for i = 1:L
    disp(i)
    disp(image_array(i).name);
    str = strcat('emotions/Sad/',image_array(i).name);
    I =imread(str);
    I_res = imresize(I,[227,227]);
    imwrite(I_res,str)
end

image_array = dir('emotions/Surprise/*.png');
L=length(image_array)


for i = 1:L
    disp(i)
    disp(image_array(i).name);
    str = strcat('emotions/Surprise/',image_array(i).name);
    I =imread(str);
    I_res = imresize(I,[227,227]);
    imwrite(I_res,str)
end
 
