// SA Row 1

$fn = 400;

difference() {

     intersection() {
          translate([-27.93, 16, 0]) rotate([90,0,0]) cylinder(h = 33.35,r = 43.945);
          translate([-16, 35.83, 0]) rotate([90,0,90]) cylinder(h = 33.35,r = 43.945);
          translate([31, -16, 0]) rotate([90,0,180]) cylinder(h = 33.35,r = 33.35);
          translate([16, -35.83, 0]) rotate([90,0,270]) cylinder(h = 33.35,r = 43.945);
     }
     translate([0,0,46]) sphere(r = 33.35);
     translate([-33.35,-33.35,-66.7]) cube(66.7);
}

