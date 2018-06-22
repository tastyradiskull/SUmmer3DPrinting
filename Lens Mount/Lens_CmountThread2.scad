include <Thorlabs_Threads.scad>

module Optic_Holder(){
radius=12.4;
pitch=0.7938;
//radius=12.91   Original threading;
//pitch=0.635;
difference(){
    union(){
    cylinder(d1=39,d2=30,h=7,$fn=100);
    cylinder(d=41.95,h=2,$fn=100);
    }
    
    translate([0,0,0.5])cylinder(r=radius+0.43,h=7.2,$fn=100);
    //Inner cylinder
    
    translate([0,0,-0.1])cylinder(r=radius-1,h=7.2,$fn=100);
    
    #translate([19,0,-0.1])cylinder(d=2.3,h=8,$fn=20);
    rotate([0,0,120])translate([19,0,-0.1])cylinder(d=2.3,h=8,$fn=20);
    rotate([0,0,240])translate([19,0,-0.1])cylinder(d=2.3,h=8,$fn=20);
    //Screw Holes changed from d= 3.2 to 2.3
    
    translate([19,0,2])cylinder(d=6,h=8,$fn=30);
    rotate([0,0,120])translate([19,0,2])cylinder(d=6,h=8,$fn=30);
    rotate([0,0,240])translate([19,0,2])cylinder(d=6,h=8,$fn=30); //Screw Holes Indents
}
inner_thread(radius=radius,threads_per_mm=pitch,thread_length=7.0);
}



translate([0,28,-4.3])rotate([0,180,60])Optic_Holder();

//module Optic_Retainer(){
//radius=12.4;
//pitch=0.7938;
////radius=12.7 Original threading;
////pitch=0.635;
//difference(){
//    cylinder(r=radius+0.005,h=5.5,$fn=200);
//    translate([0,0,-0.1])cylinder(d=23.5,h=7.2,$fn=100);
//}
//outer_thread(radius=radius,threads_per_mm = 0.635,thread_length=5.5);
//difference(){
//    translate([0,0,-2.5])cylinder(d=30,h=3,$fn=10);
//    translate([0,0,-2.6])cylinder(d=23.5,h=3.2,$fn=100);
//}}

//Optic_Retainer();

////Internal C-mount Thread example
//radius=12.4;
//pitch=0.7938;
//difference(){
//    cylinder(d=31,h=7,$fn=100);
//    translate([0,0,-0.1])cylinder(r=radius+0.43,h=7.2,$fn=200);
//}
//inner_thread(radius=radius,threads_per_mm=pitch,thread_height=0.45,thread_length=7.0);
