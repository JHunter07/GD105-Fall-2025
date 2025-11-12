import processing.svg.*;
size(400,250);
background(255);
beginRecord(SVG, "myCoolPlot2.svg");
circle(40,55,40);//head
triangle(5,100,60,40,20,20);//hair
square(20,75,30);
rect(50,70,60,10);//arm
line(20,90,50,90);
square(20,105,30);
line(20,115,50,115);
rect(20,135,65,20);
rect(65,155,20,30);
square(85,165,20);
line(200,80,50,40,200,150);
circle(200,150,50);
circle(200,20,50);
//circle(100,70,40);
//arc(138,120,80,300,PI,PI+QUARTER_PI);
translate(width/90,height/-5);
rotate(PI/2.9);
arc(200,-80,110, 140, 0, PI+QUARTER_PI, OPEN);

//fill(#F21818);
circle(200,-60,20);//center fill
circle(200,-40,20);
circle(200,-100,20);
circle(200,-120,20);
circle(220,-125,20);
circle(240,-130,20);
circle(260,-135,20);
circle(260,-135,20);
circle(240,-155,20);



//fill(#9306CB);

circle(175,-170,40); //top row
circle(190,-200,40);
circle(205,-230,40);
circle(215,-250,40);
circle(225,-270,40);
circle(240,-295,40);
circle(250,-315,40);

circle(280,-110,40); //bottom row
circle(295,-140,40);
circle(310,-170,40);
circle(325,-200,40);
circle(340,-230,40);
circle(355,-255,40);

noFill();
circle(200,-80,20);//center circles no fill
circle(185,-80,20);
circle(170,-80,20);
circle(160,-80,20);
circle(210,-80,20);
circle(230,-80,20);
circle(230,-100,20);
circle(230,-120,20);
circle(230,-140,20);
circle(230,-160,20);
endRecord();
