include <Gears.scad>
include <Thorlabs_Threads.scad>



module outer_cog(){
$fn=200;
translate([0,0,0.3])Gear(m = 1, z = 50, x = 0, h = 5.6, w = 20, D = 0, clearance = -.1, center = true);
difference(){
translate([0,0,-4.4])cylinder(d=54,h=2.2,$fn=200);
cylinder(d=15.5,h=10,$fn=80,center=true);
translate([19,0,-6])cylinder(d=3.2,h=8,$fn=30);
    rotate([0,0,120])translate([19,0,-6])cylinder(d=3.2,h=8,$fn=30);
    rotate([0,0,240])translate([19,0,-6])cylinder(d=3.2,h=8,$fn=30);
translate([0,0,0.7])cylinder(d=24,h=5,$fn=200,center=true);
translate([0,0,-0.1])cylinder(d=18.5,h=5,$fn=200,center=true);
for(a=[0:7]) { 
rotate([0,0,a*45])translate([0,-24,-4])cube([0.6,5,1],center=true);    
}  
}
difference(){
translate([0,0,0])cylinder(d=26,h=6.6,$fn=200,center=true);
cylinder(d=24,h=8,$fn=200,center=true);
}
translate([19,0,-4.4]) inner_thread (radius = 1.25,
			          thread_height = 0.45,
				      thread_base_width = 0.6,
				      thread_top_width = 0.05,
				      thread_length = 2.2,
				      threads_per_mm = 0.5,
				      extra = -0.5,
				      overlap = 0.01); 
rotate([0,0,120])translate([19,0,-4.4]) inner_thread (radius = 1.25,
			          thread_height = 0.45,
				      thread_base_width = 0.6,
				      thread_top_width = 0.05,
				      thread_length = 2.2,
				      threads_per_mm = 0.5,
				      extra = -0.5,
				      overlap = 0.01); 
rotate([0,0,-120])translate([19,0,-4.4]) inner_thread (radius = 1.25,
			          thread_height = 0.45,
				      thread_base_width = 0.6,
				      thread_top_width = 0.05,
				      thread_length = 2.2,
				      threads_per_mm = 0.5,
				      extra = -0.5,
				      overlap = 0.01); 
}



module inner_cog(){
difference(){
gear_herringbone(m = 1, z = 10, x = 0, h = 6, w = 20, w_helix = 0, w_abs = 0, clearance = 0.1, center = true);

cylinder(d=5.1,h=7,$fn=30,center=true);
difference(){
translate([0,0,-2.7])cylinder(d=13,h=2,$fn=200,center=true);
translate([0,0,-2.7])cylinder(d1=9,d2=13,h=2.2,$fn=200,center=true);
}        
}
translate([0,2.5,0])cube([5,2,6],center=true);
translate([0,-2.5,0])cube([5,2,6],center=true);

}



