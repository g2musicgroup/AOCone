//
//  ViewController.m
//  testApp
//
//  Created by Gawain Bracy II on 9/22/13.
//  Copyright (c) 2013 Gawain Bracy II. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    // Call the Append function with two NSStrings. Capture the result and display a UIAlertView with the appended string using displayAlertWithString.
    
    // Capture and append strings from function append
    NSString *appendStringAlertMessage = [self Append:@"G2 is the best " addString:@"developer ever!"];
    
    // create alert view with appended string
    UIAlertView *appendStringAlertView = [[UIAlertView alloc] initWithTitle:@"HEY!!!" message:appendStringAlertMessage delegate:nil cancelButtonTitle:@"The World Agrees" otherButtonTitles:nil];
    // check if alert view was created successfully
    if (appendStringAlertView != nil)
    {
        // show alert view
        [appendStringAlertView show];
    }
    
    // Call the Add function passing in two integer values. Capture the return of this function into a variable.
    NSInteger addedNumbers = [self Add:30 addTo:12];
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
