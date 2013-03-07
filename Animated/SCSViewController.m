//
//  SCSViewController.m
//  Animated
//
//  Created by Richard E Millet on 3/6/13.
//  Copyright (c) 2013 Richard Millet. All rights reserved.
//

#import "SCSViewController.h"

@interface SCSViewController ()

@end

@implementation SCSViewController {
	bool changeColor;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - My Added Methods

- (IBAction)showOffMore:(UITapGestureRecognizer *)sender {
	
	[UIView animateWithDuration:2
					 animations:^{
						 self.view.backgroundColor = [UIColor greenColor];
						 self.view.transform = CGAffineTransformMakeScale(0.2, 0.1);
					 }
					 completion:^(BOOL finished) {
						 self.view.backgroundColor = [UIColor redColor];
						 self.view.transform = CGAffineTransformIdentity;
					 }];
}

- (IBAction)showOff:(UITapGestureRecognizer *)sender {
	UIColor *color;
	CGFloat sx;
	CGFloat sy;
	
	if (!changeColor) {
		changeColor = true;
		color = [UIColor greenColor];
		sx = 0.2;
		sy = 0.2;
	} else {
		changeColor = false;
		color = [UIColor redColor];
		sx = 1;
		sy = 1;
	}
	
	[UIView animateWithDuration:2 animations:^{
		self.view.backgroundColor = color;
		self.view.transform = CGAffineTransformMakeScale(sx, sy);		
	}];
	
//	self.view.backgroundColor = color;
//	self.view.transform = CGAffineTransformIdentity;
}

@end
