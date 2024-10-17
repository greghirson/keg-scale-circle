$fn=80;

din = 8.5;

d = din * 25.4;
r = d / 2;
h = 6;

difference(){

    linear_extrude(h){
        circle(d = d);
     }

    for (angle = [0, 90, 180, 270]){
        rotate([0, 0, angle]) {
            
            translate([r - 10, -16.5, 0])
            translate([-25, 0, 0])
            cube([25, 7, 2]);


            translate([r - 10-7, -16.5, 0])
            cube([7, 33, 2]);

            translate([r - 10, 16.5-7, 0])
            translate([-25, 0, 0])
            cube([25, 7, 2]);

            translate([r - 14 - 28, -12, 0])
            cube([28, 24, 4.25]);

            translate([r - 18, -2.5, 0])
            cube([10, 5, 3]);
        }
    }


}


rotate_extrude(){
translate([r-5, h, 0])
square([5,10]);
}