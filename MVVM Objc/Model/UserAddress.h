//
//  UserAddress.h
//  MVVM Objc
//
//  Created by Mazegeek Mac Mini 2018 on 2/5/20.
//  Copyright © 2020 Mac Mini 2018. All rights reserved.
//

#import <Foundation/Foundation.h>
@class UserGeoLocation;

NS_ASSUME_NONNULL_BEGIN

@interface UserAddress : NSObject

@property (nonatomic, strong) NSString *street;
@property (nonatomic, strong) NSString *suite;
@property (nonatomic, strong) NSString *city;
@property (nonatomic, strong) NSString *zipcode;
@property (nonatomic, strong) UserGeoLocation *geoLocation;

-(instancetype)initWithStreet:(NSString*)street Suite:(NSString*)suite City:(NSString*)city Zipcode:(NSString*)zipcode GeoLocation:(UserGeoLocation*)geoLocation;

@end

NS_ASSUME_NONNULL_END
