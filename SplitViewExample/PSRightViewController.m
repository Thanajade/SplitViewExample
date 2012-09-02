//
//  PSRightViewController.m
//  SplitViewExample
//
//  Created by Pornjed Sakgitjarung on 9/2/12.
//  Copyright (c) 2012 Pornjed Sakgitjarung. All rights reserved.
//

#import "PSRightViewController.h"

@interface PSRightViewController ()

@end

@implementation PSRightViewController

@synthesize label;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
	return YES;
}

-(void)leftView:(PSLeftViewController *)vc didSelectCountry:(NSString *)countryName
{
    [self.label setText:countryName];
}

@end
