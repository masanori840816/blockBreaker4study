//
//  manageBlocks.h
//  blockBreaker
//
//  Created by masanori on 2014/02/02.
//
//

#ifndef __blockBreaker__manageBlocks__
#define __blockBreaker__manageBlocks__

#include <iostream>

#endif

class ManageBlocks{
public:
    int getIntBlockCount();
    BOOL *getIsBroke();
    float *getBlockX();
    float *getBlockY();
    void createBlocks();
};