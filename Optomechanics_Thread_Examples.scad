//Thorlabs SM1 Thread examples
//Need to copy Thorlabs_Threads.scad to Library folder

include <Thorlabs_Threads.scad>

//Thorlabs SM1 thread (1.035"-40), pitch=0.635
//RMS thread (0.800"-36), pitch=0.7056
//C-mount thread (1.000"-32), 0.7938


////Internal SM1 Thread example
//radius=12.91;
//pitch=0.635;
//difference(){
//    cylinder(d=31,h=7,$fn=100);
//    translate([0,0,-0.1])cylinder(r=radius+0.43,h=7.2,$fn=100);
//}
//inner_thread(radius=radius,threads_per_mm=pitch,thread_length=7.0);


//Internal SM05 Thread example
radius=6.58;
pitch=0.635;
difference(){
    cylinder(d=25,h=5,$fn=100);
    translate([0,0,-0.1])cylinder(r=radius+0.43,h=7.2,$fn=100);
}
inner_thread(radius=radius,threads_per_mm=pitch,thread_length=5.0);


////External SM1 Thread example
//radius=12.7;
//pitch=0.635;
//difference(){
//    cylinder(r=radius+0.005,h=7,$fn=200);
//    translate([0,0,-0.1])cylinder(d=23.5,h=7.2,$fn=100);
//}
//outer_thread(radius=radius,threads_per_mm = 0.635,thread_length=7.0);
//difference(){
//    translate([0,0,-2.5])cylinder(d=30,h=3,$fn=10);
//    translate([0,0,-2.6])cylinder(d=23.5,h=3.2,$fn=100);
//}


////Internal RMS Thread example
//radius=9.75;
//pitch=0.7056;
//difference(){
//    cylinder(d=31,h=7,$fn=100);
//    translate([0,0,-0.1])cylinder(r=radius+0.44,h=7.2,$fn=100);
//}
//inner_thread(radius=radius,threads_per_mm=pitch,thread_base_width = 0.60,thread_length=7.0);


////Internal C-mount Thread example
//radius=12.4;
//pitch=0.7938;
//difference(){
//    cylinder(d=31,h=7,$fn=100);
//    translate([0,0,-0.1])cylinder(r=radius+0.43,h=7.2,$fn=200);
//}
//inner_thread(radius=radius,threads_per_mm=pitch,thread_height=0.45,thread_length=7.0);


