//
//  Copyright 2012 the original author or authors.
//
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//      https://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.
//
//
//  GHAuthorizedRequest.m
//  Greenhouse
//
//  Created by Roy Clarkson on 8/29/12.
//

#import "GHAuthorizedRequest.h"
#import "GHAuthController.h"
#import "OA2AccessGrant.h"

@implementation GHAuthorizedRequest

- (id)initWithURL:(NSURL *)URL
{
    OA2AccessGrant *accessGrant = [GHAuthController fetchAccessGrant];
    return [super initWithURL:URL accessToken:accessGrant.accessToken];
}

@end
