//
//  NHStoreObject.h
//  Burger Wait Time
//
//  Created by mrhsu on 8/3/14.
//  Copyright (c) 2014 Jibberish. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NHStoreObject : NSObject

@property (nonatomic) float storeWaitTime;
@property (nonatomic) float driveThruWaitTime;

@property (strong, nonatomic) NSString *nickName;
@property (strong, nonatomic) NSString *storeAddress;
@property (strong, nonatomic) NSString *storeCity;
@property (strong, nonatomic) NSString *storeZip;


@property (strong, nonatomic) UIImage *storeImage;



-(id)initWithData: (NSDictionary *)data andImage:(UIImage *)image;



@end
