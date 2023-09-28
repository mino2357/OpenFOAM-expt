#!/bin/bash

gmsh -3 cube.geo
gmshToFoam cube.msh

cp -r zero 0
rhoPimpleFoam > FOAM.log
