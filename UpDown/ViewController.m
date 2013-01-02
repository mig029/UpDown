//
//  ViewController.m
//  UpDown
//
//  Created by Anthony Migliori on 10/17/12.
//  Copyright (c) 2012 amigliori. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

-(IBAction)PressUpButton:(id)sender{
    if(answer == 0){
        score += 1;
        Score.text = [NSString stringWithFormat:@"%i", score];
        [self runAllMethods];

        }
    else{
        misses += 1;
        Misses.text = [NSString stringWithFormat:@"%i", misses];
        [self runAllMethods];
    }

    
}

-(IBAction)PressOverButton:(id)sender{
    // if ([field.text intValue] == 0)  {
    if(answer == 1){
        score += 1;
        Score.text = [NSString stringWithFormat:@"%i", score];
        [self runAllMethods];

    }
    else{
        misses += 1;
        Misses.text = [NSString stringWithFormat:@"%i", misses];
        [self runAllMethods];
    }
}

-(IBAction)PressDownButton:(id)sender{
    // if ([field.text intValue] == 0)  {
    if(answer == 2){
        score += 1;
        Score.text = [NSString stringWithFormat:@"%i", score];
        [self runAllMethods];
    }
    else{
        misses += 1;
        Misses.text = [NSString stringWithFormat:@"%i", misses];
        [self runAllMethods];

    }
}


