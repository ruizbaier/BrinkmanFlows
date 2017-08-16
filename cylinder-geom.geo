L=4; 
H=1;
theta=0;

Point(1)={0,0,0};
Point(2)={0,L*Cos(theta),L*Sin(theta)};
Point(3)={0,L*Cos(theta)-H*Sin(theta),L*Sin(theta)+H*Cos(theta)};
Point(4)={0,-H*Sin(theta),H*Cos(theta)};



Point(5)={0,-H*Sin(theta)*0.5, H*Cos(theta)*0.5};
Point(6)={0,L*Cos(theta)-0.5*H*Sin(theta),L*Sin(theta)+0.5*H*Cos(theta)};
Point(7)={0.5*H,L*Cos(theta)-0.5*H*Sin(theta),L*Sin(theta)+0.5*H*Cos(theta)};
Point(8)={-0.5*H,L*Cos(theta)-0.5*H*Sin(theta),L*Sin(theta)+0.5*H*Cos(theta)};

Point(9)={0.5*H,-H*Sin(theta)*0.5,H*Cos(theta)*0.5};
Point(10)={-0.5*H,-H*Sin(theta)*0.5,H*Cos(theta)*0.5};

Circle(8)={1,5,10};
Circle(9)={10,5,4};
Circle(14)={1,5,9};
Circle(15)={9,5,4};

Circle(10)={3,6,7};
Circle(11)={7,6,2};
Circle(12)={2,6,8};
Circle(13)={8,6,3};

Line(1)={1,2};
Line(2)={3,4};
Line(3)={7,9};
Line(4)={8,10};
Line Loop(16) = {13, 10, 11, 12};
Plane Surface(17) = {16};
Line Loop(18) = {8, 9, -15, -14};
Plane Surface(19) = {18};
Line Loop(20) = {2, -9, -4, 13};
Ruled Surface(21) = {20};
Line Loop(22) = {8, -4, -12, -1};
Ruled Surface(23) = {22};
Line Loop(24) = {1, -11, 3, -14};
Ruled Surface(25) = {24};
Line Loop(26) = {10, 3, 15, -2};
Ruled Surface(27) = {26};
Surface Loop(28) = {17, 21, 27, 25, 23, 19};
Volume(29) = {28};

Physical Surface(17) = {17};
Physical Surface(19) = {19};
Physical Surface(21) = {21};
Physical Surface(23) = {23};
Physical Surface(25) = {25};
Physical Surface(27) = {27};

Physical Volume(29) = {29};

Mesh.CharacteristicLengthMax=0.06;//.12? for the mid mesh
Mesh.Algorithm=1;
Mesh.Format=30;
Mesh.Dual=1;
