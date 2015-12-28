train_data=[];
temp_target =[];
target=[];
temp_data=[];
temp_data2=[];
% % load C:\Users\yatharth\Desktop\majorimage\cifar-10-matlab\cifar-10-batches-mat\test_batch
load C:\Users\yatharth\Desktop\majorimage\cifar-10-matlab\cifar-10-batches-mat\data_batch_1;
train_data=[train_data; data];
temp_target = [temp_target ;labels];

% % load C:\Users\yatharth\Desktop\majorimage\cifar-10-matlab\cifar-10-batches-mat\data_batch_2;
% % train_data=[train_data; data];
% % temp_target = [temp_target ;labels];
% % load C:\Users\yatharth\Desktop\majorimage\cifar-10-matlab\cifar-10-batches-mat\data_batch_3;
% % train_data=[train_data; data];
% % temp_target = [temp_target ;labels];
% % load C:\Users\yatharth\Desktop\majorimage\cifar-10-matlab\cifar-10-batches-mat\data_batch_4;
% % train_data=[train_data; data];
% % temp_target = [temp_target ;labels];
% % load C:\Users\yatharth\Desktop\majorimage\cifar-10-matlab\cifar-10-batches-mat\data_batch_5;
% % train_data=[train_data; data];
% % temp_target = [temp_target ;labels];
image2=train_data(1:1000,1:3072);
train_data=image2;
data=[];
r=[];g=[];b=[];z=[];image=[];
a=0;
 for i=1:size(train_data)
temp_data(:,:)=train_data(i,:);
temp_data2=reshape(temp_data,32,32,3);
t1=temp_data2(:,:,1)';
t2=temp_data2(:,:,2)';
t3=temp_data2(:,:,3)';
im = uint8(cat(3,t1,t2,t3));
% % im2 = rgb2gray(im);

%  imwrite(im,['C:\Users\yatharth\Desktop\majorimage\im' num2str(a) '.jpeg']);
% a=a+1;
z=[]; 
for i=1:32
     
      z= [z im2(i,:)];
 end

  image=[image;z];
 end


% % % save( 'C:\Users\yatharth\Desktop\majorimage\cifar-10-matlab\cifar-10-batches-mat\test10000','image'); 
% % % save( 'C:\Users\yatharth\Desktop\majorimage\cifar-10-matlab\cifar-10-batches-mat\target10000','temp_target'); 
% % 
% % % % temp_target=[];
% % % % target=[]
% % % % load C:\Users\yatharth\Desktop\quality\targets
% % % %  train_data=[train_data; data];
% % % %  temp_target = [temp_target ;targets];
% % 
% % 
% % for i=1:size(temp_target)
% % 
% %  if(temp_target(i,1) == 0)
% %     target= [target; [1 0 0 0 0 0 0 0 0 0]];
% % 
% %  elseif(temp_target(i,1) == 1)
% %      target= [target; [0 1 0 0 0 0 0 0 0 0 ]];
% %  elseif(temp_target(i,1) == 2)
% %      target= [target; [0 0 1 0 0 0 0 0 0 0]];
% %  elseif(temp_target(i,1) == 3)
% %     target= [target; [0 0 0 1 0 0 0 0 0 0]];
% %  elseif(temp_target(i,1) == 4)
% %      target= [target; [0 0 0 0 1 0 0 0 0 0 ]];
% %  elseif(temp_target(i,1) == 5)
% %      target= [target; [0 0 0 0 0 1 0 0 0 0]];
% %  elseif(temp_target(i,1) == 6)
% %      target= [target; [0 0 0 0 0 0 1 0 0 0]];
% %  elseif(temp_target(i,1) == 7)
% %      target=[target;  [0 0 0 0 0 0 0 1 0 0]];
% %  elseif(temp_target(i,1) == 8)
% %     target= [target; [0 0 0 0 0 0 0 0 1 0]];
% %  elseif(temp_target(i,1) == 9)
% %      target= [target; [0 0 0 0 0 0 0 0 0 1]];
% % end
% %  
% % end
% % save( 'C:\Users\yatharth\Desktop\majorimage\cifar-10-matlab\cifar-10-batches-mat\target10000','target'); 
% % % % size(target)
% % % % 
