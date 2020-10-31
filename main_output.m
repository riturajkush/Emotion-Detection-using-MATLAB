load('model_data')
camera = webcam;
while true
    I=camera.snapshot();
    Im = preprocess(I);
    Im=predicts(Im);
    classify(myNet,Im);
    %[Y_pred, str] = classify(myNet,Im);
    
    imshow(I);
    label = char(str(1));
    %label = char(str);
    disp(label);
    title(label);
  
end
clear camera