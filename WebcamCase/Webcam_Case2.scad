 module
rightBox(){
     module
M3ScrewHole(){
cylinder(r=1.55,h=20,$fn=50);
}
//creates M3 screw hole.

 rotate([0,180,0])difference(){  minkowski(){ cube([82,40,8],center=true); 
cylinder(r=2,h=0.1,$fn=50); 
}  //Creates solid rounded L70,H40,W8 rectangle.

 translate([0,0,1])minkowski(){ cube([70,28,8],center=true); 
cylinder(r=2,h=0.1,$fn=50); 
}  //Creates solid rounded L61,H31,W5 rectangle. W5 is W4+1 to make sure goes all the way through front face. 6mm border, 3mm on either side.
translate([-35,0,5])rotate([0,-90,0])cylinder(r=2,h=10,$fn=50); //Cylindrical cut out for wire

translate([39,18,-4.1])cylinder(h=1.8,r1=2.75,r2=1.55,$fn=50);
translate([-39,-18,-4.1])cylinder(h=1.8,r1=2.75,r2=1.55,$fn=50);
translate([-39,18,-4.1])cylinder(h=1.8,r1=2.75,r2=1.55,$fn=50);
translate([39,-18,-4.1])cylinder(h=1.8,r1=2.75,r2=1.55,$fn=50);
// countersink M3 holes

translate([39,18,-10])M3ScrewHole();
translate([-39,-18,-10])M3ScrewHole();
translate([-39,18,-10])M3ScrewHole();
translate([39,-18,-10])M3ScrewHole();
//Four M3 screw holes at corners.

translate([18,-5,-6])cube([9,9,7]);
//window for sensor.
} 
//creates hollow shell, 6mm border with M3 holes and window.
}
 
 

module
M3ScrewHole(){
cylinder(r=1.5,h=10,$fn=50);
}
//creates M3 screw hole.

 difference(){  minkowski(){ cube([82,40,8],center=true); 
cylinder(r=2,h=0.1,$fn=50); 
}  //Creates solid rounded L70,H40,W8 rectangle.

 translate([0,0,2])minkowski(){ cube([70,28,5],center=true); 
cylinder(r=2,h=0.1,$fn=50); 
}  //Creates solid rounded L61,H31,W5 rectangle. W5 is W4+1 to make sure goes all the way through front face. 6mm border, 3mm on either side.

translate([-35,0,4])rotate([0,-90,0])cylinder(r=2,h=10,$fn=50); //Cylindrical cut out for wire

translate([39,18,-5])M3ScrewHole();
translate([-39,-18,-5])M3ScrewHole();
translate([-39,18,-5])M3ScrewHole();
translate([39,-18,-5])M3ScrewHole();
} //M3 Screwholes.
//creates hollow shell, 6mm border.

difference(){translate([-20,-7,-1])cylinder(r=2,h=4.5,$fn=50);//H(3.5+1) then translate -1z to ensure joined. screw cylinder.
translate([-20,-7,-1])cylinder(r=0.75,h=4.5,$fn=50); // inner cylinder.
} 
// Bottom left cylinder, takes MI.6 Screw.

difference(){translate([22.4,-8.2,-1])cylinder(r=2,h=4.5,$fn=50);//H(3.5+1) then translate -1z to ensure joined. Bottom right screw cylinder.
translate([22.4,-8.2,-1])cylinder(r=0.75,h=4.5,$fn=50); //inner cylinder.
}
//Bottom right cylinder, takes M1.6 screw.

difference(){translate([22.4,8.2,-1])cylinder(r=2,h=4.5,$fn=50); //H(3.5+1) then translate -1z to ensure joined. Top right screw cylinder.
translate([22.4,8.2,-1])cylinder(r=0.75,h=4.5,$fn=50); //inner cylinder.
}
//Top right cylinder, takes M1.6 screw.

rotate([0,180,0])translate([0,50,0])rightBox();
//calls other box.
