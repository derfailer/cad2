
module welle(){
        cylinder(d=40,h = 60);
        translate([0,0,40])cylinder(d=52, h = 60-40);
    
    
}
difference(){
    welle();
    translate([0,0,-1])cylinder(d =30, h =8+1);
    translate([0,0,-1])cylinder(d=22, h = 60+2);
    translate([0,0,60-10])cylinder(d=30,h=10+1);
}
module base(){
    for(i=[0:120:240]){
        rotate([0,0,i])translate([74/2,0,0])cylinder(d = 16, h = 12);
    }
    cylinder(h=12, d =74+33, $fn=3);
}
difference(){
    base();
    for(i=[0:120:240]){
        rotate([0,0,i])translate([74/2,0,-1])cylinder(d = 11, h = 12+2);
    }
}
