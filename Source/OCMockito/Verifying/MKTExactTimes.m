//  OCMockito by Jon Reid, http://qualitycoding.org/about/
//  Copyright 2015 Jonathan M. Reid. See LICENSE.txt

#import "MKTExactTimes.h"

#import "MKTTestLocation.h"
#import "MKTVerificationData.h"


@interface MKTExactTimes ()
@property (nonatomic, assign, readonly) NSUInteger wantedCount;
@end

@implementation MKTExactTimes

- (instancetype)initWithCount:(NSUInteger)wantedNumberOfInvocations
{
    self = [super init];
    if (self)
        _wantedCount = wantedNumberOfInvocations;
    return self;
}


#pragma mark MKTVerificationMode

- (void)verifyData:(MKTVerificationData *)data testLocation:(MKTTestLocation)testLocation
{
    NSUInteger matchingCount = [data numberOfMatchingInvocations];
    if (matchingCount != self.wantedCount)
    {
        NSString *plural = (self.wantedCount == 1) ? @"" : @"s";
        NSString *description = [NSString stringWithFormat:@"Expected %u matching invocation%@, but received %u",
                                                           (unsigned)self.wantedCount, plural, (unsigned)matchingCount];
        MKTFailTestLocation(testLocation, description);
    }
}

@end
