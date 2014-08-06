//
//  BezierPathView.m
//  Dropit
//
//  Created by Neo on 8/6/14.
//  Copyright (c) 2014 Paradigm X. All rights reserved.
//

#import "BezierPathView.h"

@implementation BezierPathView

- (void)setPath:(UIBezierPath *)path {
    _path = path;
    [self setNeedsDisplay];
}

- (void)drawRect:(CGRect)rect
{
    [self.path stroke];
}

@end
