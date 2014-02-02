//
//  startViewController.m
//  blockBreaker
//
//  Created by masanori on 2014/02/02.
//
//

#import "startViewController.h"

@interface startViewController ()

@end

@implementation startViewController

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
    playViewController *playController;
    playController = [[[playViewController alloc] initWithFrame:[[UIScreen mainScreen] bounds]
                                                            app:new PlayApp()] autorelease];
    [self presentViewController: playController animated:YES completion: nil];

}
@end