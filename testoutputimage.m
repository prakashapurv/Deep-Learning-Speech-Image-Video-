im=imread(imvalue);

im2 = rgb2gray(im);
z=[]; 
for i=1:32
   z= [z im2(i,:)];
 end
 z=z/255;
  
  
load mnistclassify_weights1 w1 w2 w3 w_class;
% size(w1t)
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
   [I J]=max(targetout,[],2)
   
   
   if (J==1)
       msgbox('airplane');
       
   elseif (J==2)
       msgbox('car');
       
       
   elseif (J==3)
       msgbox('bird');
       
       
   elseif (J==4)
       msgbox('cat');
       
       
   elseif (J==5)
       msgbox('deer');
       
       
   elseif (J==6)
       msgbox('dog');
       
       
   elseif (J==7)
       msgbox('frog');
       
          
   elseif (J==8)
       msgbox('horse');
       
       
   elseif (J==9)
       msgbox('ship');
       
       
        elseif (J==10)
       msgbox('truck');
       
   
   end
    
    

     
    
 
