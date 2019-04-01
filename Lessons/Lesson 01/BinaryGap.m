#import <Foundation/Foundation.h>
// you can also use other imports, for example:
// #import <SomeLibrary/SomeFile.h>

// you can write to stdout for debugging purposes, e.g.
// printf("this is a debug message\n");

int solution(int N) {
    NSMutableArray *binaryDigits = [NSMutableArray array];
    while (N > 0) {
        NSNumber *digit = (N & 1) ? @1 : @0;
        [binaryDigits insertObject:digit atIndex:0];
        N >>= 1;
    }
    NSInteger counter = 0;
    NSInteger gap = 0;
    for (NSNumber *digit in binaryDigits) {
        if ([digit isEqualToNumber:@0]) {
            counter++;
        } else {
            gap = MAX(gap, counter);
            counter = 0;
        }
    }
    return gap;
}
