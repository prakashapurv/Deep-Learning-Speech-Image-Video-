ctr=0;
for i= 1: 549
a= imread(['E:\major\CarData\CarData\TrainImages\pos-' num2str(i) '.pgm']);
% img= imresize(a, [28 28]);
img=a;
z1= img(:);
z=z1';

  
  if(ctr==0)
   save('C:\Users\yatharth\Desktop\majorimage\majort2\carpos40X100.mat','z'); 
   ctr=1;
  else
      [in]=load('C:\Users\yatharth\Desktop\majorimage\majort2\carpos40X100.mat','z');
               in=[in.z; z];
               z=in;
             save( 'C:\Users\yatharth\Desktop\majorimage\majort2\carpos40X100.mat','z'); 
end
end