//
//  MainViewController.h
//  blockBreaker
//
//  Created by masanori on 2014/01/26.
//
//

#import <UIKit/UIKit.h>
#import "PlayViewController.h"
#import "PlayApp.h"

@interface MainViewController : UITableViewController
@property (retain, nonatomic) IBOutlet UIButton *btnStart;
- (IBAction)btnStartTouched:(id)sender;

@end
