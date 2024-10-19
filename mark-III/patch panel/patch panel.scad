// patch panel

xin = 5;
yin = 1;
zin = 0.75;

x = xin * 25.4;
y = yin * 25.4;
z = zin * 25.4;



difference(){
    // main body
    cube([x, y, z]);
    // edges
    translate([0, 0, 3])
        cube([25.4/2, y, z]);
    translate([x-(25.4/2), 0, 3])
        cube([25.4/2, y, z]);
    // rail for wires
    
    translate([25, 0, 3])
        cube([x-50, y-18, 2.45]);
    
    // openings for connectors
    for( x = [0, 1, 2, 3]){
    translate([25.4 + (x*20.4), 3, 3])
        cube([15, 18, 500]);
    }
}

