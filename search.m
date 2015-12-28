frame1=[];
 frame12=[];
 filename=[];
% answer = inputdlg(prompt);
% C = strsplit(answer,'\t')
   r=regexp(answer,' ','split')
% C=split(answer, ' ')
[m1 n1] = size(r)
for i=1:n1
    answer1=r(1,i)
load 'C:\Users\yatharth\Desktop\data.mat'
[m n] =size(details);

for i=1:m
J=details{i,3};
if (J==1)
%        disp('airplane');
       object='airplane';
   elseif (J==2)
%        disp('car');
       object='car';
       
   elseif (J==3)
%        disp('bird');
       object='bird';
       
   elseif (J==4)
%        disp('cat');
        object='cat';
       
   elseif (J==5)
%        disp('deer');
         object='deer';
       
   elseif (J==6)
%        disp('dog');
object='dog';

      
   elseif (J==7)
%        disp('frog');
      object='frog';        
   elseif (J==8)
%        disp('horse');
      object='horse';
       
   elseif (J==9)
%       disp('ship');
       object='ship';
              
   elseif (J==10)
%        disp('truck');
              object='truck';
             
end
if (strcmp(object,answer1))
   var=[details{i,1} ' ' num2str(details{i,2})];
%    celvar=strvcat(var);
   frame1=strvcat(frame1,var)
%     frame1=[frame1 ;var];
end
end
end
frame12
filename
frame1

setappdata(0,'frame1',frame1);


