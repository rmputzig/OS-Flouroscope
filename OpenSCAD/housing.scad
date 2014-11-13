
$fn = 100;


difference(){
shell();
translate([0,9.5/2,0]){
	sensor();
}
translate([0,-9.5/2,0]){
	LED();
}
translate([0,-9.5/2,0]){	
	LED_mount();
}
}
//cap();


module sensor(){
translate([0,0,3]){
	union(){
		translate([0,0,-3.2/2]){
		cube([5.3,5.45,20],center=true);
		}
		translate([0,0,10-1.7/2]){
		cube([12.2,11.95,20],center=true);
		}
	}
}
}

module LED(){
translate([0,0,2]){
	union(){
		cylinder(h=5,r=7/2,center=true);
		translate([0,-3.5,0]){
		cube([2,2,5],center=true);
		}
	}
}
}

module LED_mount(){
translate([0,0,10+7.5/2]){
	cube([5.55,2.9,20],center=true);
}
}

module cap(){
difference(){
	union(){
		cube([24,24,1],center=true);
		translate([0,0,1]){
			cube([21.5,21.5,2],center=true);
		}
	}
	translate([0,-9.5/2,0]){
		cylinder(h=10,r=7/2,center=true);
	}
	translate([0,9.5/2,0]){
		cylinder(h=10,r=2,center=true);
	}
}
}

module shell(){
translate([0,0,12.5]){
	difference(){
		translate([0,0,-6.25]){	
			cube([24,24,12.5],center=true);
		}
		translate([0,0,6.5]){
			cube([22,22,20],center=true);
		}
		//cylinder(h=40,r=8.5,center=true);
	}
}
}


