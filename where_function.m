WHERE(1, 1, 1, 1, 1, 1, 1, 1, 1);

function eeMatrix = WHERE(l1, d1, theta3, d2, theta4, l3, theta5, d5, l6)

    T12 = [1 0 0 l1;
        0 1 0 0;
        0 0 1 d1;
        0 0 0 1;
        ];
    
    T23 = [cos(theta3) -sin(theta3) 0 0;
        sin(theta3) cos(theta3) 0 0;
        0 0 1 d2;
        0 0 0 1;
        ];
    
    T34 = [cos(theta4) -sin(theta4) 0 l3;
        sin(theta4) cos(theta4) 0 0;
        0 0 1 0;
        0 0 0 1;
        ];
    T45 = [cos(theta5) -sin(theta5) 0 0;
        0 0 1 d5;
        -sin(theta5) -cos(theta5) 0 0;
        0 0 0 1
        ];
    T5ee = [1 0 0 l6;
        0 1 0 0;
        0 0 1 0;
        0 0 0 1;
        ];
    
    eeMatrix = T12*T23*T34*T45*T5ee;
end
