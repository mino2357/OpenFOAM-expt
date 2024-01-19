# Flow around a cube.

This document is written in response to comments on a YouTube video (https://youtu.be/zJWSdE5HTOU?si=FruWFKX95JOQcBzo). I'm happy if it proves to be helpful.

It is so obvious that the boundary conditions are very important for partial differential equations, especially for fluid equations like the Navier-Stokes equations, where their importance increases with higher Reynolds numbers. In fluid dynamics, model the flow to satisfy Law of the wall(Boundary layer) or use a very fine grid resolution to accommodate it. For this case, Large Eddy Simulation (LES) with the Smagorinsky model is used.

Ideally, the grid should be refined only around the cube, but in this case, a uniform grid size is being used. Gmsh is a good option, but you can also use snappyHexMesh, OpenFOAM's mesh tool, directly from shape data. For post-processing (such as visualization), depend on Paraview.

I cannot write all the details of the settings, including visualization, but feel free to ask if there's anything you don't understand.

## How to run.

Environment: Ubuntu 22.04.3 LTS.

Required software: gmsh (4.11.1), OpenFOAM (v2306).

Visualization: Paraview.

Execute the following commands.

Generate a mesh file (msh file) from the Gmsh geo file.

```
$ gmsh -3 cube.geo
```

Convert from Gmsh format to OpenFOAM format.

```
$ gmshToFoam cube.msh
```

Edit `constant/polyMesh/boundary`. Change the `type` and `physicalType` to `wall` for `Floor`, `LeftWall`, `CubeWall`, and `RightWall`, as these are intended to be walls.

e.g.(LeftWall)

Change

```
    LeftWall
    {
        type            patch;
        physicalType    patch;
        nFaces          20800; // this may vary depending on the situation.
        startFace       8690000; // ...
    }
```

to below.

```
    LeftWall
    {
        type            wall;
        physicalType    wall;
        nFaces          20800;
        startFace       8690000;
    }
```

Change the directory containing initial conditions, named 'zero', to '0'.

```
$ cp -r zero 0
```

Specify the number of parallel processes (in system/decomposeParDict) and execute the following commands.

```
$ decomposePar
```

If using 4 parallel processes, execute the following command.

```
$ mpirun -np 4 pimpleFoam -parallel
```

and if calculation finished.

```
$ reconstructPar
```

and below.

```
$ touch case.foam
```

To visualize.

```
$ paraview case.foam
```
