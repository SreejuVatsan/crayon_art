class CrayonTip{
	PShape crayon_tip, circle_shape, arc_shape, highlight_shape;
	CrayonTip(int radius_){
		noStroke();
		ellipseMode(CENTER);
		crayon_tip = createShape(GROUP);
		circle_shape = createShape(ELLIPSE, 0, 0, radius_, radius_);
		arc_shape = createShape(ARC,0, 0, radius_, radius_, 0, PI-QUARTER_PI, PIE);
		arc_shape.setFill(color(0,0,0, 70));  // Set fill to gray
		// highlight_shape = createShape(ELLIPSE, 0, 0, radius_/2, radius_/2);
		// highlight_shape.setFill(color(255,255,255, 180));  // Set fill to white
		crayon_tip.addChild(circle_shape);
		crayon_tip.addChild(arc_shape);
		// crayon_tip.addChild(highlight_shape);
	}

	PShape getCrayonTip(color c){
		circle_shape.setFill(c);  // Set fill to white
		return crayon_tip;	
	}
}