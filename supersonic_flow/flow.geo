//+
SetFactory("OpenCASCADE");
//+
Point(1) = {0, 0, 0, 1.0};
//+
Point(2) = {1, 1, 0, 1.0};
//+
Point(3) = {1, 0, 0, 1.0};
//+
Point(4) = {1, -1, 0, 1.0};
//+
Circle(1) = {2, 3, 1};
//+
Circle(2) = {1, 3, 4};
//+
Point(5) = {1, 100, 0, 1.0};
//+
Point(6) = {1, -100, 0, 1.0};
//+
Point(7) = {-99, 0, 0, 1.0};
//+
Circle(3) = {5, 3, 7};
//+
Circle(4) = {7, 3, 6};
//+
Point(8) = {5, 1, 0, 1.0};
//+
Point(9) = {6, 1, 0, 1.0};
//+
Point(10) = {10, 0, 0, 1.0};
//+
Point(11) = {11, -0, 0, 1.0};
//+
Point(12) = {12, 0, 0, 1.0};
//+
Point(13) = {2.5, -1, 0, 1.0};
//+
Point(14) = {3, -1, 0, 1.0};
//+
Point(15) = {2.5, 1, 0, 1.0};
//+
Point(16) = {4, 1, 0, 1.0};
//+
Point(17) = {1.5, -1, 0, 1.0};
//+
Point(18) = {2.0, -1, 0, 1.0};
//+
Bezier(5) = {2, 15, 16, 8, 9, 10, 11, 12};
//+
Bezier(6) = {4, 17, 18, 13, 14, 10, 11, 12};
//+
//+
Line(7) = {2, 5};
//+
Line(8) = {1, 7};
//+
Line(9) = {4, 6};
//+
Point(19) = {80.0, 82.0, 0, 1.0};
//+
Point(20) = {80.0, -82.0, 0, 1.0};
//+
Point(21) = {160.0, 0.0, 0, 1.0};
//+
Line(10) = {5, 19};
//+
Line(11) = {19, 21};
//+
Line(12) = {21, 20};
//+
Line(13) = {20, 6};
//+
Line(14) = {12, 19};
//+
Line(15) = {12, 20};
//+
Transfinite Curve {7, 8, 9, 15, 14} = 500 Using Progression 1.01;
//+
Transfinite Curve {11, 12} = 500 Using Progression 1.0;
//+
Curve Loop(1) = {7, 3, -8, -1};
//+
Plane Surface(1) = {1};
//+
Curve Loop(2) = {8, 4, -9, -2};
//+
Plane Surface(2) = {2};
//+
Curve Loop(3) = {6, 15, 13, -9};
//+
Plane Surface(3) = {3};
//+
Curve Loop(4) = {14, 11, 12, -15};
//+
Plane Surface(4) = {4};
//+
Curve Loop(5) = {10, -14, -5, 7};
//+
Plane Surface(5) = {5};
//+
Transfinite Curve {1, 2, 3, 4} = 141*2 Using Progression 1.0;
//+
Transfinite Curve {5} = 1104*0.3 Using Progression 1.006;
//+
Transfinite Curve {10} = 1104*0.3 Using Progression 1.0;
//+
Transfinite Curve {13} = 1104*0.3 Using Progression 1.0;
//+
Transfinite Curve {6} = 1104*0.3 Using Progression 1.006;
//+
Transfinite Surface "*";
Recombine Surface "*";
Transfinite Volume "*";
//+
//+
Extrude {0, 0, 1} {
  Surface{5}; Surface{4}; Surface{3}; Surface{2}; Surface{1}; Layers {1}; Recombine;
}
//+
Physical Surface("Inlet", 41) = {23, 20};
//+
Physical Surface("Outlet", 42) = {6, 11, 12, 16};
//+
Physical Surface("Side", 43) = {10, 5, 1, 25, 22, 2, 18, 3, 14, 4};
//+
Physical Surface("Wall", 44) = {8, 24, 21, 15};
//+
Physical Volume("Fluid", 45) = {1, 2, 3, 4, 5};
