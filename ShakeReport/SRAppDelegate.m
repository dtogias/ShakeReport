//
//  SRAppDelegate.m
//  ShakeReport
//
//  Created by Jeremy Templier on 5/29/13.
//  Copyright (c) 2013 Jeremy Templier. All rights reserved.
//

#import "SRAppDelegate.h"
#import "ShakeReporter.h"

@implementation SRAppDelegate

////////////////////////////////////////////////////////////////////////////////
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
//    SRReporter *reporter = [SRReporter reporter];
//    [reporter setDefaultEmailAddress:@"jayztemplier@example.com"];
//    [reporter setCustomInformationBlock:^NSString *{
//        return [NSString stringWithFormat:@"Application: Sample Application, User: Jayztemplier, Device Name: %@", [[UIDevice currentDevice] name]];
//    }];
//    [reporter startListener];
    
    // Send data to a Server instead of displaying the mail composer
    SRReporter *reporter = [SRReporter reporter];
    NSURL *url = [NSURL URLWithString:@"http://localhost:3000"];
    [reporter setUsername:@"jayztemplier"];
    [reporter setPassword:@"mypassword"];
    [reporter startListenerConnectedToBackendURL:url];

    return YES;
}

////////////////////////////////////////////////////////////////////////////////
- (void)applicationWillTerminate:(UIApplication *)application
{
    [[SRReporter reporter] stopListener];
}

@end
