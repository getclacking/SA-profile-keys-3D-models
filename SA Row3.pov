// POV-Ray file generated from Rhinoceros.

camera {
   perspective
   location <-23.2305, 63.9274, -61.3886>
   right <1.22367, 2.59052e-16, -0.529546>
   up <0.262647, 0.750109, 0.606921>
   direction <0.297913, -0.661314, 0.688412>
   angle 35.9886
   /*
   // to get an image that's the same as the viewport in Rhino,
   // uncomment this section and render with command line options (alt+c):
   // +w50 +h34
   right <93.5032, 1.97948e-14, -40.4639>
   up <18.1594, 51.8625, 41.9625>
   direction <0.297913, -0.661314, 0.688412>
   */
   look_at <3.29794, 5.03891, -0.0871135>
}


background { color rgb <0.627451, 0.627451, 0.627451> }
global_settings { ambient_light color rgb <0, 0, 0> }


// default light
light_source { <-2359, 5248.92, -5458.84> color rgb <1,1,1> }


// Object1
#declare Object1Material = material {
texture {
  pigment { color rgbf <1, 1, 1, 0> }
  finish  { ambient 1 diffuse 1 }
  }
}
#declare Object1 = object {
   #include "SA Row3_1.inc"
}
object { Object1 material { Object1Material }}


