//
//  manageBlocks.mm
//  blockBreaker
//
//  Created by masanori on 2014/02/02.
//
//

#include "manageBlocks.h"

using namespace std;

int intBlockCount;
BOOL *isBroken;
BOOL isXChanged;
BOOL isYChanged;
float *fltBlockX;
float *fltBlockY;
int ManageBlocks::getIntBlockCount(){
    return intBlockCount;
}
BOOL *ManageBlocks::getIsBroken(){
    return isBroken;
}
BOOL ManageBlocks::getIsXChanged(){
    return isXChanged;
}
BOOL ManageBlocks::getIsYChanged(){
    return isYChanged;
}
float *ManageBlocks::getBlockX(){
    return fltBlockX;
}
float *ManageBlocks::getBlockY(){
    return fltBlockY;
}

void ManageBlocks::createBlocks(){
    intBlockCount = BLOCK_COLUMN_COUNT * BLOCK_ROW_COUNT;
    
    int intColumn = BLOCK_COLUMN_FROM;
    int intRowNum = 0;
    isBroken = new BOOL[intBlockCount];
    fltBlockX = new float[intBlockCount];
    fltBlockY = new float[intBlockCount];
    
    for (int i = 0; i <= intBlockCount - 1; i++){
        isBroken[i] = false;
        fltBlockX[i] = intColumn;
        fltBlockY[i] = BLOCK_ROW_FROM + (BLOCK_HEIGHT * intRowNum);
        
        intRowNum++;
        
        if( intRowNum == BLOCK_ROW_COUNT){
            intColumn += BLOCK_WIDTH;
            intRowNum = 0;
        }
    }
}
BOOL ManageBlocks::checkBumped(float fltBallX,float fltBallY,float fltBlockX,float fltBlockY){
    
    isXChanged = false;
    isYChanged = false;
    
    float fltLeftDistance =0;
    float fltRightDistance = 0;
    float fltTopDistance = 0;
    float fltBottomDistance = 0;
    
    if((fltBlockX <= fltBallX)&&(fltBallX <= fltBlockX + BLOCK_WIDTH)
       &&(fltBlockY <= fltBallY)&&(fltBallY <= fltBlockY + BLOCK_HEIGHT)){
        
        // あとで改善希望
        // Ballがぶつかった地点に一番近い辺を探す
        fltLeftDistance = fltBallX - fltBlockX;
        if(fltLeftDistance < 0){
            fltLeftDistance = fltLeftDistance * -1;
        }
        fltRightDistance = fltBallX - (fltBlockX + BLOCK_WIDTH);
        if(fltRightDistance < 0){
            fltRightDistance = fltRightDistance * -1;
        }
        fltTopDistance = fltBallY - fltBlockY;
        if(fltTopDistance < 0){
            fltTopDistance = fltTopDistance * -1;
        }
        fltBottomDistance = fltBlockY + BLOCK_HEIGHT - fltBallY;
        if(fltBottomDistance < 0){
            fltBottomDistance = fltBottomDistance * -1;
        }
        
        if((fltLeftDistance < fltRightDistance)&&(fltLeftDistance < fltTopDistance)
           &&(fltLeftDistance < fltBottomDistance)){
            isXChanged = true;
        }else if((fltRightDistance < fltLeftDistance)&&(fltRightDistance < fltTopDistance)
                 &&(fltRightDistance < fltBottomDistance)){
            isXChanged = true;
        }else if((fltTopDistance < fltLeftDistance)&&(fltTopDistance < fltRightDistance)
                 &&(fltTopDistance < fltBottomDistance)){
            isYChanged = true;
        }else if((fltBottomDistance < fltLeftDistance)&&(fltBottomDistance < fltRightDistance)
                 &&(fltBottomDistance < fltTopDistance)){
            isYChanged = true;
        }
        
        /*if((fltBlockX == fltBallX)||(fltBallX == fltBlockX + BLOCK_WIDTH)){
            isXChanged = true;
        }
        else if((fltBlockY == fltBallY)||(fltBallY == fltBlockY + BLOCK_HEIGHT)){
            isYChanged = true;
        }*/
        
        
        
        return true;
    }
    return false;
}