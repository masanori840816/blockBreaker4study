//
//  MainViewController.m
//  blockBreaker
//
//  Created by masanori on 2014/01/26.
//
//

#import "MainViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (void)dealloc {
    [_btnStart release];
    [super dealloc];
}
- (IBAction)btnStartTouched:(id)sender {
    PlayViewController *playController;
    playController = [[[PlayViewController alloc] initWithFrame:[[UIScreen mainScreen] bounds]
                                                            app:new PlayApp()] autorelease];
    [self presentViewController: playController animated:YES completion: nil];
}
@end
