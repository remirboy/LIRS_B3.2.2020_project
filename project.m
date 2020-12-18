theta3 = pi/3;
theta4 = pi/6;
theta5 = pi/4;
l1 = 4;
d2 = 5;
l3 = 5;
d5 = 4;
l6 = 5;

L(1) = Link([0, 0, l1, 0, 1]); % theta, d, a, alpha, P=1/R=0L(2) = Revolute('d', 0, 'a', 50, 'alpha', 0);
L(2) = Link([theta3, d2, 0, 0, 0]);
L(3) = Link([theta4, 0, l3, 0, 0]);
L(4) = Link([theta5, d5, 0, -pi/2, 0]);
L(5) = Link([0, 2, l6, 0, 0]);

R = SerialLink(L,'name','RPP');
figure (1)
R.plot([0 1 0 0 1],'workspace', [-15 15 -15 15 -15 15]);