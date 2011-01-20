//
//  NSStringAdditions.m
//  iPadMagazine
//
//  Created by Elliot Neal on 18/08/2010.
//  Copyright 2010 emdentec. All rights reserved.
//

#import "NSString+FSAdditions.h"


@implementation NSString (MGAdditions)

+ (BOOL)stringIsNilOrEmpty:(NSString *)string {
	
	return (string == nil ? YES : ([[string stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]] length] == 0 ? YES : NO));
}

+ (NSString *)uuid {
	
	CFUUIDRef theUUID = CFUUIDCreate(NULL);
	CFStringRef string = CFUUIDCreateString(NULL, theUUID);
	CFRelease(theUUID);
	return [(NSString *)string autorelease];
}

@end
