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
BOOL *isBrokes;
float *fltBlockX;
float *fltBlockY;
int ManageBlocks::getIntBlockCount(){
    return intBlockCount;
}
BOOL *ManageBlocks::getIsBroke(){
    return isBrokes;
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
    isBrokes = new BOOL[intBlockCount];
    fltBlockX = new float[intBlockCount];
    fltBlockY = new float[intBlockCount];
    
    for (int i = 0; i <= intBlockCount - 1; i++){
        isBrokes[i] = true;
        fltBlockX[i] = intColumn;
        fltBlockY[i] = BLOCK_ROW_FROM + (BLOCK_HEIGHT * intRowNum);
        
        intRowNum++;
        
        if( intRowNum == BLOCK_ROW_COUNT){
            intColumn += BLOCK_WIDTH;
            intRowNum = 0;
        }
    }
}