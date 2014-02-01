//
//  blockManager.cpp
//  blockBreaker
//
//  Created by masanori on 2014/01/29.
//
//

#include "blockManager.h"

int intBlockCount;
BOOL *isBrokes;
float *fltBlockX;
float *fltBlockY;
int BlockManager::getIntBlockCount(){
    return intBlockCount;
}
BOOL *BlockManager::getIsBroke(){
    return isBrokes;
}
float *BlockManager::getBlockX(){
    return fltBlockX;
}
float *BlockManager::getBlockY(){
    return fltBlockY;
}

void BlockManager::createBlocks(){
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