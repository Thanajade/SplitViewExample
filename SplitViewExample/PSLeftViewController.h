//
//  PSLeftViewController.h
//  SplitViewExample
//
//  Created by Pornjed Sakgitjarung on 9/2/12.
//  Copyright (c) 2012 Pornjed Sakgitjarung. All rights reserved.
//

#import <UIKit/UIKit.h>

@class PSLeftViewController;
@protocol LeftViewDelegate <NSObject>

-(void)leftView:(PSLeftViewController *)vc didSelectCountry:(NSString *)countryName;

@end

@interface PSLeftViewController : UITableViewController

@property (nonatomic, retain) NSMutableArray *countries;
@property (nonatomic, assign) id<LeftViewDelegate> delegate;

@end
