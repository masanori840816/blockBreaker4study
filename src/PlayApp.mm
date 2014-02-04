//
//  playApp.mm
//  blockBreaker
//
//  Created by masanori on 2014/02/02.
//
//
#include "playApp.h"

bool isStarted;
float fltPadX;
float fltPadY;
float fltPadWidth;
float fltBallX;
float fltBallY;
float fltBallEngineX;
float fltBallEngineY;
ManageBlocks mngBlocks;

void PlayApp::setup() {
    isStarted = false;
	ofSetLogLevel(OF_LOG_VERBOSE);
    ofBackground(200, 200, 250);
    fltPadX = (float)ofGetWidth()/2;
    fltPadY = (float)ofGetHeight() - 30;
    fltPadWidth = 40;
    fltBallX =  ((float)ofGetWidth() + fltPadWidth) / 2;
    fltBallY = (float)ofGetHeight() - 35;
    fltBallEngineX = 1.2f;
    fltBallEngineY = 1.2f;
    
    mngBlocks.createBlocks();
}
void PlayApp::update(){
    if(isStarted){
        moveBall();
    }
}
void PlayApp::moveBall(){
    fltBallX += fltBallEngineX;
    fltBallY -= fltBallEngineY;
    
    // 画面横端に行ったら+-を逆にする
    if(((float)ofGetWidth() < fltBallX)||(fltBallX < 0)){
        fltBallEngineX = fltBallEngineX * -1;
    }
    // Y座標は天井のみ跳ね返す
    if(fltBallY < 0){
        fltBallEngineY = fltBallEngineY * -1;
    }
    // PadにぶつかったらY軸の+-を逆にする
    if((fltPadX <= fltBallX)&&(fltBallX <= fltPadX + fltPadWidth)
       &&(fltPadY <= fltBallY)&&(fltBallY <= fltPadY + PAD_HEIGHT)){
        fltBallEngineY = fltBallEngineY * -1;
    }
}

//--------------------------------------------------------------
void PlayApp::draw() {
    ofSetColor(0, 0, 0);
    ofRect(fltPadX , fltPadY , fltPadWidth, PAD_HEIGHT);
    
    ofSetColor(0,0,255);
    ofCircle(fltBallX, fltBallY, 5);
    
    
    
    for (int i=0;i<=mngBlocks.getIntBlockCount() - 1; i++){
        ofSetColor(255,0,0);
        
        if(!mngBlocks.getIsBroken()[i]){
            ofRect(mngBlocks.getBlockX()[i], mngBlocks.getBlockY()[i], BLOCK_WIDTH, BLOCK_HEIGHT);
            
            // BallがブロックにぶつかったらStatusを変更する
            if(mngBlocks.checkBumped(fltBallX, fltBallY, mngBlocks.getBlockX()[i], mngBlocks.getBlockY()[i])){
                mngBlocks.getIsBroken()[i] = true;
                
                if(mngBlocks.getIsXChanged()){
                    fltBallEngineX = fltBallEngineX * -1;
                }else if(mngBlocks.getIsYChanged()){
                    fltBallEngineY = fltBallEngineY * -1;
                }
            }
        }
    }
}

//--------------------------------------------------------------
void PlayApp::exit() {
    //
}

//--------------------------------------------------------------
void PlayApp::touchDown(ofTouchEventArgs &touch){
    isStarted = true;
    followMousePosition();
}

//--------------------------------------------------------------
void PlayApp::touchMoved(ofTouchEventArgs &touch){
    followMousePosition();
}
void PlayApp::followMousePosition(){
    if((float)ofGetHeight() /2 < mouseY){
		fltPadX = mouseX - fltPadWidth / 2;
	}
}

//--------------------------------------------------------------
void PlayApp::touchUp(ofTouchEventArgs &touch){
    
}

//--------------------------------------------------------------
void PlayApp::touchDoubleTap(ofTouchEventArgs &touch){
    
}

//--------------------------------------------------------------
void PlayApp::lostFocus(){
    
}

//--------------------------------------------------------------
void PlayApp::gotFocus(){
    
}

//--------------------------------------------------------------
void PlayApp::gotMemoryWarning(){
    
}

//--------------------------------------------------------------
void PlayApp::deviceOrientationChanged(int newOrientation){
    
}


//--------------------------------------------------------------
void PlayApp::touchCancelled(ofTouchEventArgs& args){
    
}