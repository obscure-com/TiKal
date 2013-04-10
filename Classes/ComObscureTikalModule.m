/**
 * Copyright (c) 2013 Paul Mietz Egli
 *
 * Appcelerator Titanium is Copyright (c) 2009-2010 by Appcelerator, Inc.
 * and licensed under the Apache Public License (version 2)
 */
#import "ComObscureTikalModule.h"
#import "TiBase.h"
#import "TiHost.h"
#import "TiUtils.h"
#import "KalImageManager.h"

@implementation ComObscureTikalModule

#pragma mark Internal

-(id)moduleGUID {
	return @"a34156ff-48c1-4557-8e48-de00c0b37b18";
}

-(NSString*)moduleId {
	return @"com.obscure.tikal";
}

#pragma mark Lifecycle

-(void)startup {
	[super startup];
    [KalImageManager setImagePathFormat:[NSString stringWithFormat:@"%@/modules/%@/Kal.bundle/%%@", [[NSBundle mainBundle] bundlePath], [self moduleId]]];
}

@end
