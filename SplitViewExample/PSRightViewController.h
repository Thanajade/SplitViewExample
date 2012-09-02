//
//  PSRightViewController.h
//  SplitViewExample
//
//  Created by Pornjed Sakgitjarung on 9/2/12.
//  Copyright (c) 2012 Pornjed Sakgitjarung. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PSLeftViewController.h"

@interface PSRightViewController : UIViewController <LeftViewDelegate, UISplitViewControllerDelegate>

@property (nonatomic, retain) IBOutlet UILabel *label;

@end
