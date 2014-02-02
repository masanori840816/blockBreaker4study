//
//  startViewController.h
//  blockBreaker
//
//  Created by masanori on 2014/02/02.
//
//

#import <UIKit/UIKit.h>
#import "PlayViewController.h"
#import "playApp.h"
@interface startViewController : UITableViewController
@property (retain, nonatomic) IBOutlet UIButton *btnStart;
- (IBAction)btnStartTouched:(id)sender;

@end
