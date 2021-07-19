//
//  UIColor+UIColorCategory.m
//  RSSchool_T8
//
//  Created by Таня Василёнок on 17.07.21.
//

#import "UIColor+UIColorCategory.h"

@implementation UIColor (UIColorCategory)
+ (UIColor *) customLightGreenForButtonTitle {
return [UIColor colorWithRed:0.13 green:0.69 blue:0.56 alpha:1.0];
}
+ (UIColor *) customLightBlueForCanvasShadow {
    return [UIColor colorWithRed:0.0 green:0.7 blue:1.0 alpha:0.25];
}

// MARK: Colors for palette
+ (UIColor *) customRed {
    return [UIColor colorWithRed:0.89 green:0.11 blue:0.17 alpha:1.0];
}
+ (UIColor *) customDarkBlue {
    return [UIColor colorWithRed:0.24 green:0.09 blue:0.8 alpha:1.0];
}
+ (UIColor *) customLightGreen {
    return [UIColor colorWithRed:0.0 green:0.49 blue:0.22 alpha:1.0];
}
+ (UIColor *) customLightGrey {
    return [UIColor colorWithRed:0.5 green:0.5 blue:0.5 alpha:1.0];
}
+ (UIColor *) customPurple {
    return [UIColor colorWithRed:0.62 green:0.37 blue:0.92 alpha:1.0];
}
+ (UIColor *) customPeach {
    return [UIColor colorWithRed:1.0 green:0.48 blue:0.41 alpha:1.0];
}
+ (UIColor *) customOrange {
    return [UIColor colorWithRed:1.0 green:0.68 blue:0.33 alpha:1.0];
}
+ (UIColor *) customLightBlue {
    return [UIColor colorWithRed:0.0 green:0.68 blue:0.93 alpha:1.0];
}
+ (UIColor *) customPink {
    return [UIColor colorWithRed:1.0 green:0.47 blue:0.64 alpha:1.0];
}
+ (UIColor *) customDarkGrey {
    return [UIColor colorWithRed:0.0 green:0.18 blue:0.24 alpha:1.0];
}
+ (UIColor *) customDarkGreen {
    return [UIColor colorWithRed:0.05 green:0.22 blue:0.09 alpha:1.0];
}
+ (UIColor *) customBordeaux {
    return [UIColor colorWithRed:0.38 green:0.06 blue:0.06 alpha:1.0];
}
@end
