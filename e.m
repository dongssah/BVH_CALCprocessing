kong1 = '60cc_Char00.calc';
kong2 = 'please enter the bone index:';
bone_file =kong1;
bone_index = input(kong2);

fid= fopen(bone_file,'r');
c=cell2mat(textscan(fid,'','headerlines',6));
bi1= (bone_index-1)*16+1;%bix:�ù�ͷ�ĵ�X��ֵ
bone=c(:,bi1:bi1+15);%�ұ�����ֵ
%���ݵ�Ĭ��βֵ
%last = size(bone);
%bone(last(:,1)-2,:)=9999;
plot3(bone(:,1),bone(:,2),bone(:,3))