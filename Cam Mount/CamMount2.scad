module
M6screw(){
    translate([0,0,5])cylinder(d=5.8,h=19.5,$fn=50); 
//h=18.5+1 to ensure goes all the way through. Translate is 6-1 to compensate for height shift.
cylinder(d=10,h=6,$fn=50);
//h=6+1 to ensure goes through.
}
//M6 Screw , h= 18.5 module.

difference(){
minkowski(){cube([80,43,12], center=true);
    cylinder(r=1.5,$fn=50); //basic rounded box shape.
}
translate([-25,15.5,-6.5])M6screw();
translate([25,15.5,-6.5])M6screw();
translate([-25,-15.5,-6.5])M6screw();
translate([25,-15.5,-6.5])M6screw();
}
//Creates base with M6 holes.

difference(){union(){translate([11,0,-14])cube([7,46,25],center=true);
translate([-11,0,-14])cube([7,46,25],center=true);
//two tabs holding cam in place.
}

translate([-20,18.5,-10.25])rotate([0,90,0])cylinder(r=1.6,h=40,$fn=50);
translate([-20,-18.5,-10.25])rotate([0,90,0])cylinder(r=1.6,h=40,$fn=50); //two cylinders creating 4 M3 holes.

translate([-14.8,18.5,-10.25])rotate([0,90,0])cylinder(d=7,h=2.5,$fn=6);
translate([-14.8,-18.5,-10.25])rotate([0,90,0])cylinder(d=7,h=2.5,$fn=6);
//hexagonal cut outs
}
//tabs with M3 holes

//translate([0,0,-10])cube([16,46,25], center=true);
