

connector_height = 9.2-5.2;
connector_width = 4.8;

ring_diameter = 49.6;
inner_ring_diameter = 46.5;




difference() {
    

cylinder(h=2.5,d=58,$fn=60);
    
    for (i=[1:3]) {
    rotate([0,0,i*120+90])
      translate([(inner_ring_diameter/2)+2,0,-2.5]) 
        cylinder(h=10, d=2.9, $fn=60);
    }
}
