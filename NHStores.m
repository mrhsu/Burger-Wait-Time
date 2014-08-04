//
//  NHStores.m
//  Burger Wait Time
//
//  Created by mrhsu on 8/3/14.
//  Copyright (c) 2014 Jibberish. All rights reserved.
//

#import "NHStores.h"

@implementation NHStores

+(NSArray *)allKnownStores
{
    
    NSMutableArray *storeInformation = [@[] mutableCopy];
    
    NSDictionary *westwoodLocation = @{ STORE_NICKNAME: @"Westwood", STORE_ADDRESS: @"922 Gayley Ave. Los Angeles 90024", STORE_CITY: @"Los Angeles", STORE_ZIP: @"90024", STORE_IMAGE: [UIImage imageNamed:@"Westwood.png"]};
    [storeInformation addObject:westwoodLocation];
    NSDictionary *culverCityLocation = @{ STORE_NICKNAME: @"Culver City", STORE_ADDRESS: @"13425 W. Washington Blvd. Culver City 90292", STORE_CITY: @"Culver City", STORE_ZIP: @"90292", STORE_IMAGE: [UIImage imageNamed:@"Culver City.png"]};
    [storeInformation addObject:culverCityLocation];
    NSDictionary *westchesterLocation = @{ STORE_NICKNAME: @"LAX", STORE_ADDRESS: @"9149 S. Sepulveda Blvd. Los Angeles 90045", STORE_CITY: @"Los Angeles", STORE_ZIP: @"90045", STORE_IMAGE: [UIImage imageNamed:@"LAX.png"]};
    [storeInformation addObject:westchesterLocation];
    NSDictionary *venicePalmsLocation = @{ STORE_NICKNAME: @"Venice-Palms", STORE_ADDRESS: @"9245 Venice Blvd. Los Angeles 90034", STORE_CITY: @"Los Angeles", STORE_ZIP: @"90034", STORE_IMAGE: [UIImage imageNamed:@"Venice_Palms.png"]};
    [storeInformation addObject:venicePalmsLocation];
    

    return [storeInformation copy];
};

@end
