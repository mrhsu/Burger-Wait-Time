//
//  NHStoreObject.m
//  Burger Wait Time
//
//  Created by mrhsu on 8/3/14.
//  Copyright (c) 2014 Jibberish. All rights reserved.
//

#import "NHStoreObject.h"
#import "NHStores.h"

@implementation NHStoreObject

-(id)init{
    self = [self initWithData:nil andImage:nil];
    return self;
}

-(id)initWithData:(NSDictionary *)data andImage:(UIImage *)image
{
    self = [super init];
    
    self.nickName = data[STORE_NICKNAME];
    self.storeAddress = data[STORE_ADDRESS];
    self.storeCity = data[STORE_CITY];
    self.storeZip = data[STORE_ZIP];
    
    self.storeWaitTime = [data[STORE_WAIT_TIME] floatValue];
    self.driveThruWaitTime = [data[STORE_DRIVE_THRU_WAIT_TIME] floatValue];
    
    self.storeImage = image;
    
    return self;

}

@end
