//
//  playApp.h
//  blockBreaker
//
//  Created by masanori on 2014/02/02.
//
//

#ifndef __blockBreaker__playApp__
#define __blockBreaker__playApp__

#include <iostream>

#endif

#pragma once

#include "ofMain.h"
#include "ofxiPhone.h"
#include "ofxiPhoneExtras.h"
#include "ofVboMesh.h"
#include "manageBlocks.h"

class PlayApp : public ofxiPhoneApp {
	
public:
	void setup();
	void update();
	void draw();
	void exit();
	
	void touchDown(ofTouchEventArgs &touch);
	void touchMoved(ofTouchEventArgs &touch);
	void touchUp(ofTouchEventArgs &touch);
	void touchDoubleTap(ofTouchEventArgs &touch);
	void touchCancelled(ofTouchEventArgs &touch);
    
    void followMousePosition();
    void moveBall();
    
	void lostFocus();
	void gotFocus();
	void gotMemoryWarning();
	void deviceOrientationChanged(int newOrientation);
};
