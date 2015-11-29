// SA Row 1

difference() {

     intersection() {
          translate([-27.93, 16, 0]) rotate([90,0,0]) cylinder(h = 33,r = 43.945, $fn = 200);
          translate([-16, 35.83, 0]) rotate([90,0,90]) cylinder(h = 33,r = 43.945, $fn = 200);
          translate([31, -16, 0]) rotate([90,0,180]) cylinder(h = 33,r = 33, $fn = 200);
          translate([16, -35.83, 0]) rotate([90,0,270]) cylinder(h = 33,r = 43.945, $fn = 200);
     }
     translate([0,0,46]) sphere(r = 33, $fn = 190);
     translate([-33,-33,-66]) cube(66);
}
