//
//  Person.h
//  Greenhouse
//
//  Created by Roy Clarkson on 6/11/10.
//  Copyright 2010 VMware, Inc. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Person : NSObject 
{

@private
	NSString *_firstName;
	NSString *_lastName;
}

@property (nonatomic, copy) NSString *firstName;
@property (nonatomic, copy) NSString *lastName;

- (id)initWithDictionary:(NSDictionary *)dictionary;

@end