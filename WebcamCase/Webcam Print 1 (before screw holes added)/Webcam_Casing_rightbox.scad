   module
M4ScrewHole(){
cylinder(r=2,h=10,$fn=50);
}
//creates M4 screw hole.

  rotate([0,180,0])difference(){  minkowski(){ cube([82,40,8],center=true); 
cylinder(r=2,h=0.1,$fn=50); 
}  //Creates solid rounded L70,H40,W8 rectangle.

 translate([0,0,2])minkowski(){ cube([70,28,6],center=true); 
cylinder(r=2,h=0.1,$fn=50); 
}  //Creates solid rounded L61,H31,W5 rectangle. W5 is W4+1 to make sure goes all the way through front face. 6mm border, 3mm on either side.
translate([-35,0,4])rotate([0,-90,0])cylinder(r=2,h=10,$fn=50); //Cylindrical cut out for wire

translate([39,18,-5])M4ScrewHole();
translate([-39,-18,-5])M4ScrewHole();
translate([-39,18,-5])M4ScrewHole();
translate([39,-18,-5])M4ScrewHole();
//Four M4 screw holes at corners.

translate([22.4,-5,-5])cube([9,9,5]);
//window for sensor.
} 
//creates hollow shell, 6mm border with M4 holes and window.
