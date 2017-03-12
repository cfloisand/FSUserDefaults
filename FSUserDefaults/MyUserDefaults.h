//
//  MyUserDefaults.h
//  FSUserDefaults
//
//  Created by Christian Floisand on 2017-03-12.
//  Copyright © 2017 Flyingsand. All rights reserved.
//

#import "FSUserDefaults.h"


@interface MyUserDefaults : FSUserDefaults
@property (nonatomic, strong) NSString *aString;
@property (nonatomic, strong) NSURL *aUrl;
@property (nonatomic, strong) NSArray *anArray;
@property (nonatomic) NSInteger anInteger;

@end
