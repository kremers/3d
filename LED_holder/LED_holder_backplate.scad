
 union() { 
  
    difference() {
translate([0,0,5]) 
cube([35,35,5],true);

union() {
translate([0,-10,5]) 
  cube([36,5,2],true);
translate([0,10,5]) 
  cube([36,5,2],true);
rotate([0,0,90])
  translate([0,10,5]) 
    cube([36,5,2],true);
rotate([0,0,90])
  translate([0,-10,5]) 
    cube([36,5,2],true);
}
}

    
difference() {
    

cylinder(h=2.5,d=58,$fn=60);


    
    for (i=[1:3]) {
    rotate([0,0,i*120+90])
      translate([(46.5/2)+2,0,-2.5]) 
        cylinder(h=10, d=2.9, $fn=60);
    }
}
}   
