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
    if(self.popOver)
    {
        [self.popOver dismissPopoverAnimated:YES];
    }
}

-(void)splitViewController:(UISplitViewController *)svc willHideViewController:(UIViewController *)aViewController withBarButtonItem:(UIBarButtonItem *)barButtonItem forPopoverController:(UIPopoverController *)pc
{
    barButtonItem.title = @"Countries";
    NSMutableArray *items = [self.toolbar.items mutableCopy];
    [items insertObject:barButtonItem atIndex:0];
    [self.toolbar setItems:items animated:YES];
    self.popOver = pc;
}

-(void)splitViewController:(UISplitViewController *)svc willShowViewController:(UIViewController *)aViewController invalidatingBarButtonItem:(UIBarButtonItem *)barButtonItem
{
    NSMutableArray *items = [self.toolbar.items mutableCopy];
    if([items count] > 0)
    {
        [items removeObjectAtIndex:0];
    }
    [self.toolbar setItems:items animated:YES];
    self.popOver = nil;
}

@end
