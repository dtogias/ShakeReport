//
//  SRPreprocessorMacros.h
//  ShakeReport
//
//  Created by Dimitris Togias on 23/2/14.
//  Copyright (c) 2014 Jayztemplier. All rights reserved.
//

// The general purpose logger.
#if !defined(DEBUG) || !(TARGET_IPHONE_SIMULATOR)
#define NSLog(...)
#endif
