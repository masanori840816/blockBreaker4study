//
//  blockManager.h
//  blockBreaker
//
//  Created by masanori on 2014/01/29.
//
//

#ifndef __blockBreaker__blockManager__
#define __blockBreaker__blockManager__

#include <iostream>

#endif 

using namespace std;

class BlockManager{
public:
    int getIntBlockCount();
    BOOL *getIsBroke();
    float *getBlockX();
    float *getBlockY();
    void createBlocks();
};