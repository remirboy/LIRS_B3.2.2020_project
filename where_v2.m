disp(WHERE(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1));

function out = WHERE(l1, d1, l2, theta2, d3, theta3, d4, theta4, d5, theta5, d6, theta6)
   T12 = [1 0 0 l1;
         0 1 0 0;
         0 0 1 d1;
         0 0 0 1];
     
  T23 = [cos(theta2) -sin(theta2) 0 l2;
      sin(theta2) cos(theta2) 0 0;
      0 0 1 0;
      0 0 0 1];
  
T34 = [cos(theta3) -sin(theta3) 0 0;
      0 0 -1 -d3;
      1.0*sin(theta3) cos(theta3) 0 0;
      0 0 0 1];
  
T45 = [cos(theta4) -sin(theta4) 0 0;
      0 0 1 d4;
      -sin(theta4) -cos(theta4) 0 0;
      0 0 0 1];
  
T56 = [cos(theta5) -sin(theta5) 0 0;
      0 0 -1 -d5;
      sin(theta5) cos(theta5) 0 0;
      0 0 0 1];
  
T6ee = [cos(theta6) -sin(theta6) 0 0;
      0 0 -1 -d6;
      sin(theta6) cos(theta6) 0 0;
      0 0 0 1];
 
   out = T12*T23*T34*T45*T56*T6ee;
end