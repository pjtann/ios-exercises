//
//  StarTrekArrays.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "StarTrekArrays.h"

@implementation StarTrekArrays

- (NSArray *) arrayOfStarTrekCharactersFromString:(NSString *)characterString {
    /* WORK HERE */
    NSArray *myStarTrekArray = [characterString componentsSeparatedByString:@";"];
        [myStarTrekArray enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
        NSLog(@"Test block.");
    }];
    //return @[];
    return myStarTrekArray;
}

- (NSString *) stringOfStarTrekCharactersFromArray:(NSArray *)characterArray {
    /* WORK HERE */
    NSString *myStarTrekString = [characterArray componentsJoinedByString:@";"];

    //return @"";
    return myStarTrekString;
}

- (NSArray *) alphabeticallySortedStarTrekCharactersFromArray:(NSArray *)characterArray {
    /* WORK HERE */
    NSMutableArray *mySortedArray = [characterArray mutableCopy];
    NSSortDescriptor *mySortDescriptor = [[NSSortDescriptor alloc] initWithKey:nil ascending:YES];
    [mySortedArray sortUsingDescriptors:@[mySortDescriptor]];
    
    //return @[];
    return mySortedArray;
    
}

- (BOOL) characterArrayContainsWorf:(NSArray *)characterArray {
    /* WORK HERE */
    NSMutableArray *myWorfArray = [characterArray mutableCopy];
    NSPredicate *containsWorf = [NSPredicate predicateWithFormat:@"SELF CONTAINS[c] 'Worf'"];

    [myWorfArray filterUsingPredicate:containsWorf];
        if (myWorfArray.count > 0){
            return YES;
        }
    return NO;
    //return YES;
}

@end