module base(){
difference(){
    union(){
translate([0,6,0])cube([49,64,6],center=true);
translate([0,28,-9.2])cylinder(d=15.1,h=6.2,$fn=100);
translate([0,28,-3.7])cylinder(d=18,h=2,$fn=200);
translate([0,28,-3])cylinder(d=54,h=6,$fn=300);
difference(){
translate([0,-4,-6.9])cube([49,44,8],center=true);
translate([0,28,-11])cylinder(d=56,h=10,$fn=200);
translate([0,15,-8])cube([50,3,10],center=true);    }}
translate([35/2,0,-2])cylinder(d=3.5,h=10,$fn=20,center=true);
translate([-35/2,0,-2])cylinder(d=3.5,h=10,$fn=20,center=true);
translate([0,8,0])cylinder(d=12.5,h=10,$fn=50,center=true);
translate([0,0,3])cylinder(d=28.5,h=6,$fn=200,center=true);
hull(){        
translate([35/2+0.2,0,3])cylinder(d=7.5,h=6,$fn=20,center=true);
translate([35/2-5,0,3])cylinder(d=7.5,h=6,$fn=20,center=true);}       
hull(){        
translate([-35/2-0.2,0,3])cylinder(d=7.5,h=6,$fn=20,center=true);
translate([-35/2+5,0,3])cylinder(d=7.5,h=6,$fn=20,center=true);}        
translate([-15/2,-17,0])cube([15,7,6]);
translate([-7/2,-18,1])cube([7,3,3]);
translate([-7/2,-18,1])rotate([45,0,0])cube([7,3,3]);
translate([0,28,-3])cylinder(d=13,h=15,$fn=50,center=true);
translate([0,28,0.1])cylinder(d1=13,d2=19,h=6,$fn=80,center=true);
translate([-26,-26,-3])rotate([0,0,45])cube([20,40,16],center=true);
translate([26,-26,-3])rotate([0,0,-45])cube([20,40,16],center=true);
translate([13,-5,-4])rotate([0,90,0])cylinder(d=4.2,h=12,$fn=100);
hull(){
translate([19,-5,-4])rotate([0,90,0])cylinder(d=7.95,h=3.15,$fn=6);
translate([19,-5,-10])rotate([0,90,0])cylinder(d=7.95,h=3.15,$fn=6);}
translate([-13,-5,-4])rotate([0,-90,0])cylinder(d=4.2,h=12,$fn=100);
hull(){
translate([-19,-5,-4])rotate([0,-90,0])cylinder(d=7.95,h=3.15,$fn=6);
translate([-19,-5,-10])rotate([0,-90,0])cylinder(d=7.95,h=3.15,$fn=6);}
translate([0,-27,-4])rotate([0,90,90])cylinder(d=6.2,h=13,$fn=100);
hull(){
translate([0,-23,-4])rotate([0,90,90])cylinder(d=11.3,h=4.95,$fn=6);
translate([0,-23,-10])rotate([0,90,90])cylinder(d=11.3,h=4.95,$fn=6);}
translate([9,-11,-4])rotate([45,90,0])cylinder(d=6.2,h=13,$fn=100);
translate([-9,-11,-4])rotate([45,-90,0])cylinder(d=6.2,h=13,$fn=100);
translate([-1,-1,0])rotate([0,0,45])hull(){
translate([0,-23,-4])rotate([0,90,90])cylinder(d=11.3,h=4.95,$fn=6);
translate([0,-23,-10])rotate([0,90,90])cylinder(d=11.3,h=4.95,$fn=6);}
translate([1,-1,0])rotate([0,0,-45])hull(){
translate([0,-23,-4])rotate([0,90,90])cylinder(d=11.3,h=4.95,$fn=6);
translate([0,-23,-10])rotate([0,90,90])cylinder(d=11.3,h=4.95,$fn=6);}
translate([0,-7/2-0.5,-10.9])cube([0.6,7,1],center=true);
}}



module Optic_Holder(){
radius=12.91;
pitch=0.635;
difference(){
    union(){
    cylinder(d1=45,d2=31,h=7,$fn=100);
    cylinder(d=45,h=2,$fn=100);
    }
    translate([0,0,0.5])cylinder(r=radius+0.43,h=7.2,$fn=100);
    translate([0,0,-0.1])cylinder(r=radius-1,h=7.2,$fn=100);
    translate([19,0,-0.1])cylinder(d=3.2,h=8,$fn=20);
    rotate([0,0,120])translate([19,0,-0.1])cylinder(d=3.2,h=8,$fn=20);
    rotate([0,0,240])translate([19,0,-0.1])cylinder(d=3.2,h=8,$fn=20);
    
    translate([19,0,2])cylinder(d=6,h=8,$fn=30);
    rotate([0,0,120])translate([19,0,2])cylinder(d=6,h=8,$fn=30);
    rotate([0,0,240])translate([19,0,2])cylinder(d=6,h=8,$fn=30);
}
inner_thread(radius=radius,threads_per_mm=pitch,thread_length=7.0);
}



module Optic_Retainer(){
radius=12.7;
pitch=0.635;
difference(){
    cylinder(r=radius+0.005,h=5.5,$fn=200);
    translate([0,0,-0.1])cylinder(d=23.5,h=7.2,$fn=100);
}
outer_thread(radius=radius,threads_per_mm = 0.635,thread_length=5.5);
difference(){
    translate([0,0,-2.5])cylinder(d=30,h=3,$fn=10);
    translate([0,0,-2.6])cylinder(d=23.5,h=3.2,$fn=100);
}}



module Tool(){
difference(){
union(){    
    cylinder(d1=34,d2=28.2,h=15,$fn=200);
    cylinder(d=30.5,h=45,$fn=8);
    }
    translate([0,0,-0.1])cylinder(d=30.8,h=3.1,$fn=10);
    cylinder(d=26,h=46,$fn=100);
}}




//translate([0,8,1.1])inner_cog();
//translate([0,28,0])outer_cog();
translate([0,0,5])base();
//translate([0,28,-4.3])rotate([0,180,60])Optic_Holder();
//translate([24.5,-5,1])rotate([0,90,0])cylinder(d=12.7,h=40,$fn=100);
//translate([18.3,-18.3,1])rotate([45,90,0])cylinder(d=12.7,h=40,$fn=100);
//Optic_Retainer();
//Tool();