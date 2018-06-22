
module
M6screw(){
    translate([0,0,5])cylinder(d=5.7,h=19.5,$fn=50); 
//h=18.5+1 to ensure goes all the way through. Translate is 6-1 to compensate for height shift.
cylinder(d=10,h=6,$fn=50);
//h=6+1 to ensure goes through.
}
//M6 Screw , h= 18.5 module.

difference(){
minkowski(){cube([80,43,18.5], center=true);
    cylinder(r=1.5,$fn=50); //basic rounded box shape.
}
translate([-33.5,15.5,0.0])M6screw();
translate([33.5,15.5,-9.5])M6screw();
translate([-33.5,-15.5,-9.5])M6screw();
translate([33.5,-15.5,-9.5])M6screw();
}
//Creates base with M6 holes.

difference(){union(){translate([14,0,-21])cube([10,46,25],center=true);
translate([-14,0,-21])cube([10,46,25],center=true);
//two tabs holding cam in place.
}

translate([-20,18.5,-13.75])rotate([0,90,0])cylinder(r=1.6,h=40,$fn=50);
translate([-20,-18.5,-13.75])rotate([0,90,0])cylinder(r=1.6,h=40,$fn=50); //two cylinders creating 4 M3 holes.

translate([-19.1,18.5,-13.75])rotate([0,90,0])cylinder(d=6.5,h=2.5,$fn=6);
translate([-19.1,-18.5,-13.75])rotate([0,90,0])cylinder(d=6.5,h=2.5,$fn=6);
//hexagonal cut outs
}
//tabs with M3 holes
