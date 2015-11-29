// SA All Rows

module black_text(s, size) {color("Black") text(s, size); }
module white_text(s, size) {color("White") text(s, size); }
module text_label(a) { translate([a[0] * 22, (a[1] * 19) + 2, 0]) { white_text(str(a[1],"u"), 4); }}

module sa_r1 (res) {
     difference() {
          intersection() {
               translate([-27.93, 16, 0]) rotate([90,0,0])   cylinder(h = 33,r = 43.945, $fn = res);
               translate([-16, 35.83, 0]) rotate([90,0,90])  cylinder(h = 33,r = 43.945, $fn = res);
               translate([31, -16, 0])    rotate([90,0,180]) cylinder(h = 33,r = 33, $fn = res);
               translate([16, -35.83, 0]) rotate([90,0,270]) cylinder(h = 33,r = 43.945, $fn = res); }
          translate([0,0,46]) sphere(r = 33, $fn = res);
          translate([-33,-33,-66]) cube(66); }}

module sa_r1_slice () { intersection() { sa_r1(100); translate([-33,1,0]) cube([66,1,66]); }}
module sa_r1_right_end() { difference() { sa_r1(100); translate([-33,0,0]) cube(66); }}
module sa_r1_left_end() { difference() { sa_r1(100); translate([-33,-66,0]) cube(66); }}

module sa_r2 (res) {
     difference() {
          intersection() {
               translate([-20, 16, 0])   rotate([90,0,0])   cylinder(h = 33,r = 33, $fn = res);
               translate([-16, 24, 0])  rotate([90,0,90])  cylinder(h = 33,r = 33, $fn = res);
               translate([29, -16, 0]) rotate([90,0,180]) cylinder(h = 33,r = 33, $fn = res);
               translate([16, -24, 0])  rotate([90,0,270]) cylinder(h = 33,r = 33, $fn = res); }
          translate([0,0,46]) sphere(r = 33, $fn = res);
          translate([-33,-33,-65]) cube(66); }}

module sa_r2_slice () { intersection() { sa_r2(100); translate([-33,1,0]) cube([66,1,66]); }}
module sa_r2_right_end() { difference() { sa_r2(100); translate([-33,0,0]) cube(66); }}
module sa_r2_left_end() { difference() { sa_r2(100); translate([-33,-66,0]) cube(66); }}

module sa_r3 (res) {
     difference() {
          intersection() {
               translate([24, 16, 0])   rotate([90,0,0])   cylinder(h = 33,r = 33, $fn = res);
               translate([-16, 24, 0])  rotate([90,0,90])  cylinder(h = 33,r = 33, $fn = res);
               translate([-24, -16, 0]) rotate([90,0,180]) cylinder(h = 33,r = 33, $fn = res);
               translate([16, -24, 0])  rotate([90,0,270]) cylinder(h = 33,r = 33, $fn = res); }
          translate([0,0,46]) sphere(r = 33, $fn = res);
          translate([-33,-33,-64]) cube(66); }}

module sa_r3_slice () { intersection() { sa_r3(100); translate([-33,1,0]) cube([66,1,66]); }}
module sa_r3_right_end() { difference() { sa_r3(100); translate([-33,0,0]) cube(66); }}
module sa_r3_left_end() { difference() { sa_r3(100); translate([-33,-66,0]) cube(66); }}

module sa_r4 (res) {
     difference() {
          intersection() {
               translate([20, 16, 0])   rotate([90,0,0])   cylinder(h = 33,r = 33, $fn = res);
               translate([-16, 24, 0])  rotate([90,0,90])  cylinder(h = 33,r = 33, $fn = res);
               translate([-29, -16, 0]) rotate([90,0,180]) cylinder(h = 33,r = 33, $fn = res);
               translate([16, -24, 0])  rotate([90,0,270]) cylinder(h = 33,r = 33, $fn = res); }
          translate([0,0,46]) sphere(r = 33, $fn = res);
          translate([-33,-33,-65]) cube(66); }}

