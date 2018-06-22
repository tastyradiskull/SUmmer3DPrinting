


cube([30,30,20],center=true);



//cylinder(r=10,h=20,center=true,$fn=100);


//difference(){
//minkowski(){
//cube([20,20,20],center=true);
//cylinder(r=5,h=0.01,$fn=50);
//}
//cylinder(d=20,h=21,center=true);
//}


//difference(){
//minkowski(){
//cube([30,30,20],center=true);
//cylinder(r=2,h=0.1,$fn=50);
//}
//cylinder(r=10,h=21,center=true,$fn=100);
//}



//translate([0,15,0])cube([30,30,20],center=true);
//cylinder(r=10,h=30,center=true,$fn=100);



//difference(){
//union(){
//cube([30,30,20],center=true);
//cube([10,40,20],center=true);
//}
//cylinder(r=10,h=20.2,center=true,$fn=100);
//}



//difference(){
//minkowski(){
//cube([30,30,20],center=true);
//rotate([0,0,0])cylinder(r=2,h=0.001,center=true,$fn=50);
//}
//cylinder(d=25.4,h=21,center=true,$fn=150);
//}



//difference(){
//minkowski(){
//cube([30,30,10],center=true);
//cylinder(r=2,h=0.1,$fn=50);
//}
//cylinder(r=10,h=21,center=true,$fn=100);
//translate([0,0,10])cylinder(r=11,h=21,center=true,$fn=100);
//}


module Block(){
difference(){
cube([40,40,20],center=true);
hull(){
translate([10,0,0])cylinder(r=3,h=21,center=true,$fn=100);
translate([-10,0,0])cylinder(r=3,h=21,center=true,$fn=100);
}
translate([0,10,0])rotate([0,90,0])cylinder(d=6,h=41,center=true);
translate([0,-10,0])rotate([0,90,0])cylinder(d=6,h=41,center=true);
}
}

//Block();
//translate([50,0,0])Block();
//translate([0,0,30])Block();




//hull(){
//translate([10,0,0])cylinder(r=3,h=21,center=true,$fn=100);
//translate([-10,0,0])cylinder(r=3,h=21,center=true,$fn=100);
////translate([0,10,0])cylinder(r=3,h=21,center=true,$fn=100);
//}



//difference(){
//minkowski(){
//cube([30,30,20],center=true);
//cylinder(r=2,h=0.1,$fn=50);
//}
//hull(){
//translate([10,0,0])cylinder(r=3,h=21,center=true,$fn=100);
//translate([-10,0,0])cylinder(r=3,h=21,center=true,$fn=100);
//}
//translate([0,10,0])rotate([0,90,0])cylinder(r=3,h=35,center=true,$fn=100);
//translate([0,-10,0])rotate([0,90,0])cylinder(r=3,h=35,center=true,$fn=100);
//}



//block();
//creates a new object called block which can then be called using block();
//translate([40,0,0])block();
//translate([0,0,25])block();  //can use module multiple times



//difference(){
//union(){    
//minkowski(){
//cube([30,30,20],center=true);
//cylinder(r=2,h=0.1,$fn=50);
//}
//rotate([0,90,0])cylinder(r=5,h=50,center=true);
//}
//hull(){
//translate([10,0,0])cylinder(r=3,h=21,center=true,$fn=100);
//translate([-10,0,0])cylinder(r=3,h=21,center=true,$fn=100);
//}
//translate([0,10,0])rotate([0,90,0])cylinder(r=3,h=35,center=true,$fn=100);
//translate([0,-10,0])rotate([0,90,0])cylinder(r=3,h=35,center=true,$fn=100);
//}



//text("Ultimaker",size=20);

//size=20 defines font size



//difference(){
//minkowski(){
//cube([60,30,20],center=true);
//sphere(r=2,$fn=50);
//}
//
//translate([-30,-5,11.5])text("Ultimaker",size=10);
//}



module Linear_Stage(T=10,A=50){
$fn=200;
//A=50;
B=10;
d=1.5;
//T=10;
difference(){
cube([80,80,T],center=true);
cylinder(r=12.7,h=T+1,center=true);
hull(){
translate([A/2,A/2,0])cylinder(r=0.7,h=T+1,center=true);
translate([B/2,A/2,0])cylinder(r=0.7,h=T+1,center=true);
}
hull(){
translate([-A/2,A/2,0])cylinder(r=0.7,h=T+1,center=true);
translate([-B/2,A/2,0])cylinder(r=0.7,h=T+1,center=true);
}
hull(){
translate([-A/2,-A/2,0])cylinder(r=0.7,h=T+1,center=true);
translate([-A/2,A/2,0])cylinder(r=0.7,h=T+1,center=true);
}
hull(){
translate([-A/2,-A/2,0])cylinder(r=0.7,h=T+1,center=true);
translate([-B/2,-A/2,0])cylinder(r=0.7,h=T+1,center=true);
}
hull(){
translate([A/2,-A/2,0])cylinder(r=0.7,h=T+1,center=true);
translate([B/2,-A/2,0])cylinder(r=0.7,h=T+1,center=true);
}
hull(){
translate([A/2,-A/2,0])cylinder(r=0.7,h=T+1,center=true);
translate([A/2,A/2,0])cylinder(r=0.7,h=T+1,center=true);
}
translate([0,A/2+0.7+3+d,0])cube([A+2*0.7,6,T+1],center=true);
translate([0,-A/2-0.7-1.5/2-d,0])cube([A+2*0.7,1.5,T+1],center=true);
translate([0,52,0])rotate([90,0,0])cylinder(r=3.3/2,h=20);
}
}



//Linear_Stage(T=8,A=55);
//translate([0,0,8.5])rotate([0,0,90])Linear_Stage(T=8,A=40);



//Example designs of 30mm cage plates

include <Cage_Plates.scad> //Need to copy Cage_Plates.scad to Library folder

//Cage_Plate30_B();
//Cage_Plate30_B_R();
//Cage_Plate30_H(hd=25.4);
//Cage_Plate30_H_R();
//Cage_Plate30_M_R();
//Cage_Plate30_Magnetic_Base();
//Cage_Plate30_Magnetic_Holder();
//Cage_Plate30_Base();
//Cage_Plate30_SM1();



//Example design using screw threads

include <Threads.scad>
//Need to copy Threads.scad to Library folder

//metric_thread (diameter=6, pitch=1, length=10);

//difference(){
//metric_thread (diameter=30, pitch=2, length=10);
//cylinder(d=25,h=22,center=true,$fn=100);
//}



//Example design using gears

include <Gears.scad>
//Need to copy Gears.scad to Library folder

//gear(m = 1, z = 50, x = 0, h = 6, w = 20, D = 0, clearance = -.1, center = true);
//translate([30.2,0,0])rotate([0,0,18])gear(m = 1, z = 10, x = 0, h = 6, w = 20, D = 0, clearance = -.1, center = true);



//// Example for first 3D print
//
//difference(){
//cylinder(d=30,h=15,$fn=200,center=true);
//cylinder(d=10,h=16,$fn=200,center=true);
//translate([0,0,-5])cube([12,31,6],center=true);    
//}
