intern_width=18;
intern_height=2;
tunnel_width=2;
tunnel_len=25.4;
gap=0.2;

module link() {
	translate([3/2+(5+intern_height)/2-tunnel_width,0,3/2+(5+intern_height)/2-tunnel_width]) rotate([270,0,0])
		cylinder(d=3,h=gap+tunnel_width*2, $fs=0.1);
	translate([3/2+(5+intern_height)/2-tunnel_width,gap+tunnel_width,3/2+(5+intern_height)/2-tunnel_width]) rotate([270,0,0]) hull() {
		cylinder(d=5+intern_height/2,h=tunnel_width, $fs=0.1);
		translate([-2.5-intern_height/4,0,0]) cube([5+intern_height/2,2.5+intern_height/4,tunnel_width]);
	}
	translate([3/2+(5+intern_height)/2-tunnel_width,intern_width+(gap+tunnel_width)*2+gap,3/2+(5+intern_height)/2-tunnel_width]) rotate([270,0,0]) hull() {
		cylinder(d=5+intern_height/2,h=tunnel_width, $fs=0.1);
		translate([-2.5-intern_height/4,0,0]) cube([5+intern_height/2,2.5+intern_height/4,tunnel_width]);
	}
	translate([3/2+(5+intern_height)/2-tunnel_width,intern_width+(gap+tunnel_width)*2+gap,3/2+(5+intern_height)/2-tunnel_width]) rotate([270,0,0])
		cylinder(d=3,h=gap+tunnel_width*2, $fs=0.1);
	translate([tunnel_len-4,gap+tunnel_width,0])
		cube([4,intern_width+(gap+tunnel_width)*2,tunnel_width]);
	translate([5+intern_height/2+gap,0,0])
		cube([tunnel_len-5-intern_height/2-gap,tunnel_width*2+gap,tunnel_width]);
	translate([5+intern_height/2+gap,intern_width+(gap+tunnel_width)*3-tunnel_width,0])
		cube([tunnel_len-5-intern_height/2-gap,tunnel_width*2+gap,tunnel_width]);
	translate([tunnel_width+gap*2,gap+tunnel_width,0])
		cube([4,intern_width+(gap+tunnel_width)*2,tunnel_width]);
	translate([tunnel_len+3/2+(5+intern_height)/2-tunnel_width,0,3/2+(5+intern_height)/2-tunnel_width]) rotate([270,0,0]) difference() {
		hull() {
			cylinder(d=5+intern_height/2,h=tunnel_width, $fs=0.1);
			translate([-2.5-intern_height/4,0,0]) cube([5+intern_height/2,2.5+intern_height/4,tunnel_width]);
		}
		cylinder(d=3+gap,h=tunnel_width, $fs=0.1);
	}
	translate([tunnel_len+3/2+(5+intern_height)/2-tunnel_width,intern_width+(gap+tunnel_width)*3+gap,3/2+(5+intern_height)/2-tunnel_width]) rotate([270,0,0]) difference() {
		hull() {
			cylinder(d=5+intern_height/2,h=tunnel_width, $fs=0.1);
			translate([-2.5-intern_height/4,0,0]) cube([5+intern_height/2,2.5+intern_height/4,tunnel_width]);
		}
		cylinder(d=3+gap,h=tunnel_width, $fs=0.1);
	}
}

link();
//translate([tunnel_len,intern_width+(gap+tunnel_width)*4,tunnel_width*2+intern_height]) rotate([180,0,0]) link();
//translate([2*tunnel_len,0,0]) link();