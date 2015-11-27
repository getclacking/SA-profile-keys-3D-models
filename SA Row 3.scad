// SA Row 3

difference() {
    intersection() {
        translate([24, 0, 0]) sphere(r = 33, $fn = 200);
        translate([-24, 0, 0]) sphere(r = 33, $fn = 200);
        translate([0, 24, 0]) sphere(r = 33, $fn = 200);
        translate([0, -24, 0]) sphere(r = 33, $fn = 200);
    }
    translate([0,0,46]) sphere(r = 33, $fn = 200);
    translate([-33,-33,-64]) cube(66);
}

