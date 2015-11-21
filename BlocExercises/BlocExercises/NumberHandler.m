//
//  NumberHandler.m
//  BlocExercises
//
//  Created by Aaron on 6/11/14.
//
//

#import "NumberHandler.h"

@implementation NumberHandler

- (NSNumber *) numberThatIsTwiceAsBigAsNumber:(NSNumber *)number {
    /* WORK HERE */
    int test = [number intValue];
    int twiceNumber = (2 * test);
    NSNumber *bigNumber = [NSNumber numberWithInt:twiceNumber];
  
    //return @0;
    return bigNumber;
    
}

- (NSArray *) arrayOfNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
    /* WORK HERE */
    NSInteger firstNumber = 0;
    NSInteger secondNumber = 0;
    NSMutableArray *myArray = [[NSMutableArray alloc]init];
    
    if (number < otherNumber){
        firstNumber = number;
        secondNumber = otherNumber;
    }else{
        firstNumber = otherNumber;
        secondNumber= number;
    }
    for (long n=firstNumber; n >=firstNumber && n<=secondNumber; n++) {
        [myArray addObject:[NSNumber numberWithInteger:n]];
        for (int arrayCounter=0; arrayCounter<myArray.count; arrayCounter++) {
            NSLog(@"myArray..: %@", myArray[arrayCounter]);
        }
    }    
    //return @[];
    return myArray;
}

- (NSInteger) lowestNumberInArray:(NSArray *)arrayOfNumbers {
    /* WORK HERE */
    NSNumber *lowestNumber;
    //NSInteger lowInt;
    for (int n=0; n<arrayOfNumbers.count; n++) {
        NSNumber *newNumber = arrayOfNumbers[n];
        if (n==0) {
            lowestNumber = newNumber;
        }
        if ([newNumber intValue] < [lowestNumber intValue]) {
            lowestNumber = newNumber;
        }
    }
    //return 0;
    return [lowestNumber intValue];
}

@end
