//
//  appDelegate.mm
//  blockBreaker
//
//  Created by masanori on 2014/02/02.
//
//

#include "appDelegate.h"

@implementation appDelegate
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    [super applicationDidFinishLaunching:application];
    
    UIStoryboard *sbdMainView = [UIStoryboard storyboardWithName:@"startView" bundle:nil];
    startViewController *startView = [sbdMainView instantiateInitialViewController];
    [self.window setRootViewController:startView];
    
    return YES;
}

- (void) dealloc {
    [super dealloc];
}
@end