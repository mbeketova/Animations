//
//  Animations.h
//  MoscowZoo
//
//  Created by Admin on 09.08.15.
//  Copyright (c) 2015 Mariya Beketova. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface Animations : NSObject

+ (void) change_CH_View:(UIView*)view Color:(UIColor*)color;
+ (void) moveViewRight: (UIView*)view Alpha:(int)alfa OriginX:(int)originX;
+ (void) moveViewLeft: (UIView*)view Alpha:(int)alfa OriginX:(int)originX;

@end
