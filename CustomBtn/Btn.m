//
//  Btn.m
//  CustomBtn
//
//  Created by 曹 聪 on 12-7-16.
//  Copyright (c) 2012年 曹 聪. All rights reserved.
//

#import "Btn.h"

@implementation Btn

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setAdjustsImageWhenHighlighted:NO];
        [self setTitle:@"点我" forState:UIControlStateNormal];
        [self setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    }
    return self;
}

- (void)drawRect:(CGRect)rect
{
    [super drawRect:rect];

    switch (status) {
        case kOriginal:
        {
            CGContextRef contextRef = UIGraphicsGetCurrentContext();
            CGContextSetLineWidth(contextRef, 1.0);
            CGContextSetRGBFillColor(contextRef, 255.0, 0.0, 0.0, 1.0);
            CGContextSetRGBStrokeColor(contextRef, 0.0, 0.0, 255.0, 1.0);
            CGContextFillEllipseInRect(contextRef, rect);
            CGContextStrokeEllipseInRect(contextRef, rect);
        }
            break;
        case kTouchDown:
        {
            //        CGRect imagerect = CGRectMake(0, 0, 1, 1);
            //        UIGraphicsBeginImageContext(imagerect.size);
            //        CGContextRef context = UIGraphicsGetCurrentContext();
            //        CGContextSetFillColorWithColor(context, [[UIColor redColor] CGColor]);
            //        CGContextFillRect(context, imagerect);
            //        UIImage *img = UIGraphicsGetImageFromCurrentImageContext();
            //        UIGraphicsEndImageContext();
            //        [img drawInRect:self.bounds];
            
            CGContextRef contextRef = UIGraphicsGetCurrentContext();
            CGContextSetLineWidth(contextRef, 1.0);
            CGContextSetRGBFillColor(contextRef, 0.0, 255.0, 0.0, 1.0);
            CGContextSetRGBStrokeColor(contextRef, 0.0, 0.0, 255.0, 1.0);
            CGContextFillEllipseInRect(contextRef, rect);
            CGContextStrokeEllipseInRect(contextRef, rect);
        }
            break;
            
        default:
            break;
    }
    
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    status = kTouchDown;
    [self setNeedsDisplay];
}

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event {
    status = kOriginal;
    [self setNeedsDisplay];
}

@end
