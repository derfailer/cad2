
module welle(){
    cylinder(d=40,h = 60);
    translate([0,0,40])cylinder(d=52, h = 60-40);
    translate([0,0,12])linear_extrude(height=2.5,scale=0.1)circle(r=40+2,5);
    difference(){
        translate([0,0,12])cylinder(h = 2.5, d=40+2.5);
        for(i = [0:1:360]){
            rotate([0,0,i])translate([20+2.5/2,0,12+2.5/2])rotate([90,0,0])cylinder(h=1, d=2.5, $fn=20);
            rotate([0,0,i])translate([20,0,12+2.5/2])cube([2.5,1,3]);
        }
    }
}
module all(){
    welle();
    base();
}
module base(){
    for(i=[0:120:240]){
        rotate([0,0,i])translate([74/2,0,0])cylinder(d = 16, h = 12);
    }
    linear_extrude(height=12)offset(r=16)circle(d =74, $fn=3);
}
difference(){
    all();
    translate([0,0,-1])cylinder(d =30, h =8+1);
    translate([0,0,-1])cylinder(d=22, h = 60+2);
    translate([0,0,60-10])cylinder(d=30,h=10+1);
    for(i=[0:120:240]){
        rotate([0,0,i])translate([74/2,0,-1])cylinder(d = 11, h = 12+2);
    }
}

