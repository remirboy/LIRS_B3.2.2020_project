L(1) = Link([0, 0, l1, d1, 1]); % theta, d, a, alpha, P=1/R=0L(2) = Revolute('d', 0, 'a', 50, 'alpha', 0);
L(2) = Link([theta3, d2, 0, 0, 0]);
L(3) = Link([theta4, 0, l3, 0, 0]);
L(4) = Link([theta5, d5, 0, -pi/2, 0]);
L(5) = Link([0, 2, l6, 0, 0]);

R = SerialLink(L,'name','RPP');
figure (1);
R.plot([0 1 0 0 1],'workspace', [-15 15 -15 15 -15 15]);

% eeMatrix должна браться из функции where вроде) хз)

t = HOWTO([1 1 1 1; 1 1 1 1; 1 1 1 1; 1 1 1 1],R);
disp(t);
function out = HOWTO(eeMatrix,R)
    out = R.ikine(eeMatrix,'mask', [1, 1, 0, 0, 0, 0]);
end