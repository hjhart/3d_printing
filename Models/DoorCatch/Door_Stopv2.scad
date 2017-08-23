Wall_Thickness = 4;
Wall_Height = 10;

Baseplate_Length = 40;
Offset_Strut_Length = 10;
Clamp_Radius = 10;

// Main Call
WallMount();
translate([50, 20, 0])
	rotate([0, 0, 180])
		DoorMount();


module DoorMount()
{
	union()
	{
		BasePlate();
		ClampNodule();
	}
}

module WallMount()
{
	union()
	{
		BasePlate();
		Clamp();
	}
}

module BasePlate()
{
	difference()
	{
		// Baseplate
		cube([Wall_Thickness, Baseplate_Length, Wall_Height]);
		// Cutout for screws
		translate([0, 5, Wall_Height/2.0])
			rotate([0, 90, 0])
				translate([0, 0, -0.1])
					cylinder(r=2, h=Wall_Thickness+0.2, $fn=36);
		translate([0, 5, Wall_Height/2.0])
			rotate([0, 90, 0])
				translate([0, 0, Wall_Thickness/2])
					cylinder(r1=2, r2=4, h=Wall_Thickness+0.2, $fn=36);

		translate([0, Baseplate_Length-5, Wall_Height/2.0])
			rotate([0, 90, 0])
				translate([0, 0,  Wall_Thickness/2])
					cylinder(r1=2, r2=4, h=Wall_Thickness+0.2, $fn=36);
		translate([0, Baseplate_Length-5, Wall_Height/2.0])
			rotate([0, 90, 0])
				translate([0, 0, -0.1])
					cylinder(r=2, h=Wall_Thickness+0.2, $fn=36);
	}

	// Offset Strut
	translate([Wall_Thickness, 
				 (Baseplate_Length/2.0) - (Wall_Thickness/2.0), 
				 0])
		cube([Offset_Strut_Length+(Wall_Thickness/2.0),
				Wall_Thickness,
				Wall_Height]);

	// Rounded inserts
	translate([Wall_Thickness, (Baseplate_Length/2.0)+(Wall_Thickness/2.0), 0])
	{
		difference()
		{
			cube([Wall_Thickness, Wall_Thickness, Wall_Height]);
			translate([Wall_Thickness, Wall_Thickness, -0.1])
				cylinder(r=Wall_Thickness, h=Wall_Height+0.2, $fn=36);
		}
	}
	translate([Wall_Thickness, (Baseplate_Length/2.0)-(Wall_Thickness*1.5), 0])
	{
		difference()
		{
			cube([Wall_Thickness, Wall_Thickness, Wall_Height]);
			translate([Wall_Thickness, 0, -0.1])
				cylinder(r=Wall_Thickness, h=Wall_Height+0.2, $fn=36);
		}
	}
}


module Clamp()
{
	difference()
	{
		// Clamp
		translate([Wall_Thickness+Offset_Strut_Length+Clamp_Radius,
					 (Baseplate_Length/2.0),
					 0])
		{
			difference()
			{
				cylinder(r=Clamp_Radius, h=Wall_Height, $fn=36);
				translate([0, 0, -0.1])
					cylinder(r=Clamp_Radius-Wall_Thickness, h=Wall_Height+0.2, $fn=36);
			}
		}

		translate([Wall_Thickness+Offset_Strut_Length+Clamp_Radius,
					 (Baseplate_Length/2.0),
					 -0.1])
			rotate([0, 0, -45])
				cube([Clamp_Radius*2, Clamp_Radius*2, Wall_Height+0.2]);
	}
}



module ClampNodule()
{
	// Clamp
	translate([Wall_Thickness+Offset_Strut_Length+(Clamp_Radius-Wall_Thickness),
				 (Baseplate_Length/2.0),
				 0])
	{
		difference()
		{
			cylinder(r=Clamp_Radius-Wall_Thickness-0.5, h=Wall_Height, $fn=36);
		}
	}
}





