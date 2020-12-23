theta3 = pi/3;
theta4 = pi/6;
theta5 = pi/4;
l1 = 4;
d1 = 4;
d2 = 5;
l3 = 5;
d5 = 4;
l6 = 5;

L(1) = Link([0, 0, l1, d1, 1]); % theta, d, a, alpha, P=1/R=0L(2) = Revolute('d', 0, 'a', 50, 'alpha', 0);
L(2) = Link([theta3, d2, 0, 0, 0]);
L(3) = Link([theta4, 0, l3, 0, 0]);
L(4) = Link([theta5, d5, 0, -pi/2, 0]);
L(5) = Link([0, 2, l6, 0, 0]);

R = SerialLink(L,'name','RPP');
figure (1);
R.plot([0 1 0 0 1],'workspace', [-15 15 -15 15 -15 15]);

% eeMatrix = WHERE(l1, d1, theta3, d2, theta4, l3, theta5, d5, l6);
% t = HOWTO(eeMatrix,R);
% disp(t);

% function eeMatrix = WHERE(l1, d1, theta3, d2, theta4, l3, theta5, d5, l6)
% 
%     T12 = [1 0 0 l1;
%         0 1 0 0;
%         0 0 1 d1;
%         0 0 0 1;
%         ];
%     
%     T23 = [cos(theta3) -sin(theta3) 0 0;
%         sin(theta3) cos(theta3) 0 0;
%         0 0 1 d2;
%         0 0 0 1;
%         ];
%     
%     T34 = [cos(theta4) -sin(theta4) 0 l3;
%         sin(theta4) cos(theta4) 0 0;
%         0 0 1 0;
%         0 0 0 1;
%         ];
%     T45 = [cos(theta5) -sin(theta5) 0 0;
%         0 0 1 d5;
%         -sin(theta5) -cos(theta5) 0 0;
%         0 0 0 1
%         ];
%     T5ee = [1 0 0 l6;
%         0 1 0 0;
%         0 0 1 0;
%         0 0 0 1;
%         ];
%     
%     eeMatrix = T12*T23*T34*T45*T5ee;
% end
% 
% 
% function out = HOWTO(eeMatrix,R)
%     out = R.ikine(eeMatrix,'mask', [4, 1, 0, 0, 0, 0]);
% end