/* Piece 5
    O
    O
    OOO
*/ 

$fn = 100; //Set Resolution 

sphereRadius = 5; //Sphere Center = True 
sphereGap = 1; 
rodLength = (sphereRadius*2) + sphereGap; //Rod Center = False 
rodRadius = 1;
pieceColor = "LightBlue";


module piece5(){
//rods
rotate([90,0,0]) cylinder(h=rodLength, r=rodRadius, center = false);
translate([0,-rodLength,0]) rotate([90,0,0]) cylinder(h=rodLength, r=rodRadius, center = false); 
translate([0,(-rodLength*2)]) rotate([0,90,0]) cylinder(h=rodLength, r=rodRadius, center = false); 
translate([rodLength,(-rodLength*2),0]) rotate([0,90,0]) cylinder(h=rodLength, r=rodRadius, center = false);



//spheres 
sphere(r=sphereRadius, center = true); 
translate([0,-rodLength,0]) sphere(r=sphereRadius, center = true);
translate([0,(-rodLength*2),0]) sphere(r=sphereRadius, center = true); 
translate([rodLength,(-rodLength*2),0]) sphere(r=sphereRadius, center = true); 
translate([(rodLength*2),(-rodLength*2),0]) sphere(r=sphereRadius, center = true); 
}

color(pieceColor) piece5();
