// SA Row 3
difference() {
     intersection_for(n = [1 : 4]) {
          rotate([0, 0, n * 90]) {
               translate([24, 0, 0])
                    sphere(r = 33, $fn = 90);
          }
     }
     translate([0,0,46]) sphere(r = 33, $fn = 90);
     translate([-33,-33,-64]) cube(66);
}
