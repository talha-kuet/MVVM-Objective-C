//
//  User.m
//  MVVM Objc
//
//  Created by Mazegeek Mac Mini 2018 on 2/5/20.
//  Copyright © 2020 Mac Mini 2018. All rights reserved.
//

#import "User.h"

@implementation User

-(instancetype)initWithUserID:(NSString*)userID Name:(NSString*)name UserName:(NSString*)userName Email:(NSString*)email Address:(UserAddress*)address Phone:(NSString*)phone Website:(NSString*)website Company:(UserCompany*)company {
    
    if(self = [super init]) {
        _userID = userID;
        _name = name;
        _userName = userName;
        _email = email;
        _address = address;
        _phone = phone;
        _website = website;
        _company = company;
    }
    
    return self;
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"User\n  User ID: %@\n  Name: %@\n  User Name: %@\n  Email: %@\n  Phone: %@\n  Website: %@\n  Address: %@  Compnay: %@\n", _userID, _name, _userName, _email, _phone, _website, _address, _company];
}

@end
