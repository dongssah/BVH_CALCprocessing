all = textread('Fast_Char00.bvh','','headerlines',351);

joint = struct('Hips',[],'RightUpLeg',[],'RightLeg',[],'RightFoot',[],'LeftUpLeg',[],'LeftLeg',[],'LeftFoot',[],'Spine',[],'Spine1',[],'Spine2',[],'Spine3',[],'Neck',[],'Head',[],'RightShoulder',[],'RightArm',[],'RightForeArm',[],'RightHand',[],'RightHandThumb1',[],'RightHandThumb2',[],'RightHandThumb3',[],'RightInHandIndex',[],'RightHandIndex1',[],'RightHandIndex2',[],'RightHandIndex3',[],'RightInHandMiddle',[],'RightHandMiddle1',[],'RightHandMiddle2',[],'RightHandMiddle3',[],'RightInHandRing',[],'RightHandRing1',[],'RightHandRing2',[],'RightHandRing3',[],'RightInHandPinky',[],'RightHandPinky1',[],'RightHandPinky2',[],'RightHandPinky3',[],'LeftShoulder',[],'LeftArm',[],'LeftForeArm',[],'LeftHand',[],'LeftHandThumb1',[],'LeftHandThumb2',[],'LeftHandThumb3',[],'LeftInHandIndex',[],'LeftHandIndex1',[],'LeftHandIndex2',[],'LeftHandIndex3',[],'LeftInHandMiddle',[],'LeftHandMiddle1',[],'LeftHandMiddle2',[],'LeftHandMiddle3',[],'LeftInHandRing',[],'LeftHandRing1',[],'LeftHandRing2',[],'LeftHandRing3',[],'LeftInHandPinky',[],'LeftHandPinky1',[],'LeftHandPinky2',[],'LeftHandPinky3',[]);

cnt=1;
i=1;
j=6;

while cnt<=59
    c=[i,j];
    aa(cnt,:)=c;
    cnt=cnt+1;
    i=i+6;
    j=j+6;
end

name='1.Hips    2.RightUpLeg    3.  RightLeg    4.RightFoot     5.LeftUpLeg     6.LeftLeg     7.LeftFoot     8.Spine     9.Spine1     10.Spine2     11.Spine3     12.Neck     13.Head     14.RightShoulder     15.RightArm     16.RightForeArm     17.RightHand     18.RightHandThumb1     19.RightHandThumb2     20.RightHandThumb3     21.RightInHandIndex     22.RightHandIndex1     23.RightHandIndex2     24.RightHandIndex3     25.RightInHandMiddle     26.RightHandMiddle1     27.RightHandMiddle2     28.RightHandMiddle3     29.RightInHandRing     30.RightHandRing1     31.RightHandRing2     32.RightHandRing3      33.RightInHandPinky     34.RightHandPinky1     35.RightHandPinky2     36.RightHandPinky3     37.LeftShoulder     38.LeftArm     39.LeftForeArm     40.LeftHand     41.LeftHandThumb1     42.LeftHandThumb2     43.LeftHandThumb3     44.LeftInHandIndex     45.LeftHandIndex1     46.LeftHandIndex2     47.LeftHandIndex3     48.LeftInHandMiddle     49.LeftHandMiddle1     50.LeftHandMiddle2     51.LeftHandMiddle3     52.LeftInHandRing     53.LeftHandRing1     54.LeftHandRing2     55.LeftHandRing3     56.LeftInHandPinky     57.LeftHandPinky1     58.LeftHandPinky2     59.LeftHandPinky3';

xaunze = inputdlg(name,'请选择需要的数据');
user_val = str2num(xaunze{1});

switch user_val
case 1,J=1;c = 'Hips';
case 2,J=2;c = 'RightUpLeg';
case 3,J=3;c = 'RightLeg';
case 4,J=4;c = 'Left_UPLeg';
case 7,J=7;c = 'LeftFoot';
case 8,J=8;c = 'Spine';
case 9,J=9;c = 'Spine1';
case 10,J=10;c = 'Spine2';
case 11,J=11;c = 'Spine3';
case 12,J=12;c = 'Neck';
case 13,J=13;c = 'Head';
case 14,J=14;c = 'RightShoulder';
case 15,J=15;c = 'RightArm';
case 16,J=16;c = 'RightForeArm';
case 17,J=17;c = 'RightHand';
case 18,J=18;c = 'RightHandThumb1';
case 19,J=19;c = 'RightHandThumb2';
case 20,J=20;c = 'RightHandThumb3';
case 21,J=21;c = 'RightInHandIndex';
case 22,J=22;c = 'RightHandIndex1';
case 23,J=23;c = 'RightHandIndex2';
case 24,J=24;c = 'RightHandIndex3';
case 25,J=25;c = 'RightInHandMiddle';
case 26,J=26;c = 'RightHandMiddle1';
case 27,J=27;c = 'RightHandMiddle2';
case 28,J=28;c = 'RightHandMiddle3';
case 29,J=29;c = 'RightInHandRing';
case 30,J=30;c = 'RightHandRing1';
case 31,J=31;c = 'RightHandRing2';
case 32,J=32;c = 'RightHandRing3';
case 33,J=33;c = 'RightInHandPinky';
case 34,J=34;c = 'RightHandPinky1';
case 35,J=35;c = 'RightHandPinky2';
case 36,J=36;c = 'RightHandPinky3';
case 37,J=37;c = 'LeftShoulder';
case 38,J=38;c = 'LeftArm';
case 39,J=39;c = 'LeftForeArm';
case 40,J=40;c = 'LeftHand';
case 41,J=41;c = 'LeftHandThumb1';
case 42,J=42;c = 'LeftHandThumb2';
case 43,J=43;c = 'LeftHandThumb3';
case 44,J=44;c = 'LeftInHandIndex';
case 45,J=45;c = 'LeftHandIndex1';
case 46,J=46;c = 'LeftHandIndex2';
case 47,J=47;c = 'LeftHandIndex3';
case 48,J=48;c = 'LeftInHandMiddle';
case 49,J=49;c = 'LeftHandMiddle1';
case 50,J=50;c = 'LeftHandMiddle2';
case 51,J=51;c = 'LeftHandMiddle3';
case 52,J=52;c = 'LeftInHandRing';
case 53,J=53;c = 'LeftHandRing1';
case 54,J=54;c = 'LeftHandRing2';
case 55,J=55;c = 'LeftHandRing3';
case 56,J=56;c = 'LeftInHandPinky';
case 57,J=57;c = 'LeftHandPinky1';
case 58,J=58;c = 'LeftHandPinky2';
case 59,J=59;c = 'LeftHandPinky3';
    otherwise
        disp('无对象')
end

joint.(c) = all(:,aa(J,1):aa(J,2));
    