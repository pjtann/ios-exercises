//
//  AwesomeCounter.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "AwesomeCounter.h"

@implementation AwesomeCounter

- (NSString *) stringWithNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
    /* WORK HERE */
    NSInteger firstNumber = 0;
    NSInteger secondNumber = 0;
    
    if (number < otherNumber){
        firstNumber = number;
        secondNumber = otherNumber;
    }else{
        firstNumber = otherNumber;
        secondNumber = number;
    
    }
    
    NSMutableString *myString = [NSMutableString stringWithFormat:@""];
    NSString *myIntString = NULL;
    
    for (NSInteger n = firstNumber; n <= secondNumber; n++){
        myIntString = [NSString stringWithFormat:@"%ld",(long)n];
        
        [myString appendString:myIntString];
        
        
    }
    // original statement
    //return @"";
    return  myString;
}

@end
