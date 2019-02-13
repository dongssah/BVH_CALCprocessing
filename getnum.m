function [bone_name,bone] = getnum(bone_file,bone_index)
%%读取BVH、CALC文件中的数据内容。
%参数为bone_file:BVH或者calc文件，务必带着后缀进行带入；bone_index:要获得数据对应的骨头序号。
%返回骨头名字(bone_name)及对应的数据(bone)。

    %骨头顺序
    bone_name_BVH = {'Hips'             ;'RightUpLeg'       ;'RightLeg'         ;'Left_UPLeg'       ;'Left_UPLeg'       ;'Left_UPLeg'       ;'LeftFoot'         ;'Spine'            ;'Spine1'           ;'Spine2'           ;'Spine3'           ;'Neck'             ;'Head'             ;'RightShoulder'    ;'RightArm'         ;'RightForeArm'     ;'RightHand'        ;'RightHandThumb1'  ;'RightHandThumb2'  ;'RightHandThumb3'  ;'RightInHandIndex' ;'RightHandIndex1'  ;'RightHandIndex2'  ;'RightHandIndex3'  ;'RightInHandMiddle';'RightHandMiddle1' ;'RightHandMiddle2' ;'RightHandMiddle3' ;'RightInHandRing'  ;'RightHandRing1'   ;'RightHandRing2'   ;'RightHandRing3'   ;'RightInHandPinky' ;'RightHandPinky1'  ;'RightHandPinky2'  ;'RightHandPinky3'  ;'LeftShoulder'     ;'LeftArm'          ;'LeftForeArm'      ;'LeftHand'         ;'LeftHandThumb1'   ;'LeftHandThumb2'   ;'LeftHandThumb3'   ;'LeftInHandIndex'  ;'LeftHandIndex1'   ;'LeftHandIndex2'   ;'LeftHandIndex3'   ;'LeftInHandMiddle' ;'LeftHandMiddle1'  ;'LeftHandMiddle2'  ;'LeftHandMiddle3'  ;'LeftInHandRing'   ;'LeftHandRing1'    ;'LeftHandRing2'    ;'LeftHandRing3'    ;'LeftInHandPinky'  ;'LeftHandPinky1'   ;'LeftHandPinky2'   ;'LeftHandPinky3'   };
    bone_name_CALC = {'Hips';'RightUpLeg';'RightLeg';'RightFoot';'LeftUpLeg';'LeftLeg';'LeftFoot';'RightShoulder';'RightArm';'RightForeArm';'RightHand';'LeftShoulder';'LeftArm';'LeftForeArm';'LeftHand';'Head';'Neck1';'Neck';'Spine2';'Spine1';'Spine';'ContactL  337';'contactR 338';'RightHandThumb1';'RightHandThumb2';'RightHandThumb3';'RightInHandIndex';'RightHandIndex1';'RightHandIndex2';'RightHandIndex3';'RightInHandMiddle';'RightHandMiddle1';'RightHandMiddle2';'RightHandMiddle3';'RightInHandRing';'RightHandRing1';'RightHandRing2';'RightHandRing3';'RightInHandPinky';'RightHandPinky1';'RightHandPinky2';'RightHandPinky3';'LeftHandThumb1';'LeftHandThumb2';'LeftHandThumb3';'LeftInHandIndex';'LeftHandIndex1';'LeftHandIndex2';'LeftHandIndex3';'LeftInHandMiddle';'LeftHandMiddle1';'LeftHandMiddle2';'LeftHandMiddle3';'LeftInHandRing';'LeftHandRing1';'LeftHandRing2';'LeftHandRing3';'LeftInHandPinky';'LeftHandPinky1';'LeftHandPinky2';'LeftHandPinky3'};
    %文件格式识别
    fbone_file = bone_file(end:-1:1);
    cnt = 0;
    bone_format=[];
    st=[];
    while ~strcmp(st,'.')
        cnt = cnt + 1 ;
        st = fbone_file(cnt);
        bone_format = strcat(bone_format,st);
    end
    %文件数据提取部分
    fid= fopen(bone_file,'r');
    if strcmp(bone_format,'hvb.') || strcmp(bone_format,'HVB.')%BVH文件数据提取
        bone_num=cell2mat(textscan(fid,'','headerlines',351));
        bi1 = (bone_index-1)*16+1;
        bone_name = bone_name_BVH{bone_index};
        bone = bone_num(:,bi1:bi1+5);
    elseif strcmp(bone_format,'clac.') || strcmp(bone_format,'CLAC.')%CALC文件数据提取
        bone_num=cell2mat(textscan(fid,'','headerlines',6));
        if bone_index <= 21
            bi1= (bone_index-1)*16+1;
            bone_name = bone_name_CALC{bone_index};
        else
            bi1= (bone_index-1)*16+3;
            bone_name = bone_name_CALC{bone_index+2};
        end
        bone=bone_num(:,bi1:bi1+15);
    else
        bone_name = 0;
        bone = 0;
        fprintf(2,'ERROR：The file is woring!\n')
    end
end