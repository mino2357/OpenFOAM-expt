SetFactory("OpenCASCADE");
Point(1) = {0, 0, 0, 1.0};
n=3;
Extrude {2, 0, 0} {
  Point{1}; Layers {200*n}; Recombine;
}
Extrude {1, 0, 0} {
  Point{2}; Layers {100*n}; Recombine;
}
Extrude {10, 0, 0} {
  Point{3}; Layers {1000*n}; Recombine;
}
Extrude {0, 2, 0} {
  Curve{1}; Curve{2}; Curve{3}; Layers {200*n}; Recombine;
}
Extrude {0, 1, 0} {
  Curve{6}; Curve{8}; Curve{10}; Layers {100*n}; Recombine;
}
Extrude {0, 2, 0} {
  Curve{13}; Curve{15}; Curve{17}; Layers {200*n}; Recombine;
}
Recursive Delete {
  Surface{5}; 
}
Extrude {0, 0, 0.1} {
  Surface{7}; Surface{8}; Surface{9}; Surface{6}; Surface{4}; Surface{1}; Surface{2}; Surface{3}; Layers {1}; Recombine;
}
Physical Surface("FrontAndBack") = {14, 7, 18, 8, 22, 9, 26, 6, 41, 3, 38, 2, 34, 1, 30, 4};
Physical Surface("Wall") = {23, 16, 28, 37};
Physical Surface("SideWall") = {13, 17, 21, 33, 36, 40};
Physical Surface("Inlet") = {31, 27, 10};
Physical Surface("Outlet") = {39, 24, 19};
Physical Volume("Fluid") = {1, 2, 3, 4, 5, 6, 7, 8};
