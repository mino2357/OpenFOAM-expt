//+
SetFactory("OpenCASCADE");
//+
Point(1) = {0, 0, 0, 1.0};
//+
Point(2) = {1, 0, 0, 1.0};
//+
Point(3) = {0, 1, 0, 1.0};
//+
Point(4) = {-1, 0, 0, 1.0};
//+
Point(5) = {0, -1, 0, 1.0};
//+
Circle(1) = {2, 1, 3};
//+
Circle(2) = {3, 1, 4};
//+
Circle(3) = {4, 1, 5};
//+
Circle(4) = {5, 1, 2};
//+
Point(6) = {20, 0, 0, 1.0};
//+
Point(7) = {0, 20, 0, 1.0};
//+
Point(8) = {-20, 0, 0, 1.0};
//+
Point(9) = {0, -20, 0, 1.0};
//+
Circle(5) = {6, 1, 7};
//+
Circle(6) = {7, 1, 8};
//+
Circle(7) = {8, 1, 9};
//+
Circle(8) = {9, 1, 6};
//+
Line(9) = {2, 6};
//+
Line(10) = {3, 7};
//+
Line(11) = {4, 8};
//+
Line(12) = {5, 9};
//+
Curve Loop(1) = {5, -10, -1, 9};
//+
Plane Surface(1) = {1};
//+
Curve Loop(2) = {10, 6, -11, -2};
//+
Plane Surface(2) = {2};
//+
Curve Loop(3) = {11, 7, -12, -3};
//+
Plane Surface(3) = {3};
//+
Curve Loop(4) = {12, 8, -9, -4};
//+
Plane Surface(4) = {4};
//+
Transfinite Curve {1, 5, 2, 6, 3, 7, 4, 8} = 400 Using Progression 1;
//+
Transfinite Curve {9, 10, 11, 12} = 800 Using Progression 1.0;
//+
Transfinite Surface "*";
Recombine Surface "*";
Transfinite Volume "*";
//+
Extrude {0, 0, 1} {
  Surface{2}; Surface{1}; Surface{3}; Surface{4}; Layers {1}; Recombine;
}
//+
Physical Surface("Inlet", 33) = {6, 14};
//+
Physical Surface("Outlet", 34) = {10, 18};
//+
Physical Surface("Side", 35) = {9, 2, 1, 13, 20, 4, 17, 3};
//+
Physical Surface("Wall", 36) = {8, 19, 11, 16};
//+
Physical Volume("Fluid", 37) = {4, 1, 2, 3};
