//
//  ViewController.h
//  UpDown
//
//  Created by Anthony Migliori on 10/17/12.
//  Copyright (c) 2012 amigliori. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{
    
    NSMutableArray *GoUp;
    NSMutableArray *GoOver;
    NSMutableArray *GoDown;
    
    NSInteger randomIndex;
    NSInteger randomIndex2;
    

    int randomNum1;
    int randomNum2;
    int randomNum3;
    int answer;
    int zipCode;
    int score;
    
    int misses;
    
    
    NSMutableArray *serviceLevels;
    NSString *State;
    NSString *serviceLevel;
    

    /* IBOutlets */
    IBOutlet UILabel *Score;
    IBOutlet UILabel *Misses;
    IBOutlet UIButton *Up;
    IBOutlet UIButton *Over;
    IBOutlet UIButton *Down;
    IBOutlet UILabel *stateLabel;
    IBOutlet UILabel  *shipping;
    
}

-(IBAction)pressUpButton:(id)sender;


@end
