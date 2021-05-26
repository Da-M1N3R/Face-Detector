%img = imread('kungfuman_face.jpg');
img = imread('young-person.jpg');
%img = imread('Yu-Yu-Hakusho.jpg');
[width, height] = size(img);

if width > 320
    img = imresize(img, [320 NaN]);
end

face_detector = vision.CascadeObjectDetector();

detected_location = step(face_detector, img);

detected_face = insertShape(img, 'Rectangle', detected_location);

figure;
imshow(detected_face);
title('Face Detected');
