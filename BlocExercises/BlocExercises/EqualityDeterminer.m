//
//  EqualityDeterminer.m
//  BlocExercises
//
//  Created by Aaron Brager on 6/10/14.
//
//

#import "EqualityDeterminer.h"

@implementation EqualityDeterminer

- (BOOL) string:(NSString *)string1 isTheSameAsString:(NSString *)string2 {
    /* WORK HERE */
    // PJT - can't use == because the variables don't occupy the same memory space since they were never assigned to each other, both set independently equal to the cereal name. So must use 'isEqual' for equality; or BOOL statement as below
    if ([string1 isEqualToString:string2])
        return YES;
    else
        return NO;

    // OR this BOOL test also works
//    BOOL areTheyEqual = string1 == string2;
//    return YES;
    
    // PJT - original return
//    return (string1 == string2);
}

- (BOOL) number:(NSNumber *)number1 isTheSameAsNumber:(NSNumber *)number2 {
    /* WORK HERE */
    // PJT - have to use iEqual again since the values were never assigned to each other and therefore occupy different memory spaces
    if ([number1 isEqual:number2])
        return YES;
    else
        return NO;
    // PJT - original
//    return (number1 == number2);
}

- (BOOL) integer:(NSInteger)integer1 isGreaterThan:(NSInteger)integer2 {
    /* WORK HERE */
    
    // PJT - using BOOL statements
//    BOOL testGreaterThan = integer1 > integer2;
//    return testGreaterThan;
    
    // PJT - or using if statements
    if (integer1 > integer2)
        return YES;
    else
        return NO;
    // PJT - original statement
    //return NO;
}

@end
