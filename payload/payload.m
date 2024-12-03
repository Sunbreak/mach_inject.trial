#import <Foundation/Foundation.h>

__attribute__((constructor))
void load() {
    NSLog(@"payload load");
}
