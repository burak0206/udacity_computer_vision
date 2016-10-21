im = imread('peppers.png');
imgreen =im(:,:,2);
imshow(imgreen);
% x,y
line([1 512],[256 256],'color','r');

%plot(imgreen(:,256));
% row(y), column(x)
%imshow(imgreen(256,:));

img = imread('peppers.png');

disp(size(img)); % 320 500
disp(class(img)); % uint8

%row,col
disp(img(50,100));

plot(img(50,:));

%crop

image = imread('peppers.png');

imshow(image);

cropped = image(110:310, 10:160);
imshow(cropped);

img_red = image(:,:,1);
imshow(img_red);

plot(img_red(150,:));



%more bright
summed = img(:,:,3) + img_red;

summed2 = img(:,:,3)/2+ img_red/2;

summed3 = (img(:,:,3)+ img_red)/2;

imshow(summed);
%add tow images

% Blend two images
function output = blend(a, b, alpha)
    % TODO: Your code here; finally assign: output = <something>;
    output = a*alpha + b*(1-alpha);
endfunction

% Test code:
dolphin = imread('dolphin.png');
bicycle = imread('bicycle.png');

result = blend(dolphin, bicycle, 0.75);
imshow(result); % note: will result in an error if blend() returns empty or incorrect value

