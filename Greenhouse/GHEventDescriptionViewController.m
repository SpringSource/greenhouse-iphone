//
//  Copyright 2010-2012 the original author or authors.
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
//  GHEventDescriptionViewController.m
//  Greenhouse
//
//  Created by Roy Clarkson on 7/22/10.
//

#import "GHEventDescriptionViewController.h"
#import "GHEventController.h"
#import "Event.h"

@interface GHEventDescriptionViewController ()

@property (nonatomic, strong) Event *event;

@end

@implementation GHEventDescriptionViewController

@synthesize event;
@synthesize textView;


#pragma mark -
#pragma mark UIViewController methods

- (void)viewDidLoad 
{
    [super viewDidLoad];
    DLog(@"");
	
	self.title = @"Description";
	textView.editable = NO;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    DLog(@"");
    
    self.event = [[GHEventController sharedInstance] fetchSelectedEvent];
    if (event == nil)
    {
        DLog(@"selected event not available");
        textView.text = nil;
        [self.navigationController popToRootViewControllerAnimated:NO];
    }
    else
    {
        textView.text = event.information;
    }
}

- (void)viewDidUnload 
{
    [super viewDidUnload];
    DLog(@"");
	
	self.event = nil;
	self.textView = nil;
}

@end
