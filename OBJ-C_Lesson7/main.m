//
//  main.m
//  OBJ-C_Lesson7
//
//  Created by Даниил Мурыгин on 04.10.2020.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        char charSet[40];
        printf("Введите строку для сохранения: ");
        scanf("%39s",charSet);
        NSString *string =  [NSString stringWithCString:charSet encoding:1];
        NSLog(@"%@", string);

        NSString *path = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) firstObject];
        path = [path stringByAppendingString:@"/array.txt"];
        NSLog(@"%@", path);
        [string writeToFile:path atomically:YES];
    }
    return 0;
}
