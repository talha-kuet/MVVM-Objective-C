//
//  UserCompany.h
//  MVVM Objc
//
//  Created by Mazegeek Mac Mini 2018 on 2/5/20.
//  Copyright © 2020 Mac Mini 2018. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface UserCompany : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *catchPhrase;
@property (nonatomic, strong) NSString *bs;

-(instancetype)initWithName:(NSString*)name CatchPhrase:(NSString*)catchPhrase BS:(NSString*)bs;

@end

NS_ASSUME_NONNULL_END
