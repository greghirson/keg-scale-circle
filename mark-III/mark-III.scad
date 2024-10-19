$fn=80;


// inside diameter
din = 8.5;

// wall thickness

wall = 5;


// size calculations
dout = din;

d = dout * 25.4 + 2*wall;
r = d / 2;

// thickness

h = 6;

// tolerance on inset for HX-711

tol = 1;

difference(){

    // base circle
    
    linear_extrude(h){
        circle(d = d);
     }
    
    // cutouts for load cells
    
    for (angle = [0, 90, 180, 270]){
        rotate([0, 0, angle]) {
            
            // seat for big c
            translate([r - 40, -16.5, 0])
                cube([28, 33, 1.5]);
         
            // cutout for inner piece to move
            translate([r - 33, -12, 0])
                cube([28, 24, 4.0]);
            
            // outlet for cables
            translate([r-40, 0, 0])
                cube([14, 12, 8], center = true);
            
            // connection channel for cables
            translate([5*r/8, 0, 0])
                cube([2, 1.261 * r, 8], center = true);
            
            //channels to center
            translate([0, -1, 0])
                cube([r - 10, 2, 4]);
        }
    }

    
    // cutout for HX-711
    translate([r/3, 0, 0])
    cube([34 + tol, 21 + tol, 6], center = true);
    
    // central coutout junction
    
    linear_extrude(2)
        circle(3);
    

}

// rim

rotate_extrude(){
translate([r-wall, h, 0])
square([wall,10]);
}


// RJ-11 connector

rotate([0,0,30])
    difference() {  
        translate([r-2, -17/2, h-h])
            cube([19, 17, 20]);  // Larger cube
        translate([r, -15/2, h+1-h])
            cube([20, 15, 18]); // Smaller cube (cutout)
        translate([r+2, 0, h-h])
            cube([2, 10, 5], center=true);
        }

