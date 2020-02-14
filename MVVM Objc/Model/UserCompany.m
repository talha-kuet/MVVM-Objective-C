//
//  UserCompany.m
//  MVVM Objc
//
//  Created by Mazegeek Mac Mini 2018 on 2/5/20.
//  Copyright © 2020 Mac Mini 2018. All rights reserved.
//

#import "UserCompany.h"

@implementation UserCompany

-(instancetype)initWithName:(NSString*)name CatchPhrase:(NSString*)catchPhrase BS:(NSString*)bs {
    if(self = [super init]) {
        _name = name;
        _catchPhrase = catchPhrase;
        _bs = bs;
    }
    
    return self;
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"Company\n    Name: %@\n    Catch phrase: %@\n    BS: %@\n", _name, _catchPhrase, _bs];
}

@end