- (void)viewDidLoad
{
    [super viewDidLoad];
    
    score = 0;
    misses = 0;
    answer = 0;
    [self runAllMethods];
    
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(int)setIndex{
    //([max intValue] - [min intValue]) + [min intValue]
    randomNum1  = arc4random_uniform(539) +10;
    
    if(randomNum1 >=89 && randomNum1 <=99){
        randomNum1 -=20;
    }
       
       else if((randomNum1 >=100 && randomNum1 <=109) || randomNum1 == 217 || randomNum1 == 529){
        randomNum1 += 10;
       }
    return randomNum1;
}


-(int)setIndex2{
    randomNum2 = arc4random() % 100;//[sizeof([BINS objectAtIndex: randomNum])];
    if(randomNum2 != 0)
        return randomNum2;
    
    else{
        randomNum2 = 1;
        return randomNum2;
        }
    }

-(int)setIndex3{
    int favor = 0;
    favor= arc4random() % 100;//[sizeof([BINS objectAtIndex: randomNum])];
        if(favor <= 80)
            randomNum3 = 0;
        else if(favor <=90 && favor >= 86){
            randomNum3 = 1;
        }
        else if(favor <=85 && favor >= 81){
            randomNum3 = 2;
        }
        else
            randomNum3 = 3;
        return randomNum3;
}

-(void)setLabel{
    serviceLevel = [NSString stringWithFormat:@"Ground"];
    stateLabel.text = [NSString stringWithFormat:@"%@ %.3i%.2i",State, zipCode, randomNum2];
    shipping.text = [NSString stringWithFormat:@"%@", serviceLevels[randomNum3]];
    
}

-(void)setState{
            zipCode = randomNum1;
        if(zipCode >= 10 && zipCode <=27)
        {
            State = [NSString stringWithFormat:@"MA"];
            if(randomNum3 == 0){
                answer = 1;
            }
            else if(randomNum3 == 1){
                answer = 1;
            }
            else if(randomNum3 == 2){
                answer = 1;
            }
            else if(randomNum3 == 3){
                answer = 2;
            }
        }
    
        else if(zipCode >= 28 && zipCode <=29)
        {
            State = [NSString stringWithFormat:@"RI"];
            if(randomNum3 == 0){
                answer = 1;
            }
            else if(randomNum3 == 1){
                answer = 1;
            }
            else if(randomNum3 == 2){
                answer = 1;
            }
            else if(randomNum3 == 3){
                answer = 2;
            }
        }
    
        else if(zipCode >= 30 && zipCode <=38)
        {
            State = [NSString stringWithFormat:@"NH"];
            if(randomNum3 == 0){
                answer = 1;
            }
            else if(randomNum3 == 1){
                answer = 1;
            }
            else if(randomNum3 == 2){
                answer = 1;
            }
            else if(randomNum3 == 3){
                answer = 2;
            }
        }
    
        else if(zipCode >= 39 && zipCode <=49)
        {
            State = [NSString stringWithFormat:@"ME"];
            if(randomNum3 == 0){
                answer = 1;
            }
            else if(randomNum3 == 1){
                answer = 2;
            }
            else if(randomNum3 == 2){
                answer = 2;
            }
            else if(randomNum3 == 3){
                answer = 2;
            }

        }
        else if(zipCode >= 50 && zipCode <=59)
        {
            State = [NSString stringWithFormat:@"VT"];
            if(randomNum3 == 0){
                answer = 1;
            }
            else if(randomNum3 == 1){
                answer = 1;
            }
            else if(randomNum3 == 2){
                answer = 1;
            }
            else if(randomNum3 == 3){
                answer = 2;
            }

        }
    
        else if(zipCode >= 60 && zipCode <=69)
        {
            State = [NSString stringWithFormat:@"CT"];
            if(randomNum3 == 0){
                answer = 1;
            }
            else if(randomNum3 == 1){
                answer = 1;
            }
            else if(randomNum3 == 2){
                answer = 1;
            }
            else if(randomNum3 == 3){
                answer = 2;
            }

        }
    
        else if(zipCode >= 70 && zipCode <=89)
        {
            State = [NSString stringWithFormat:@"NJ"];
            answer = 0;

        }
	
        else if((zipCode >= 100 && zipCode <=102) || (zipCode >=110 && zipCode <= 119) )
        {
            State = [NSString stringWithFormat:@"NY"];
            answer = 0;
        }
    
        else if((zipCode >= 103 && zipCode <=109) || (zipCode >=120 && zipCode <= 149) )
        {
            State = [NSString stringWithFormat:@"NY"];
            if(randomNum3 == 0){
                answer = 1;
            }
            else if(randomNum3 == 1){
                answer = 1;
            }
            else if(randomNum3 == 2){
                answer = 1;
            }
            else if(randomNum3 == 3){
                answer = 2;
            }
        }
	
        else if((zipCode >= 150 && zipCode <=168) || (zipCode >=189 && zipCode <= 194) )
        {
            State = [NSString stringWithFormat:@"PA"];
            answer = 0;
        }
	
        else if((zipCode >= 169 && zipCode <= 188) || (zipCode >=195 && zipCode <= 196) )
        {
            State = [NSString stringWithFormat:@"PA"];
            answer = 1;
        }
    
        else if(zipCode >= 197 && zipCode <= 199)
        {
            State = [NSString stringWithFormat:@"DE"];
            answer = 1;
        }
    
        else if(zipCode >= 200 && zipCode <= 205)
        {
            State = [NSString stringWithFormat:@"DC"];
            answer = 1;
        }
    
        else if((zipCode >= 206 && zipCode <= 214) || (zipCode >=218 && zipCode <= 219) || zipCode == 216)
        {
            State = [NSString stringWithFormat:@"MD"];
            answer = 1;
        }
    
    
        else if(zipCode == 215)
        {
            State = [NSString stringWithFormat:@"MD"];
            answer = 0;
        }
    
        else if(zipCode >= 220 && zipCode <= 246)
        {
            State = [NSString stringWithFormat:@"VA"];
            answer = 1;
        }
	
        else if((zipCode >= 247 && zipCode <= 253) || (zipCode >= 255 && zipCode <= 269))
        {
            State = [NSString stringWithFormat:@"WV"];
            answer = 0;
        }
    
        else if(zipCode == 254)
        {
            State = [NSString stringWithFormat:@"WV"];
            answer = 0;
        }
    
        else if(zipCode >= 270 && zipCode <= 289)
        {
            State = [NSString stringWithFormat:@"NC"];
            if(randomNum3 == 0){
                answer = 1;
            }
            else if(randomNum3 == 1){
                answer = 1;
            }
            else if(randomNum3 == 2){
                answer = 1;
            }
            else if(randomNum3 == 3){
                answer = 2;
            }
        }
    
        else if(zipCode >= 290 && zipCode <= 299)
        {
            State = [NSString stringWithFormat:@"SC"];
            if(randomNum3 == 0){
                answer = 1;
            }
            else if(randomNum3 == 1){
                answer = 1;
            }
            else if(randomNum3 == 2){
                answer = 1;
            }
            else if(randomNum3 == 3){
                answer = 2;
            }
        }
    
        else if(zipCode >= 300 && zipCode <= 319)
        {
            State = [NSString stringWithFormat:@"GA"];
            if(randomNum3 == 0){
                answer = 1;
            }
            else if(randomNum3 == 1){
                answer = 1;
            }
            else if(randomNum3 == 2){
                answer = 1;
            }
            else if(randomNum3 == 3){
                answer = 2;
            }
        }
	
        else if(zipCode >= 320 && zipCode <= 349)
        {
            State = [NSString stringWithFormat:@"FL"];
            if(randomNum3 == 0){
                answer = 1;
            }
            else if(randomNum3 == 1){
                answer = 1;
            }
            else if(randomNum3 == 2){
                answer = 1;
            }
            else if(randomNum3 == 3){
                answer = 2;
            }
        }
	
        else if(zipCode >= 350 && zipCode <= 369)
        {
            State = [NSString stringWithFormat:@"AL"];
            if(randomNum3 == 0){
                answer = 1;
            }
            else if(randomNum3 == 1){
                answer = 1;
            }
            else if(randomNum3 == 2){
                answer = 1;
            }
            else if(randomNum3 == 3){
                answer = 2;
            }
        }
	
        else if(zipCode >= 370 && zipCode <= 285)
        {
            State = [NSString stringWithFormat:@"TN"];
            if(randomNum3 == 0){
                answer = 1;
            }
            else if(randomNum3 == 1){
                answer = 1;
            }
            else if(randomNum3 == 2){
                answer = 1;
            }
            else if(randomNum3 == 3){
                answer = 2;
            }
        }
	
        else if(zipCode >= 386 && zipCode <= 397)
        {
            State = [NSString stringWithFormat:@"MS"];
            if(randomNum3 == 0){
                answer = 1;
            }
            else if(randomNum3 == 1){
                answer = 1;
            }
            else if(randomNum3 == 2){
                answer = 1;
            }
            else if(randomNum3 == 3){
                answer = 2;
            }
        }
    
        else if(zipCode >= 400 && zipCode <= 427)
        {
            State = [NSString stringWithFormat:@"KY"];
            if(randomNum3 == 0){
                answer = 0;
            }
            else if(randomNum3 == 1){
                answer = 0;
            }
            else if(randomNum3 == 2){
                answer = 0;
            }
            else if(randomNum3 == 3){
                answer = 2;
            }
        }
    
        else if(zipCode >= 430 && zipCode <= 458)
        {
            State = [NSString stringWithFormat:@"OH"];
            if(randomNum3 == 0){
                answer = 0;
            }
            else if(randomNum3 == 1){
                answer = 0;
            }
            else if(randomNum3 == 2){
                answer = 0;
            }
            else if(randomNum3 == 3){
                answer = 2;
            }        }
    
        else if(zipCode >= 460 && zipCode <= 479)
        {
            State = [NSString stringWithFormat:@"IN"];
            if(randomNum3 == 0){
                answer = 0;
            }
            else if(randomNum3 == 1){
                answer = 0;
            }
            else if(randomNum3 == 2){
                answer = 0;
            }
            else if(randomNum3 == 3){
                answer = 2;
            }
        }
	
        else if(zipCode >= 480 && zipCode <= 499)
        {
            State = [NSString stringWithFormat:@"MI"];
            if(randomNum3 == 0){
                answer = 0;
            }
            else if(randomNum3 == 1){
                answer = 0;
            }
            else if(randomNum3 == 2){
                if(zipCode >= 480 && zipCode <= 497)
                    answer = 0;
                else{
                    answer = 2;
                }
            }
            else if(randomNum3 == 3){
                answer = 2;
            }        }
    
        else if(zipCode >= 500 && zipCode <= 528)
        {
            State = [NSString stringWithFormat:@"IA"];
            if(randomNum3 == 0){
                answer = 0;
            }
            else if(randomNum3 == 1){
                answer = 0;
            }
            else if(randomNum3 == 2){
                answer = 2;
            }
            else if(randomNum3 == 3){
                answer = 2;
            }
        }
    
        else if(zipCode >= 530 && zipCode <= 549)
        {
            State = [NSString stringWithFormat:@"WI"];
            if(randomNum3 == 0){
                answer = 0;
            }
            else if(randomNum3 == 1){
                answer = 0;
            }
            else if(randomNum3 == 2){
                answer = 2;
            }
            else if(randomNum3 == 3){
                answer = 2;
            }
        }
    
    
    }
-(void)setServiceLevel{
    serviceLevels = [NSMutableArray arrayWithCapacity:4];
    [serviceLevels addObject:[NSString stringWithFormat:@"Ground"]];
    [serviceLevels addObject:[NSString stringWithFormat:@"3 Day"]];
    [serviceLevels addObject:[NSString stringWithFormat:@"2 Day"]];
    [serviceLevels addObject:[NSString stringWithFormat:@"1 Day"]];
    }

-(void)runAllMethods{
    [self setIndex];
    [self setIndex2];
    [self setIndex3];
    [self setState];
    [self setServiceLevel];
    [self setLabel];
}
@end