module sa_r4_slice () { intersection() { sa_r4(100); translate([-33,1,0]) cube([66,1,66]); }}
module sa_r4_right_end() { difference() { sa_r4(100); translate([-33,0,0]) cube(66); }}
module sa_r4_left_end() { difference() { sa_r4(100); translate([-33,-66,0]) cube(66); }}

module sa_r3_bump (res) {
     difference() {
          intersection() {
               translate([24, 16, 0])   rotate([90,0,0])   cylinder(h = 33,r = 33, $fn = res);
               translate([-16, 24, 0])  rotate([90,0,90])  cylinder(h = 33,r = 33, $fn = res);
               translate([-24, -16, 0]) rotate([90,0,180]) cylinder(h = 33,r = 33, $fn = res);
               translate([16, -24, 0])  rotate([90,0,270]) cylinder(h = 33,r = 33, $fn = res);
               translate([0,0,-19]) sphere(r = 33, $fn = res); }
          translate([-33,-33,-64]) cube(66); }}

module sa_r3_bump_slice () {intersection() {sa_r3_bump(100); translate([-33,1,0]) cube([66,1,66]);}}
module sa_r3_bump_right_end() {difference() {sa_r3_bump(100); translate([-33,0,0]) cube(66);}}
module sa_r3_bump_left_end() {difference() {sa_r3_bump(100); translate([-33,-66,0]) cube(66);}}

sizes = [
     [1, 1,    1, 1],
     [2, 1.25, 4, 5],
     [3, 1.5 , 0, 9],
     [4, 1.75, -5, 14],
     [5, 2.0 , -10, 19],
     [6, 2.25, -15, 24],
     [7, 2.5 , -19, 28],
     [8, 2.75, -23, 32],
     [9, 6.25, -86, 95],
     ];

// R1
translate([10,390,10]) white_text("R1");
translate([50,390,10])
for(a = sizes) {
     text_label(a);
     translate([a[0] * 22, 0, 0]) {
          union(){
          translate([9, 9, 0]) sa_r1_right_end();
          if(a[0] > 1) translate([9, a[2], 0]) scale([1, a[3],1]) sa_r1_slice();
          translate([9, 9 + (a[1] - 1) * 18, 0]) sa_r1_left_end(); }}}

// R2
translate([10,260,10]) white_text("R2");
translate([50,260,10])
for(a = sizes) {
     text_label(a);
     translate([a[0] * 22, 0, 0]) {
          union(){
          translate([9, 9, 0]) sa_r2_right_end();
          if(a[0] > 1) translate([9, a[2], 0]) scale([1, a[3],1]) sa_r2_slice();
          translate([9, 9 + (a[1] - 1) * 18, 0]) sa_r2_left_end(); }}}

// R3
translate([10,130,10]) white_text("R3");
translate([50,130,10])
for(a = sizes) {
     text_label(a);
     translate([a[0] * 22, 0, 0]) {
          union(){
          translate([9, 9, 0]) sa_r3_right_end();
          if(a[0] > 1) translate([9, a[2], 0]) scale([1, a[3],1]) sa_r3_slice();
          translate([9, 9 + (a[1] - 1) * 18, 0]) sa_r3_left_end(); }}}

// R4
translate([10,0,10]) white_text("R4");
translate([50,0,10])
for(a = sizes) {
     text_label(a);
     translate([a[0] * 22, 0, 0]) {
          union(){
          translate([9, 9, 0]) sa_r4_right_end();
          if(a[0] > 1) translate([9, a[2], 0]) scale([1, a[3],1]) sa_r4_slice();
          translate([9, 9 + (a[1] - 1) * 18, 0]) sa_r4_left_end(); }}}

// R3 bump
translate([10,-130,10]) white_text("R3 bump");
translate([50,-130,10])
for(a = sizes) {
     text_label(a);
     translate([a[0] * 22, 0, 0]) {
          union(){
          translate([9, 9, 0]) sa_r3_bump_right_end();
          if(a[0] > 1) translate([9, a[2], 0]) scale([1, a[3],1]) sa_r3_bump_slice();
          translate([9, 9 + (a[1] - 1) * 18, 0]) sa_r3_bump_left_end(); }}}
