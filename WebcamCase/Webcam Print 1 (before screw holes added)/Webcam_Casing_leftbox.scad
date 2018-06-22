  difference(){  minkowski(){ cube([82,40,8],center=true); 
cylinder(r=2,h=0.1,$fn=50); 
}  //Creates solid rounded L70,H40,W8 rectangle.

 translate([0,0,2])minkowski(){ cube([70,28,5],center=true); 
cylinder(r=2,h=0.1,$fn=50); 
}  //Creates solid rounded L61,H31,W5 rectangle. W5 is W4+1 to make sure goes all the way through front face. 6mm border, 3mm on either side.
translate([-35,0,4])rotate([0,-90,0])cylinder(r=2,h=10,$fn=50); //Cylindrical cut out for wire
} 
//creates hollow shell, 6mm border.

difference(){translate([-20.5,-9,-1])cylinder(r=3,h=4.5,$fn=50);//H(3.5+1) then translate -1z to ensure joined. screw cylinder.
translate([-20.5,-9,-1])cylinder(r=0.8,h=4.5,$fn=50); // inner cylinder.
} 
// Bottom left cylinder, takes MI.6 Screw.

difference(){translate([22.4,-10,-1])cylinder(r=3,h=4.5,$fn=50);//H(3.5+1) then translate -1z to ensure joined. Bottom right screw cylinder.
translate([22.4,-10,-1])cylinder(r=0.8,h=4.5,$fn=50); //inner cylinder.
}
//Bottom right cylinder, takes M1.6 screw.

difference(){translate([22.4,10,-1])cylinder(r=3,h=4.5,$fn=50); //H(3.5+1) then translate -1z to ensure joined. Top right screw cylinder.
translate([22.4,10,-1])cylinder(r=0.8,h=4.5,$fn=50); //inner cylinder.
}
//Top right cylinder, takes M1.6 screw.
