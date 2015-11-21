//
//  StarTrekDictionaries.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "StarTrekDictionaries.h"

@implementation StarTrekDictionaries

- (NSString *)favoriteDrinkForStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {
    /* WORK HERE */
    __block NSString *favDrink = nil;
    
    [characterDictionary enumerateKeysAndObjectsUsingBlock:^(id key, id obj, BOOL *stop) {
        if ([key  isEqual: @"favorite drink"])
        {
            NSLog(@"Favorite Drink...key: %@, and Object: %@", key, obj);
            //NSString *favDrink = obj;
            favDrink = obj;
            //return favDrink;
        }
    }];
    //return @"";
    return favDrink;
}

- (NSArray *)arrayOfFavoriteDrinksForStarTrekCharacters:(NSArray *)charactersArray {
    /* WORK HERE */
    __block NSMutableArray *favDrinkArray = [[NSMutableArray alloc]init]; // this allows add objects
    //__block NSMutableArray *favDrinkArray = nil; // this won't allow me to add objects

        [charactersArray enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
            NSDictionary *myDictionary = obj;
            [myDictionary enumerateKeysAndObjectsUsingBlock:^(id key, id obj, BOOL *stop) {
                if ([key isEqual: @"favorite drink"]) {
                    NSLog(@"Favorite Drink...key=%@, and object=%@", key, obj);
                    
                    //NSString *newString = @"hello";
                    //[favDrinkArray addObject:newString];
                    [favDrinkArray addObject:obj];
                 
                }
            }];
        }];
    //}
    
    //return @[];
    return favDrinkArray;
}

- (NSDictionary *)dictionaryWithQuoteAddedToStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {
    /* WORK HERE */
    NSMutableDictionary *myChangingDictionary = [characterDictionary mutableCopy];
    [myChangingDictionary setObject:@"This is Picards quote." forKey:@"quote"];
    
    
    //return @{};
    return myChangingDictionary;
}

@end
