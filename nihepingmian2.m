x=bone(:,1);
y=bone(:,2);
z=bone(:,3);
scatter3(x,y,z,'filled')
hold on;

planeData=[x,y,z];

% Э��������SVD�任�У���С����ֵ��Ӧ��������������ƽ��ķ���
xyz0=mean(planeData,1);
centeredPlane=bsxfun(@minus,planeData,xyz0);
[U,S,V]=svd(centeredPlane);

a=V(1,3);
b=V(2,3);
c=V(3,3);
d=-dot([a b c],xyz0);

% ͼ�λ���
xfit = min(x):0.01:max(x);
yfit = min(y):0.01:max(y);
[XFIT,YFIT]= meshgrid (xfit,yfit);
ZFIT = -(d + a * XFIT + b * YFIT)/c;
mesh(XFIT,YFIT,ZFIT);