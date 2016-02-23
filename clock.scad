use <escapement.scad>;
use <parametric_involute_gear_v5.0.scad>;

$fn(100);

module klosje () {
difference(){
    union() { 
        cylinder(h=20, r=5, center=false);
        translate([0,0,4])
        cylinder(h=2, r=10, center=false);
        translate([0,0,18])
        cylinder(h=2, r=10, center=false);
    }     
    cylinder(h=20, r=4, center=false);
}    

}



scale=1.0; // scaling factor for the whole model
radius=60*scale; // escapement wheel radius, including the teeth
thickness=5*scale; // thickness along the Z axis
bore=4*scale; // radius of the bores on the wheel and the escapement

rimWidth=6*scale; // width of the escapement wheel's rim
numberSpokes=6; // number of spokes in the escapement wheel
spokeWidth=6*scale; // width of the escapement wheel's spokes

numberTeeth=30;  // number of teeth in the escapement wheel
toothLength=20*scale; // length of the tooth along longest face and to inner radius of the wheel (the tip of the tooth is what counts, not the base)
toothLean=20; // how much the tooth leans over, clockwise, in degrees
toothSharpness=10; //the angle between the two side of each tooth

toothSpan=7.5; // how many teeth the escapement spans
faceAngle=6; // how many degrees the impulse face covers seen from the hub of the escapement wheel
armAngle=22; // angle of the escapement's arms
armWidth=5*scale; //width of the escapement's arms
hubWidth=10*scale; //width of the escapement's hub

escapementWheel(radius,rimWidth,thickness,numberTeeth,toothLength,toothLean,toothSharpness,numberSpokes,spokeWidth,hubWidth,bore);

translate([0,0,5])
klosje();

//translate([0,0,5])
//gear (
//	number_of_teeth=6,
//	circular_pitch=300, diametral_pitch=false,
//	pressure_angle=28,
//	clearance = 0.2,
//	gear_thickness=5,
//	rim_thickness=5,
//	rim_width=5,
//	hub_thickness=5,
//	hub_diameter=15,
//	bore_diameter=4,
//	circles=0,
//	backlash=0,
//	twist=0,
//	involute_facets=0);
//
//translate ([60,0,5])
//gear (
//	number_of_teeth=60,
//	circular_pitch=300, diametral_pitch=false,
//	pressure_angle=28,
//	clearance = 0.2,
//	gear_thickness=5,
//	rim_thickness=5,
//	rim_width=5,
//	hub_thickness=5,
//	hub_diameter=15,
//	bore_diameter=4,
//	circles=4,
//	backlash=0,
//	twist=0,
//	involute_facets=0);

//cube ( size = [150, 150,1], center=true );
