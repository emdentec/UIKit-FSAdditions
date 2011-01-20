//
//  NSStringAdditions.h
//  iPadMagazine
//
//  Created by Elliot Neal on 18/08/2010.
//  Copyright 2010 emdentec. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface NSString (MGAdditions)

+ (BOOL)stringIsNilOrEmpty:(NSString *)string;

+ (NSString *)uuid; //returns a new UUID as a string

@end
