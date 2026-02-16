$fn=80;

holder_side = 40;
holder_depth = 4.5;

side = 34;
rim = 2;
foot_depth_outer = 2.5;
foot_depth_inner = 3.75;

cable_width = 4;

difference(){
    cube([holder_side, holder_side, holder_depth]);

    // remove inner deeper box
    translate(
        [(holder_side - side+2*rim)/2, 
        (holder_side - side+2*rim)/2, 
        holder_depth - foot_depth_inner]
        ){
            cube([side-2*rim, side-2*rim, foot_depth_inner + 1]);
        }
   
   // remove shelf for foot
    translate(
        [(holder_side - side)/2, 
        (holder_side - side)/2, 
        holder_depth-foot_depth_outer]
        ){
            cube([side, side, foot_depth_inner + 1]);
        }
            
    // remove channel for wires
    translate([(holder_side - cable_width)/2, 0, holder_depth-1])
        {
            cube([cable_width,20, 2]);
        }
}

//translate([rim, rim, 0]){cube([5,5,5]);}