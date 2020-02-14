//
//  ViewController.m
//  MVVM Objc
//
//  Created by Mazegeek Mac Mini 2018 on 2/5/20.
//  Copyright © 2020 Mac Mini 2018. All rights reserved.
//

#import "ViewController.h"
#import "User.h"
#import "UserAddress.h"
#import "UserGeoLocation.h"
#import "UserCompany.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self getDataFromFile];
    
}

-(void)getDataFromFile {
    
    NSString *path = [[NSBundle mainBundle] pathForResource:@"usersAPI" ofType:@"txt"];
    NSURL *url = [NSURL fileURLWithPath:path];
    NSData *data = [NSData dataWithContentsOfURL:url];

//    NSString *dummyString = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
//    NSLog(@"Dummy String: %@", dummyString);
    
    NSError *err;
    NSArray *userJSON = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:&err];
    
    if (err) {
        NSLog(@"Failed to Serialize into JSON: %@", err);
        return;
    }
    
    NSMutableArray<User*> *users = [[NSMutableArray alloc] init];
    
    for(NSDictionary *userDict in userJSON) {
        
        NSString *userID = userDict[@"id"];
        NSString *name = userDict[@"name"];
        NSString *userName = userDict[@"username"];
        NSString *email = userDict[@"email"];
        NSString *phone = userDict[@"phone"];
        NSString *website = userDict[@"website"];
        
        NSDictionary *addressDict = userDict[@"address"];
        NSString *street = addressDict[@"street"];
        NSString *suite = addressDict[@"suite"];
        NSString *city = addressDict[@"city"];
//        NSString *zipcode = addressDict[@"zipcode"];
        NSString *zipcode = [addressDict objectForKey:@"zipcode"];
        
        NSString *latitude = addressDict[@"geo"][@"lat"];
        NSString *longitude = addressDict[@"geo"][@"lng"];
        
        NSDictionary *companyDict = userDict[@"company"];
        NSString *companyName = companyDict[@"name"];
        NSString *companyCatchPhrase = companyDict[@"catchPhrase"];
        NSString *companyBS = companyDict[@"bs"];
        
        UserGeoLocation *geoLocation = [[UserGeoLocation alloc] initWithLatitude:latitude Longitude:longitude];
        UserAddress *userAddress = [[UserAddress alloc] initWithStreet:street Suite:suite City:city Zipcode:zipcode GeoLocation:geoLocation];
        UserCompany *userCompany = [[UserCompany alloc] initWithName:companyName CatchPhrase:companyCatchPhrase BS:companyBS];
        
        User *user = [[User alloc] initWithUserID:userID Name:name UserName:userName Email:email Address:userAddress Phone:phone Website:website Company:userCompany];
        NSLog(@"====USER====\n%@", user);
        
        [users addObject:user];
    }
}


@end
