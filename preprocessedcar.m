ctr=0;
for i= 1: 499
a=imread(['E:\major\CarData\CarData\TrainImages\neg-' num2str(i) '.pgm']);
g=[1 1 1;1 1 1;1 1 1]*(1\9);
l=[-1 -1 -1;-1 8 -1;-1 -1 -1];
h=[-1 -1 -1;2 2 2;-1 -1 -1];
v=[-1 2 -1;-1 2 -1;-1 2 -1];
% agray=rgb2gray(a);
agray=a;
H = fspecial('disk',30);
b = imfilter(agray,H,'replicate');
DH3=imfilter(b,l);
c=agray-b;
% BW = edge(agray,'canny');
[m n]= size(c);
for i=1:m
    for j=1:n
        if c(i,j)>0
            cgray(i,j)=1;
        else
            cgray(i,j)=0;
        end
    end
end
imshow(cgray)
img= imresize(c, [40 100]);

z1= img(:);
z=z1';
 if(ctr==0)
   save('C:\Users\yatharth\Desktop\majorimage\majort2\carnegpre.mat','z'); 
   ctr=1;
  else
      [in]=load('C:\Users\yatharth\Desktop\majorimage\majort2\carnegpre.mat','z');
               in=[in.z; z];
               z=in;
             save( 'C:\Users\yatharth\Desktop\majorimage\majort2\carnegpre.mat','z'); 
end
end
 

