//
//  StuffRememberer.m
//  BlocExercises
//
//  Created by Aaron on 6/12/14.
//
//

#import "StuffRememberer.h"

@implementation StuffRememberer

- (void) rememberThisArrayForLater:(NSMutableArray *)arrayToRemember {
    /* WORK HERE */
    self.myArrayToRemember = arrayToRemember;

}

- (void) copyThisArrayForLater:(NSMutableArray *)arrayToCopy {
    /* WORK HERE */
    self.myArrayToCopy = arrayToCopy;
    
}

- (void) rememberThisFloatForLater:(CGFloat)floatToRemember {
    /* WORK HERE */
    self.myFloat = floatToRemember;
  
}

- (NSMutableArray *) arrayYouShouldRemember {
    /* WORK HERE */
    // This set of commands will return a copy of the array apparently, not the original array and I believe they wanted the same array back occupying the same memory space, not a new array.
//    NSMutableArray *passBackArray = [self.myArrayToRemember mutableCopy];
//    NSLog(@"myArrayToRemember...: %@", self.myArrayToRemember);
//    NSLog(@"passBackArray...: %@", passBackArray);
//    return passBackArray;

    // original return
    //return [@[] mutableCopy];
    
    // This return alone will return the original array sent over in the 'copyThisArrayForLater' method which was set up as a strong mutable array. So I guess this is just a pointer then and making a copy of the one sent over.
    return self.myArrayToRemember;
    
}

- (NSMutableArray *) arrayYouShouldCopy {
    /* WORK HERE */
    // Is this the expected way to do this or are you supposed to use the 'copy' parameter to make the property a 'copy' assignment instead of 'strong' or 'weak' like I did?
    NSMutableArray *copyBackArray = [self.myArrayToCopy mutableCopy];
    
    //return [@[] mutableCopy];
    return copyBackArray;
    
}

- (CGFloat) floatYouShouldRemember {
    /* WORK HERE */
    
    

    //return 0.0f;
    return self.myFloat;
    
}

@end