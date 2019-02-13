kong1 = 'Please enter the bone file name(as:LArm_char00.calc):';
kong2 = 'please enter the bone index:';
bone_file = input(kong1,'s');
bone_index = input(kong2);

fid= fopen(bone_file,'r');
bone_num=cell2mat(textscan(fid,'','headerlines',6));
bi1= (bone_index-1)*16+1;%bix:该骨头的第X个值
bone=bone_num(:,bi1:bi1+15);%右臂所有值
%数据的默认尾值
last = size(bone);
bone(last(:,1)-2,:)=9999;
