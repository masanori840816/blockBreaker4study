//
//  PlayViewController.m
//  blockBreaker
//
//  Created by masanori on 2014/01/26.
//
//

#import "PlayViewController.h"

@interface PlayViewController ()

@end

@implementation PlayViewController
- (id) initWithFrame:(CGRect)frame app:(ofxiPhoneApp *)app {
    
    ofxiPhoneGetOFWindow()->setOrientation( OF_ORIENTATION_DEFAULT );   //-- default portait orientation.
    
    UINavigationBar *navBar = [[UINavigationBar alloc] initWithFrame:CGRectMake(0, 20, 1026, 40)];
    navBar.barStyle = UIBarStyleBlackOpaque;
    UINavigationItem *navItem = [[UINavigationItem alloc] init];
    UIBarButtonItem *buttonCancel = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemCancel target:self action:@selector(buttonCancelTouched)];
    
    navItem.leftBarButtonItem = buttonCancel;
    [navBar pushNavigationItem:navItem animated:YES];
    
    self = [super initWithFrame:frame app:app];
    [self.view addSubview:navBar];
    
    self.navigationItem.leftBarButtonItem = buttonCancel;
    
    return self;
}

- (BOOL) shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation {
    return NO;
}

- (void) buttonCancelTouched{
    [self dismissViewControllerAnimated:YES completion:NULL];
}
@end
