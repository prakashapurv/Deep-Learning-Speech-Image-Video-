outputVideo = avifile('E:\major\Result\ship\test5.avi','compression','None');
videoObject = mmreader('E:\keyframe\EXE\shiwmv.wmv');
numFrames = videoObject.NumberOfFrames;
Y=[];
frame1=0;
noframe=0;
INDEX=[];
detail=[];
secmax=[];
% t1=imageData(:,:,1,5);
% t2=imageData(:,:,2,5);
% t3=imageData(:,:,3,5);
%  im = uint8(cat(3,t1,t2,t3));
%  imshow(im)
image = [];
% for i=1 : 50
   countauto=0; 
     counth1=0;
     counth2=0;
     counth3=0;
     counth4=0;
     counth5=0;
     counth6=0;
     counth7=0;
     counth8=0;
     counth9=0;
     counth10=0;
     counth=0;
   
     
     scounth1=0;
     scounth2=0;
     scounth3=0;
     scounth4=0;
     scounth5=0;
     scounth6=0;
     scounth7=0;
     scounth8=0;
     scounth9=0;
     scounth10=0;
     scounth=0;
     
     
     countair=0;
imageData = read(videoObject,[1 400]);
zmx=[];
for U=1:400
a=imageData(:,:,:,U);
size(a);
% crop1=imcrop(a,[225 225 23 23]);
 im=imresize(a, [32 32]);
% imshow(a)

im3 = rgb2gray(im);
im2=im3;

% imshow(a)
z=[]; 
V=[];

% imshow(crop1)
for i=1:32
   z= [z im2(i,:)];
 end
  z=z/255;
  

load mnistclassify_weights(5ob) w1 w2 w3 w_class;

w1t=w1;
w2t=w2;
w3t=w3;
w_classt =w_class;
   testbatchdata=z;

   data = testbatchdata(:,:);
   data = [data ones(1,1)];
 
   w1probs = 1./(1 + exp(-double(data)*double(w1t))); w1probs = [w1probs  ones(1,1)];
   w2probs = 1./(1 + exp(-w1probs*w2t)); w2probs = [w2probs ones(1,1)];
   w3probs = 1./(1 + exp(-w2probs*w3t)); w3probs = [w3probs  ones(1,1)];
   targetout = exp(w3probs*w_classt);
   targetout = targetout./repmat(sum(targetout,2),1,10);
   [I J]=max(targetout,[],2);
   
  SecondMax = max(targetout(targetout<max(targetout)));
INDEX=[INDEX find(targetout==SecondMax)];
if I>0.8
   Y=[Y J];
   frame1=frame1+1;
else
    noframe=noframe+1;
end
   V=[V;targetout];
   
end

% if (J==1)
%        disp('airplane');
%        
%    elseif (J==2)
%        disp('car');
%        
%        
%    elseif (J==3)
%        disp('bird');
%        
%        
%    elseif (J==4)
%        disp('cat');
% %          counth=counth+1;
%        
%    elseif (J==5)
%        disp('deer');
% %          counth=counth+1;
%        
%    elseif (J==6)
%        disp('dog');
% %          counth=counth+1;
%        
%    elseif (J==7)
%        disp('frog');
% %          counth=counth+1;
%           
%    elseif (J==8)
%        disp('horse');
% %        counth=counth+1;
%        
%    elseif (J==9)
%       disp('ship');
%        
%               
%    elseif (J==10)
%        disp('truck');
%               
%    
%    end
   
     Y;
     V;
     INDEX;
  counth10=counth+length(find(Y==10));   
  counth9=counth+length(find(Y==9));   
 counth8=counth+length(find(Y==8));
 counth7=counth+length(find(Y==7));
counth6=counth+length(find(Y==6));
counth5=counth+length(find(Y==5));
counth4=counth+length(find(Y==4));
counth3=counth+length(find(Y==3));
counth2=counth+length(find(Y==2));
counth1=counth+length(find(Y==1));

 scounth10=counth+length(find(INDEX==10));   
  scounth9=counth+length(find(INDEX==9));   
 scounth8=counth+length(find(INDEX==8));
 scounth7=counth+length(find(INDEX==7));
scounth6=counth+length(find(INDEX==6));
scounth5=counth+length(find(INDEX==5));
scounth4=counth+length(find(INDEX==4));
scounth3=counth+length(find(INDEX==3));
scounth2=counth+length(find(INDEX==2));
scounth1=counth+length(find(INDEX==1));



finalar=[];
finalar = [ counth1 counth2 counth3 counth4 counth5 counth6 counth7 counth8 counth9 counth10]
finalar2 = [ counth1+scounth1 counth2+scounth2 counth3+scounth3 counth4+scounth4 counth5+scounth5 counth6+scounth6 counth7+scounth7 counth8+scounth8 counth9+scounth9 counth10+scounth10 ]
[maxin maxel]=max(finalar,[],2)

if maxel==1
    msgbox('The video is tagged as - plane');
elseif maxel==2
    msgbox('The video is tagged as - car');

elseif maxel==3
    msgbox('The video is tagged as - bird');
    
    elseif maxel==4
   msgbox('The video is tagged as - cat');
    elseif maxel==5
    msgbox('The video is tagged as - deer');
    elseif maxel==6
    msgbox('The video is tagged as - dog');
    
    elseif maxel==7
    msgbox('The video is tagged as - frog');
    elseif maxel==8
    msgbox('The video is tagged as - horse');
    elseif maxel==9
        
%         movefile('E:\keyframe\EXE\shiwmv.wmv','E:\major\Result\ship\');
    msgbox('The video is tagged as - ship');
    elseif maxel==10
    msgbox('The video is tagged as - truck');
end


% frame1
%  noframe



