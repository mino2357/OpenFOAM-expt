//+
SetFactory("OpenCASCADE");
//+
n=2.5;
//
Point(1) = {0, 0, 0, 1.0};
//+
Extrude {2, 0, 0} {
  Point{1}; Layers {20*n}; Recombine;
}
//+
Extrude {1, 0, 0} {
  Point{2}; Layers {10*n}; Recombine;
}
//+
Extrude {10, 0, 0} {
  Point{3}; Layers {100*n}; Recombine;
}
//+
Extrude {0, 2, 0} {
  Curve{1}; Curve{2}; Curve{3}; Layers {20*n}; Recombine;
}
//+
Extrude {0, 1, 0} {
  Curve{6}; Curve{10}; Layers {10*n}; Recombine;
}
//+
Line(17) = {10, 11};
//+
Transfinite Curve {17} = 10*n+1 Using Progression 1;
//+
Extrude {0, 2, 0} {
  Curve{13}; Curve{17}; Curve{16}; Layers {20*n}; Recombine;
}
//+
Extrude {0, 0, 1} {
  Surface{6}; Surface{7}; Surface{8}; Surface{5}; Surface{3}; Surface{2}; Surface{1}; Surface{4}; Layers {10*n}; Recombine;
}
//+
Curve Loop(41) = {36, -44, -57, 64};
//+
Plane Surface(41) = {41};
//+
Transfinite Curve {36, 64, 57, 44} = 10*n+1 Using Progression 1;
//+
Transfinite Surface "*";
Recombine Surface "*";
//+
Extrude {0, 0, 2} {
  Surface{41}; Surface{40}; Surface{37}; Surface{33}; Surface{29}; Surface{25}; Surface{21}; Surface{17}; Surface{13}; Layers {20*n}; Recombine;
}
//+
Physical Surface("Floor", 105) = {1, 4, 6, 2, 3, 5, 7, 8};
//+
Physical Surface("SideWall", 106) = {31, 53, 35, 28, 56, 59, 67, 20, 70, 73, 12, 16};
//+
Physical Surface("Ceiling", 107) = {61, 64, 68, 71, 46, 57, 74, 50, 54};
//+
Physical Surface("Inlet", 108) = {72, 47, 51, 34, 38, 9};
//+
Physical Surface("Outlet", 109) = {58, 62, 66, 27, 23, 18};
//+
Physical Surface("CubeWall", 110) = {32, 15, 41, 39, 22};
//+
Physical Volume("Fluid", 111) = {16, 15, 14, 13, 12, 9, 2, 3, 4, 5, 6, 17, 11, 10, 1, 7, 8};
