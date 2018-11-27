/*
 * File: World-1-4.k
 * ---------------------------
 * Why so many potholes everywhere? Write a reusable
 * function to make Karel check for potholes
 * autonomously.
 */


import "turns";

/* Main Function */

function FillAllPotHoles(){
	while(frontIsClear()){
	fillPotHole();
	move();
	}
	fillPotHole();
}



/* Sub-Function */

function fillPotHole(){
	if(rightIsClear()){
		turnRight();
		move();
		if(noBeepersPresent()){
			putBeeper();
		}
		turnAround();
		move();
		turnRight();
	}
}

