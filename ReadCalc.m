kong1 = 'Please enter the bone file name(as:LArm_char00.calc):';
kong2 = 'please enter the bone index:';
bone_file = input(kong1,'s');
bone_index = input(kong2);

fid= fopen(bone_file,'r');
bone_num=cell2mat(textscan(fid,'','headerlines',6));
bi1= (bone_index-1)*16+1;%bix:�ù�ͷ�ĵ�X��ֵ
bone=bone_num(:,bi1:bi1+15);%�ұ�����ֵ
%���ݵ�Ĭ��βֵ
last = size(bone);
bone(last(:,1)-2,:)=9999;
