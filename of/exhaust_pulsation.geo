// Gmsh project created on Fri Jul 18 20:10:04 2025
SetFactory("OpenCASCADE");
//+
Point(1) = {0, 7, 0, 1.0};
//+
Point(2) = {0, 6, 0, 1.0};
//+
Point(3) = {0, 5, 0, 1.0};
//+
Point(4) = {0, 4, 0, 1.0};
//+
Point(5) = {0, 3, 0, 1.0};
//+
Point(6) = {0, 2, 0, 1.0};
//+
Point(7) = {0, 1, 0, 1.0};
//+
Point(8) = {0, 0, 0, 1.0};
//+
Line(1) = {1, 2};
//+
Line(2) = {4, 3};
//+
Line(3) = {5, 6};
//+
Line(4) = {7, 8};
//+
Extrude {4, 0, 0} {
  Curve{1}; 
}
//+
Extrude {4, 0, 0} {
  Curve{2}; 
}
//+
Extrude {4, 0, 0} {
  Curve{3}; 
}
//+
Extrude {4, 0, 0} {
  Curve{4}; 
}
//+
Extrude {1, 0, 0} {
  Curve{7}; 
}
//+
Extrude {1, 0, 0} {
  Curve{10}; 
}
//+
Extrude {1, 0, 0} {
  Curve{13}; 
}
//+
Extrude {1, 0, 0} {
  Curve{16}; 
}
//+
Line(29) = {10, 12};
//+
Line(30) = {18, 20};
//+
Line(31) = {14, 15};
//+
Line(32) = {22, 23};
//+
Curve Loop(9) = {18, 30, -21, -29};
//+
Surface(9) = {9};
//+
Curve Loop(11) = {31, 26, -32, -24};
//+
Surface(10) = {11};
//+
Extrude {2, 0, 0} {
  Curve{30}; 
}
//+
Extrude {2, 0, 0} {
  Curve{32}; 
}
//+
Extrude {1, 0, 0} {
  Curve{35}; 
}
//+
Extrude {1, 0, 0} {
  Curve{38}; 
}
//+
Extrude {0, 1, 0} {
  Curve{42}; 
}
//+
Extrude {0, -1, 0} {
  Curve{40}; 
}
//+
Line(51) = {35, 33};
//+
Line(52) = {34, 36};
//+
Curve Loop(19) = {51, 47, 52, -50};
//+
Surface(17) = {19};
//+
Extrude {16, 0, 0} {
  Curve{52}; 
}
//+
Delete {
  Surface{1}; Surface{5}; Surface{9}; Surface{11}; Surface{13}; Surface{2}; Surface{6}; Surface{16}; Surface{18}; Surface{17}; Surface{3}; Surface{7}; Surface{15}; Surface{10}; Surface{12}; Surface{14}; Surface{4}; Surface{8}; 
}
//+
Delete {
  Curve{7}; Curve{18}; Curve{10}; Curve{21}; 
}
//+
Delete {
  Curve{30}; Curve{35}; Curve{40}; Curve{50}; Curve{47}; Curve{42}; Curve{38}; 
}
//+
Delete {
  Curve{32}; Curve{26}; Curve{16}; Curve{24}; Curve{13}; 
}
//+
Delete {
  Curve{52}; 
}
//+
//+
Recursive Delete {
  Curve{17}; 
}
//+
Recursive Delete {
  Curve{19}; 
}
//+
Recursive Delete {
  Curve{39}; Curve{41}; Curve{44}; Curve{43}; Curve{28}; Curve{27}; Curve{23}; Curve{25}; Curve{20}; Curve{22}; 
}
//+
Circle(56) = {9, 10, 18};
//+
Circle(57) = {11, 12, 20};
//+
Circle(58) = {25, 26, 30};
//+
Circle(59) = {31, 27, 28};
//+
Circle(60) = {13, 14, 22};
//+
Circle(61) = {23, 15, 16};
//+
Recursive Delete {
  Curve{54}; Curve{53}; Curve{55}; 
}
//+
Translate {0, 8, 0} {
  Duplicata { Point{1}; Point{2}; Point{3}; Point{4}; Point{5}; Point{6}; Point{9}; Point{7}; Point{10}; Point{8}; Point{12}; Point{18}; Point{11}; Point{20}; Point{13}; Point{25}; Point{14}; Point{26}; Point{15}; Point{22}; Point{35}; Point{16}; Point{30}; Point{23}; Point{33}; Point{36}; Point{27}; Point{34}; Point{28}; Point{31}; Curve{1}; Curve{2}; Curve{3}; Curve{5}; Curve{6}; Curve{4}; Curve{9}; Curve{29}; Curve{56}; Curve{8}; Curve{57}; Curve{11}; Curve{33}; Curve{12}; Curve{34}; Curve{14}; Curve{31}; Curve{60}; Curve{48}; Curve{15}; Curve{58}; Curve{61}; Curve{51}; Curve{49}; Curve{36}; Curve{45}; Curve{37}; Curve{46}; Curve{59}; }
}

