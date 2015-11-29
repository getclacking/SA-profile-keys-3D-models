// SA Row 3

difference() {

     intersection() {
          translate([20, 16, 0]) rotate([90,0,0]) cylinder(h = 33,r = 33, $fn = 200);
          translate([-16, 24, 0]) rotate([90,0,90]) cylinder(h = 33,r = 33, $fn = 200);
          translate([-29, -16, 0]) rotate([90,0,180]) cylinder(h = 33,r = 33, $fn = 200);
          translate([16, -24, 0]) rotate([90,0,270]) cylinder(h = 33,r = 33, $fn = 200);
     }
     translate([0,0,46]) sphere(r = 33, $fn = 190);
     translate([-33,-33,-65]) cube(66);
}
