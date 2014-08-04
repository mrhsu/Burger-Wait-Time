//
//  NHStores.h
//  Burger Wait Time
//
//  Created by mrhsu on 8/3/14.
//  Copyright (c) 2014 Jibberish. All rights reserved.
//

#import <Foundation/Foundation.h>

#define STORE_NICKNAME @"Location Name"
#define STORE_ADDRESS @"Store Address"
#define STORE_CITY @"Store City Address"
#define STORE_ZIP @"Store Zip Code"
#define STORE_WAIT_TIME @"Store Wait Time"
#define STORE_DRIVE_THRU_WAIT_TIME @"Drive Thru Wait Time"
#define STORE_IMAGE @"Image of the Store"


@interface NHStores : NSObject

+(NSArray *)allKnownStores;

@end
