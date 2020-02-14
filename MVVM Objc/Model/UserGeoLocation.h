//
//  UserGeoLocation.h
//  MVVM Objc
//
//  Created by Mazegeek Mac Mini 2018 on 2/5/20.
//  Copyright © 2020 Mac Mini 2018. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface UserGeoLocation : NSObject

@property (nonatomic, strong) NSString *latitude;
@property (nonatomic, strong) NSString *longitude;

-(instancetype)initWithLatitude:(NSString*)latitude Longitude:(NSString*)longitude;

@end

NS_ASSUME_NONNULL_END
