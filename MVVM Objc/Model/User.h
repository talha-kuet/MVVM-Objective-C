//
//  User.h
//  MVVM Objc
//
//  Created by Mazegeek Mac Mini 2018 on 2/5/20.
//  Copyright © 2020 Mac Mini 2018. All rights reserved.
//

#import <Foundation/Foundation.h>
@class UserAddress;
@class UserCompany;
@class UserGeoLocation;

NS_ASSUME_NONNULL_BEGIN

@interface User : NSObject

@property (nonatomic, strong) NSString* userID;
@property (nonatomic, strong) NSString* name;
@property (nonatomic, strong) NSString* userName;
@property (nonatomic, strong) NSString* email;
@property (nonatomic, strong) UserAddress* address; // its a dictionary
@property (nonatomic, strong) NSString* phone;
@property (nonatomic, strong) NSString* website;
@property (nonatomic, strong) UserCompany* company;

-(instancetype)initWithUserID:(NSString*)userID Name:(NSString*)name UserName:(NSString*)userName Email:(NSString*)email Address:(UserAddress*)address Phone:(NSString*)phone Website:(NSString*)website Company:(UserCompany*)company;

@end

NS_ASSUME_NONNULL_END
