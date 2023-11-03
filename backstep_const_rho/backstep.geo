//+
Point(1) = {0, 0, 0, 1.0};
//+
Extrude {-10, 0, 0} {
  Point{1}; Layers {100}; Recombine;
}
//+
Extrude {20, 0, 0} {
  Point{1}; Layers {200}; Recombine;
}
//+
Extrude {0, -1, 0} {
  Curve{2}; Layers {10}; Recombine;
}
//+
Extrude {0, 2, 0} {
  Curve{1}; Curve{2}; Layers {20}; Recombine;
}
//+
Extrude {0, 0, 4} {
  Surface{6}; Surface{10}; Surface{14}; Layers {40}; Recombine;
}
//+
Physical Surface("Inlet", 81) = {49};
//+
Physical Surface("Outlet", 82) = {71, 27};
//+
Physical Surface("Side", 83) = {58, 10, 80, 14, 6, 36};
//+
Physical Surface("Wall", 84) = {53, 75, 45, 35, 31};
//+
Physical Volume("Fluid", 85) = {2, 3, 1};
