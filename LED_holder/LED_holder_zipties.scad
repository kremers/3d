

connector_height = 9.2-5.2;
connector_width = 4.8;

ring_diameter = 49.6;
inner_ring_diameter = 46.5;

difference() {
    union() {
    cylinder(h=5.2,d=ring_diameter,$fn=60);
    translate([0,0,5.2]) 
      cylinder(h=0.5,d=inner_ring_diameter,$fn=60);
    }

    cylinder(h=5.8, d2=ring_diameter-12.5, d1=16.25*2,$fn=60);
    
    
//cablecuttings
translate([10,30,0.5]) 
  rotate([90,0,0])
    cylinder(h=14,d=5,$fn=100);
translate([-10,-16,0.5]) 
  rotate([90,0,0])
    cylinder(h=14,d=5,$fn=100);
}

/* stecker */
for (i=[1:3])
    rotate([0,0,i*120])
translate([0,0,5.2]) 
intersection(){ 
difference() {
  cylinder(h=4,d=inner_ring_diameter,$fn=100);
  cylinder(h=4,d=inner_ring_diameter-connector_width,$fn=100);

}

 difference() {
  translate([(inner_ring_diameter/2)-4,0,0]) 
    rotate([0,0,15])
      cube([5,11,5],$fn=100);

  translate([(inner_ring_diameter/2)-4,0,-2]) 
    rotate([0,0,15])
      cube([5,8,4.75],$fn=100);
 }
}

/* bottom ring diameter increase */

difference() {
difference() {
  cylinder(h=4.2, d=58, $fn=60);
  cylinder(h=5.2, d=ring_diameter, $fn=60);
}


    /*  copy 1 (pins) */
    for (i=[1:3]) {
    rotate([0,0,i*120+90])
      translate([(inner_ring_diameter/2)+2,0,-2.5]) 
          rotate([0,0,4.8])
        cube([1.5,4,8]);
    }


//cablecuttings
translate([10,30,0.5]) 
  rotate([90,0,0])
    cylinder(h=20,d=3,$fn=100);
translate([-10,-10,0.5]) 
  rotate([90,0,0])
    cylinder(h=20,d=3,$fn=100);

}


