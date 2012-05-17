//
//  AppDelegate.m
//  MACAddress
//
//  Created by Nick Lockwood on 17/05/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "AppDelegate.h"
#import "MACAddress.h"

@implementation AppDelegate

@synthesize window;
@synthesize addressLabel;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{   
    //set address
    [addressLabel setStringValue:[MACAddress address]];
}

@end
