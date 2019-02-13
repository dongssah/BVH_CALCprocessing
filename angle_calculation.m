  w = 0;
  k = 1;
  cnt = 0;
while bone(k,1)~=-0.0333
    
    x1=bone(k,1);
    y1=bone(k,2);
    z1=bone(k,3);
    x2=bone(k+1,1);
    y2=bone(k+1,2);
    z2=bone(k+1,3);
    x3=bone(k+2,1);
    y3=bone(k+2,2);
    z3=bone(k+2,3);
    
    a = y1-y2; b = z1-z2;
    c = y1-y3; d = z1-z3;
    e = ((y1.^2-y2.^2)-(z2.^2-z1.^2))/2;
    f = ((y1.^2-y3.^2)-(z3.^2-z1.^2))/2;
    
    y0 = -(d*e-b*f)/(b*c-a*d);
    z0 = -(a*f-c*e)/(b*c-a*d);
    
    R = sqrt((y1-y0).^2+(z1-z0).^2);
    RR = isnan(R);
    if or(RR == 1 ,R == 0)
        k = k + 1;
        cnt = cnt+ 1;
        continue;
    end
    A = sqrt(((y1-y2).^2+(z1-z2).^2))/2;
    ra(k-cnt,1) = R;
    ra(k-cnt,2) = A;
    se= A/R;
    ra(k-cnt,3) = se;
    ra(k-cnt,4) = w;
    %disp(se);
    w = w + se;
    k = k + 1;
end

    
    
    
    disp(w)