//
//  UserGeoLocation.m
//  MVVM Objc
//
//  Created by Mazegeek Mac Mini 2018 on 2/5/20.
//  Copyright © 2020 Mac Mini 2018. All rights reserved.
//

#import "UserGeoLocation.h"

@implementation UserGeoLocation

-(instancetype)initWithLatitude:(NSString*)latitude Longitude:(NSString*)longitude {
    if(self = [super init]) {
        _latitude = latitude;
        _longitude = longitude;
    }
    
    return self;
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"Geo Location\n      Latitude: %@\n      Longitude: %@\n", _latitude, _longitude];
}

@end
