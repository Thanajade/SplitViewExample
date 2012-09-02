//
//  PSCountryViewController.m
//  SplitViewExample
//
//  Created by Pornjed Sakgitjarung on 9/2/12.
//  Copyright (c) 2012 Pornjed Sakgitjarung. All rights reserved.
//

#import "PSCountryViewController.h"
#import "PSLeftViewController.h"
#import "PSRightViewController.h"

@interface PSCountryViewController ()

@end

@implementation PSCountryViewController

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
    PSRightViewController *rightVC = [self.viewControllers objectAtIndex:1];
    self.delegate = rightVC;
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

-(void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    UINavigationController *leftNavVC = [self.viewControllers objectAtIndex:0];
    PSRightViewController *rightVC = [self.viewControllers objectAtIndex:1];
    PSLeftViewController *leftVC = (PSLeftViewController *)leftNavVC.topViewController;
    
    leftVC.delegate = rightVC;
    rightVC.label.text = [leftVC.countries objectAtIndex:0];
}



@end
