//  OCMockito by Jon Reid, http://qualitycoding.org/about/
//  Copyright 2015 Jonathan M. Reid. See LICENSE.txt

#import <Foundation/Foundation.h>

@class MKTLocation;


@interface MKTInvocation : NSObject

@property (nonatomic, strong, readonly) NSInvocation *invocation;
@property (nonatomic, copy) NSArray *callStackSymbols;
@property (nonatomic, strong, readonly) MKTLocation *location;

- (instancetype)initWithInvocation:(NSInvocation *)invocation;

@end
