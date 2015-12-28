

im=imread('E:\major\epfl_gims08\epfl-gims08\tripod-seq\tripod_seq_01_001.jpg');

% im=im3';
im3 = rgb2gray(im);

im2= imresize(im3, [40 100]);
imshow(im2)
% im2=im;
z=[]; 
for i=1:40
   z= [z im2(i,:)];
 end
 z=z/255;
  
  
load mnistclassify_weights w1 w2 w3 w_class;

w1t=w1;
w2t=w2;
w3t=w3;
w_classt =w_class;
   testbatchdata=z;

   data = testbatchdata(:,:);
   data = [data ones(1,1)];
 size(w_class)
 size(w1)
 size(data)
   w1probs = 1./(1 + exp(-double(data)*double(w1t))); w1probs = [w1probs  ones(1,1)];
   w2probs = 1./(1 + exp(-w1probs*w2t)); w2probs = [w2probs ones(1,1)];
   w3probs = 1./(1 + exp(-w2probs*w3t)); w3probs = [w3probs  ones(1,1)];
   targetout = exp(w3probs*w_classt);
   targetout = targetout./repmat(sum(targetout,2),1,2);
   [I J]=max(targetout,[],2)
   
   
   if (J==1)
       disp('airplane');
       
   elseif (J==2)
       disp('car');
       
       
   elseif (J==3)
       disp('bird');
       
       
   elseif (J==4)
       disp('cat');
       
       
   elseif (J==5)
       disp('deer');
       
       
   elseif (J==6)
       disp('dog');
       
       
   elseif (J==7)
       disp('frog');
       
          
   elseif (J==8)
       disp('horse');
       
       
   elseif (J==9)
       disp('ship');
       
       
        elseif (J==10)
       disp('truck');
       
   
   end
    
    

     
    
 