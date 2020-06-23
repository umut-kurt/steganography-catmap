% Steganography with CatMap
% Create by Umut on 2017

% files
newImage=imread('NewImage.bmp');
load TextLength.mat
ne=zeros(textLength,1);

% catmap
[x,y]=catmap();

dimension1=size(newImage,1);
dimension2=size(newImage,2);
dimension3=size(newImage,3);
count=1;
for k=1:dimension3
    for j=1:dimension1
        for i=1:dimension2           
            if (count<=textLength)
                img=mod(newImage(x(count),y(count),k),2);
                if(img==newBin(count))
                    if(img==1)
                        ne(count)=1;
                    else
                        ne(count)=0;
                    end
                end
            end
            count=count+1;                    
        end
    end
end

bin=reshape(ne,8,[]);
bind=[128 64 32 16 8 4 2 1];
textString=char(bind*bin);
disp(textString);