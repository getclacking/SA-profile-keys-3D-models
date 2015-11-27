difference() {
    intersection() {
    sphere(r = 200);
    translate([100,0,0]) sphere(r = 200);
    translate([0,100,0]) sphere(r = 200);
    translate([100,100,0]) sphere(r = 200);
    }
    translate([50,50,300])  sphere(r = 200);
    translate([-100,-100,-330]) cube(300);
}

echo(version=version());
