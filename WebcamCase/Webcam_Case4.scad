 module
rightBox(){
     
     module 
dumbell(){translate([70,50,4.5])rotate([0,-90,0])cylinder(r=2,h=5,$fn=50,center=true);
translate([76,50,4.5])rotate([0,-90,0])cylinder(r=2,h=5,$fn=50,center=true);
    translate([73,50,4.5])rotate([0,-90,0])cylinder(r=1.5,h=10,$fn=50,center=true);
}
 //creates dumbell.

module
M3ScrewHole(){
cylinder(r=1.65,h=20,$fn=50);
}
//creates M3 screw hole.

 
rotate([0,180,0])difference(){  minkowski(){ cube([82,43,8],center=true); 
cylinder(r=2,h=0.1,$fn=50); 
}  //Creates solid rounded L70,H40,W8 rectangle.

 translate([0,0,1])minkowski(){ cube([70,31,8],center=true); 
cylinder(r=2,h=0.1,$fn=50); 
}  //Creates solid rounded L61,H31,W5 rectangle. W5 is W4+1 to make sure goes all the way through front face. 6mm border, 3mm on either side.

//translate([-35,0,4.5])rotate([0,-90,0])cylinder(r=2,h=10,$fn=50); //Cylindrical cut out for wire

translate([25,-93.5,0])rotate([0,0,90])dumbell();
//calls dumbell in right box for wire cut out.

translate([38.5,19,-4.1])cylinder(h=2.3,r1=2.75,r2=1.55,$fn=50);
translate([-38.5,-19,-4.1])cylinder(h=2.3,r1=2.75,r2=1.55,$fn=50);
translate([-38.5,19,-4.1])cylinder(h=2.3,r1=2.75,r2=1.55,$fn=50);
translate([38.5,-19,-4.1])cylinder(h=2.3,r1=2.75,r2=1.55,$fn=50);
// countersink M3 holes

translate([38.5,19,-10])M3ScrewHole();
translate([-38.5,-19,-10])M3ScrewHole();
translate([-38.5,19,-10])M3ScrewHole();
translate([38.5,-19,-10])M3ScrewHole();
//Four M3 screw holes at corners.

translate([21.9,-4,-6])cube([9,9,7],center=true);
//window for sensor. Changed from -4 to 0.5

translate([21.9,-19,-9])cylinder(d=2.3,h=11,$fn=20); //top hole for lens
translate([38.3,9.5,-9])cylinder(d=2.3,h=11,$fn=20);
translate([5.3,9.5,-9])cylinder(d=2.3,h=11,$fn=20); // Holes for lens 
} 

}
 //ABOVE CODE IS RIGHT BOX MODULE with aperture, called later.


     module 
dumbell(){translate([70,50,4.5])rotate([0,-90,0])cylinder(r=2,h=5,$fn=50,center=true);
translate([76,50,4.5])rotate([0,-90,0])cylinder(r=2,h=5,$fn=50,center=true);
    translate([73,50,4.5])rotate([0,-90,0])cylinder(r=1.5,h=10,$fn=50,center=true);
}
 //creates dumbell.
module
M3ScrewHole(){
cylinder(r=1.65,h=10,$fn=50);
}
//creates M3 screw hole.

 difference(){  minkowski(){ cube([82,43,8],center=true); 
cylinder(r=2,h=0.1,$fn=50); 
}  //Creates solid rounded L70,H40,W8 rectangle.

 translate([0,0,2])minkowski(){ cube([70,31,5],center=true); 
cylinder(r=2,h=0.1,$fn=50); 
}  //Creates solid rounded L61,H31,W5 rectangle. W5 is W4+1 to make sure goes all the way through front face. 6mm border, 3mm on either side.


//translate([-35,0,4])rotate([0,-90,0])cylinder(r=2,h=10,$fn=50); //Cylindrical cut out for wire

translate([25,-52.5,0])rotate([0,0,90])dumbell();
//calls dumbell in left box for wire.

translate([38.5,19,-5])M3ScrewHole();
translate([-38.5,-19,-5])M3ScrewHole();
translate([-38.5,19,-5])M3ScrewHole();
translate([38.5,-19,-5])M3ScrewHole();
} //M3 Screwholes.
//LEFT BOX 6mm border.


difference(){translate([-20,-6,-1])cylinder(r=2,h=4.5,$fn=50);//H(3.5+1) then translate -1z to ensure joined. screw cylinder.
translate([-20,-6,-1])cylinder(r=0.8,h=4.5,$fn=50); // inner cylinder.
} 
// Bottom left cylinder, takes MI.6 Screw.


difference(){translate([22.4,-8.2,-1])cylinder(r=2,h=4.5,$fn=50);//H(3.5+1) then translate -1z to ensure joined. Bottom right screw cylinder.
translate([22.4,-8.2,-1])cylinder(r=0.8,h=4.5,$fn=50); //inner cylinder.
}
//Bottom right cylinder, takes M1.6 screw.


difference(){translate([22.4,8.2,-1])cylinder(r=2,h=4.5,$fn=50); //H(3.5+1) then translate -1z to ensure joined. Top right screw cylinder.
translate([22.4,8.2,-1])cylinder(r=0.8,h=4.5,$fn=50); //inner cylinder.
}
//Top right cylinder, takes M1.6 screw.


rotate([0,180,0])translate([0,50,0])rightBox();
//calls right box.


//include <Thorlabs_Threads.scad>
//
//module Optic_Holder(){
//radius=12.4;
//pitch=0.7938;
////radius=12.91   Original threading;
////pitch=0.635;
//difference(){
//    union(){
//    cylinder(d1=39,d2=30,h=9,$fn=100);
//    cylinder(d=41.95,h=2,$fn=100);
//        //Outer cylinders giving width of holder.
//    }
//    
//    translate([0,0,0.5])cylinder(r=radius+0.43,h=9.2,$fn=100);
//    //Inner cylinder. Increased height by 2mm.
//    
//    translate([0,0,-0.1])cylinder(r=radius-1,h=9.2,$fn=100);
//    
//    translate([19,0,-0.1])cylinder(d=2.3,h=8,$fn=20);
//    rotate([0,0,120])translate([19,0,-0.1])cylinder(d=2.3,h=8,$fn=20);
//    rotate([0,0,240])translate([19,0,-0.1])cylinder(d=2.3,h=8,$fn=20);
//    //Screw Holes changed from d= 3.2 to 2.3
//    
//    translate([19,0,2])cylinder(d=6,h=8,$fn=30);
//    rotate([0,0,120])translate([19,0,2])cylinder(d=6,h=8,$fn=30);
//    rotate([0,0,240])translate([19,0,2])cylinder(d=6,h=8,$fn=30); //Screw Holes Indents
//}
//
//inner_thread(radius=radius,threads_per_mm=pitch,thread_length=9);
//} //changed height from 7 to 9mm
//
////CODE ABOVE FOR OPTIC HOLDER MODULE
//
//translate([70,50,-6])Optic_Holder();
////Calls optic holder.

//difference(){ translate([70,60,0])cylinder(r=2,h=0.5,$fn=50);
//    translate([70,60,-0.2])cylinder(r=1.5,h=1,$fn=50);
//}



