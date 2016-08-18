//
//  UIFont+Octicons.m
//  OcticonsDemo
//
//  Created by 尹晓宇 on 16/8/17.
//  Copyright © 2016年 尹晓宇. All rights reserved.
//

#import <CoreText/CoreText.h>
#import "UIFont+Octicons.h"

@interface OCTFontLoader : NSObject;

@end

@implementation OCTFontLoader

+ (void)loadFontWithName:(NSString *)fontName {
    NSURL *bundleURL = [[NSBundle bundleForClass:[self class]] URLForResource:@"OcticonsFont" withExtension:@"bundle"];
    NSBundle *bundle = [NSBundle bundleWithURL:bundleURL];
    NSURL *fontURL = [bundle URLForResource:fontName withExtension:@"ttf"];
    NSData *fontData = [NSData dataWithContentsOfURL:fontURL];
    
    CGDataProviderRef provider = CGDataProviderCreateWithCFData((CFDataRef)fontData);
    CGFontRef font = CGFontCreateWithDataProvider(provider);
    
    if (font) {
        CFErrorRef error = NULL;
        if (CTFontManagerRegisterGraphicsFont(font, &error) == NO) {
            CFStringRef errorDescription = CFErrorCopyDescription(error);
            @throw [NSException exceptionWithName:NSInternalInconsistencyException reason:(__bridge NSString *)errorDescription userInfo:@{ NSUnderlyingErrorKey: (__bridge NSError *)error }];
        }
        
        CFRelease(font);
    }
    
    CFRelease(provider);
}

@end

@implementation UIFont (Octicons)

+ (instancetype)octLoadAndReturnFont:(NSString *)fontName size:(CGFloat)fontSize onceToken:(dispatch_once_t *)onceToken fontFileName:(NSString *)fontFileName {
    dispatch_once(onceToken, ^{
        [OCTFontLoader loadFontWithName:fontFileName];
    });
    
    return [self fontWithName:fontName size:fontSize];
}

+ (instancetype)octiconsFontOfSize:(CGFloat)size {
    static dispatch_once_t onceToken;
    return [self octLoadAndReturnFont:@"octicons" size:size onceToken:&onceToken fontFileName:@"octicons"];
}

@end
