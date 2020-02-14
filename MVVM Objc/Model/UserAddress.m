//
//  UserAddress.m
//  MVVM Objc
//
//  Created by Mazegeek Mac Mini 2018 on 2/5/20.
//  Copyright © 2020 Mac Mini 2018. All rights reserved.
//

#import "UserAddress.h"

@implementation UserAddress

-(instancetype)initWithStreet:(NSString*)street Suite:(NSString*)suite City:(NSString*)city Zipcode:(NSString*)zipcode GeoLocation:(UserGeoLocation*)geoLocation {
    
    if(self = [super init]) {
        _street = street;
        _suite = suite;
        _city = city;
        _zipcode = zipcode;
        _geoLocation = geoLocation;
    }
    
    return self;
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"Address\n    Street: %@\n    Suite: %@\n    City: %@\n    Zip Code: %@\n    Geo Location: %@", _street, _suite, _city, _zipcode, _geoLocation];
}

@end