//+
Point(97) = {5, 15, 0, 1.0};
//+
Point(98) = {8, 14, 0, 1.0};
//+
Point(99) = {8, 9, 0, 1.0};
//+
Point(100) = {8, 6, 0, 1.0};
//+
Point(101) = {8, 1, 0, 1.0};
//+
Point(102) = {5, 0, 0, 1.0};
//+
Point(103) = {5, 3, 0, 1.0};
//+
Point(104) = {5, 4, 0, 1.0};
//+
Point(105) = {5, 7, 0, 1.0};
//+
Point(106) = {5, 8, 0, 1.0};
//+
Point(107) = {5, 11, 0, 1.0};
//+
Point(108) = {5, 12, 0, 1.0};
//+
Recursive Delete {
  Curve{70}; Curve{72}; Curve{82}; Curve{79}; Curve{83}; Curve{90}; Curve{56}; Curve{57}; Curve{58}; Curve{59}; Curve{60}; Curve{61}; 
}
//+
Line(90) = {73, 97};
//+
Line(91) = {97, 78};
//+
Line(92) = {82, 98};
//+
Line(93) = {98, 89};
//+
Line(94) = {79, 108};
//+
Line(95) = {108, 80};
//+
Line(96) = {81, 107};
//+
Line(97) = {107, 86};
//+
Line(98) = {88, 106};
//+
Line(99) = {106, 90};
//+
Line(100) = {9, 105};
//+
Line(101) = {105, 18};
//+
Line(102) = {20, 104};
//+
Line(103) = {104, 11};
//+
Line(104) = {13, 103};
//+
Line(105) = {103, 22};
//+
Line(106) = {16, 102};
//+
Line(107) = {102, 23};
//+
Line(108) = {25, 100};
//+
Line(109) = {100, 30};
//+
Line(110) = {31, 101};
//+
Line(111) = {101, 28};
//+
Line(112) = {94, 99};
//+
Line(113) = {99, 95};
//+
Point(109) = {11, 12, 0, 1.0};
//+
Point(110) = {11, 11, 0, 1.0};
//+
Point(111) = {11, 4, 0, 1.0};
//+
Point(112) = {11, 3, 0, 1.0};
//+
Point(113) = {12, 3, 0, 1.0};
//+
Point(114) = {12, 4, 0, 1.0};
//+
Point(115) = {12, 11, 0, 1.0};
//+
Point(116) = {12, 12, 0, 1.0};
//+
Line(114) = {92, 109};
//+
Line(115) = {109, 116};
//+
Line(116) = {116, 115};
//+
Line(117) = {115, 114};
//+
Line(118) = {96, 110};
//+
Line(119) = {110, 111};
//+
Line(120) = {111, 36};
//+
Line(121) = {34, 112};
//+
Line(122) = {113, 114};
//+
Point(117) = {12, -1, 0, 1.0};
//+
Point(118) = {11, -1, 0, 1.0};
//+
Point(119) = {11, -2, 0, 1.0};
//+
Point(120) = {12, -2, 0, 1.0};
//+
Point(121) = {-1, -1, 0, 1.0};
//+
Point(122) = {-1, -2, 0, 1.0};
//+
Point(123) = {-2, -1, 0, 1.0};
//+
Point(124) = {-2, -2, 0, 1.0};
//+
Line(123) = {112, 118};
//+
Line(124) = {117, 113};
//+
Line(125) = {117, 120};
//+
Line(126) = {120, 119};
//+
Line(127) = {119, 122};
//+
Line(128) = {122, 124};
//+
Line(129) = {124, 123};
//+
Line(130) = {121, 118};
//+
Point(125) = {-2, 5, 0, 1.0};
//+
Point(126) = {-1, 5, 0, 1.0};
//+
Point(127) = {-1, 4, 0, 1.0};
//+
Point(128) = {-2, 4, 0, 1.0};
//+
Point(129) = {-2, 10, 0, 1.0};
//+
Point(130) = {-1, 10, 0, 1.0};
//+
Point(131) = {-1, 11, 0, 1.0};
//+
Point(132) = {-2, 11, 0, 1.0};
//+
Line(131) = {123, 128};
//+
Line(132) = {128, 125};
//+
Line(133) = {125, 129};
//+
Line(134) = {129, 132};
//+
Line(135) = {131, 71};
//+
Line(136) = {130, 72};
//+
Line(137) = {3, 126};
//+
Line(138) = {126, 130};
//+
Line(139) = {4, 127};
//+
Line(140) = {127, 121};
//+
Line(141) = {132, 131};
//+
Recursive Delete {
  Curve{64}; 
}
//+
Recursive Delete {
  Curve{2}; 
}
//+
Curve Loop(22) = {65, 90, 91, 74, 92, 93, 85, 114, 115, 116, 117, -122, -124, 125, 126, 127, 128, 129, 131, 132, 133, 134, 141, 135, 73, 96, 97, 86, 87, -84, -80, -76, -95, -94, -71, 63, 68, -69, -66, -62};
//+
Curve Loop(23) = {75, 78, -77, 67, 81, 98, 99, 88, 112, 113, 89, 118, 119, 120, -49, -109, -108, -33, -101, -100, -5, 1, 6, 29, -9, 137, 138, 136};
//+
Curve Loop(24) = {8, -103, -102, 34, 48, 51, -45, -36, -105, -104, -11, 3, 12, 31, -14, 4, 15, 106, 107, 37, -111, -110, 46, 121, 123, -130, -140, -139};
//+
Curve Loop(25) = {65, 90, 91, 74, 92, 93, 85, 114, 115, 116, 117, -122, -124, 125, 126, 127, 128, 129, 131, 132, 133, 134, 141, 135, 73, 96, 97, 86, 87, -84, -80, -76, -95, -94, -71, 63, 68, -69, -66, -62};
//+
Surface(1) = {25};
//+
Curve Loop(27) = {88, 112, 113, 89, 118, 119, 120, -49, -109, -108, -33, -101, -100, -5, 1, 6, 29, -9, 137, 138, 136, 75, 78, -77, 67, 81, 98, 99};
//+
Surface(2) = {27};
//+
Curve Loop(29) = {34, 48, 51, -45, -36, -105, -104, -11, 3, 12, 31, -14, 4, 15, 106, 107, 37, -111, -110, 46, 121, 123, -130, -140, -139, 8, -103, -102};
//+
Surface(3) = {29};
//+
BooleanDifference{ Surface{1}; Delete; }{ Surface{2}; Surface{3}; Delete; }
//+
Extrude {0, 0, 0.2} {
  Surface{1}; Layers {1}; Recombine;
}
//+
Physical Surface("wall", 373) = {36, 34, 38, 40, 65, 66, 55, 88, 56, 53, 52, 57, 51, 49, 41, 48, 47, 58, 67, 39, 68, 89, 59, 46, 87, 32, 37, 90, 86, 69, 45, 60, 85, 64, 30, 35, 44, 61, 83, 28, 82, 81, 43, 42, 95, 96, 77, 80, 93, 92, 97, 79, 78, 91, 62, 63, 33, 76, 26, 31, 29, 70, 13, 24, 15, 71, 27, 9, 7, 17, 25, 72, 5, 23, 73, 2, 4, 6, 21, 19, 14, 8, 10, 12, 74, 75, 16, 22, 18, 20};
//+
Physical Surface("frontAndBack", 374) = {1, 98};
//+
Physical Surface("inlet_01", 375) = {3};
//+
Physical Surface("inlet_02", 376) = {11};
//+
Physical Surface("inlet_03", 377) = {94};
//+
Physical Surface("inlet_04", 378) = {84};
//+
Physical Surface("inlet_05", 379) = {50};
//+
Physical Surface("inlet_06", 380) = {54};
//+
Physical Volume("fluid", 381) = {1};
