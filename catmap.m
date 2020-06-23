function [ icord,jcord ] = catmap( ~ )
% catmap
% image file - must be height=width
im = imread('image.bmp');
N = size(im,2);

p = 2; % int by user
q = 2; % int by user

icord = zeros();
jcord = zeros();
it=1;
for i=1:N
    for j=1:N
       newi = mod(((i-1) + p*(j-1)),N)+1;     % get new i coord 
       newj = mod((q*(i-1) + (p*q+1)*(j-1)),N)+1; % get new j coord 
       
       icord(it) = newi;
       jcord(it) = newj;
       it = it+1;
       
    end
end
end

