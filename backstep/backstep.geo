//+
SetFactory("OpenCASCADE");
//+
Point(1) = {-110, 1, 0, 1.0};
//+
Point(2) = {0, 1, 0, 1.0};
//+
Point(3) = {0, 0, 0, 1.0};
//+
Point(4) = {50, 0, 0, 1.0};
//+
Point(5) = {50, 9, 0, 1.0};
//+
Point(6) = {-110, 9, 0, 1.0};
//+
Point(7) = {50, 1, 0, 1.0};
//+
//+
Point(8) = {0, 9, 0, 1.0};
//+
Line(1) = {1, 2};
//+
Line(2) = {2, 8};
//+
Line(3) = {8, 6};
//+
Line(4) = {6, 1};
//+
Line(5) = {2, 7};
//+
Line(6) = {7, 5};
//+
Line(7) = {5, 8};
//+
Line(8) = {3, 4};
//+
Line(9) = {4, 7};
//+
Line(10) = {3, 2};
//+
Curve Loop(1) = {3, 4, 1, 2};
//+
Surface(1) = {1};
//+
Curve Loop(3) = {7, -2, 5, 6};
//+
Surface(2) = {3};
//+
Curve Loop(5) = {8, 9, -5, -10};
//+
Surface(3) = {5};
//+
Transfinite Curve {-4, 2, 6} = 200 Using Progression 1.01;
//+
Transfinite Curve {3, -1} = 200 Using Progression 1.025;
//+
Transfinite Curve {-7, 5, 8} = 200 Using Progression 1.02;
//+
Transfinite Curve {-10, -9} = 100 Using Progression 1.00;
//+
Transfinite Surface "*";
Recombine Surface "*";
Transfinite Volume "*";
//+
Extrude {0, 0, 10} {
  Surface{1}; Surface{2}; Surface{3}; Layers {50}; Recombine;
}
//+
Physical Surface("Inlet", 29) = {5};
//+
Physical Surface("Outlet", 30) = {11, 14};
//+
Physical Surface("Side", 31) = {12, 8, 1, 2, 3, 16};
//+
Physical Surface("Wall", 32) = {6, 13, 15, 9, 4};
//+
Physical Volume("Fluid", 33) = {1, 2, 3};
