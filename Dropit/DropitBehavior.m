//
//  DropitBehavior.m
//  Dropit
//
//  Created by Neo on 8/6/14.
//  Copyright (c) 2014 Paradigm X. All rights reserved.
//

#import "DropitBehavior.h"

@interface DropitBehavior()
@property (strong, nonatomic) UIGravityBehavior *gravity;
@property (strong, nonatomic) UICollisionBehavior *collider;
@property (strong, nonatomic) UIDynamicItemBehavior *options;
@end

@implementation DropitBehavior

- (UIGravityBehavior *)gravity {
    if (!_gravity) {
        _gravity = [[UIGravityBehavior alloc] init];
        _gravity.magnitude = 0.9;
    }
    return _gravity;
}

- (UICollisionBehavior *)collider {
    if (!_collider) {
        _collider = [[UICollisionBehavior alloc] init];
        _collider.translatesReferenceBoundsIntoBoundary = YES;
    }
    return _collider;
}

- (UIDynamicItemBehavior *)options {
    if (!_options) {
        _options = [[UIDynamicItemBehavior alloc] init];
        _options.allowsRotation = NO;
    }
    return _options;
}

- (instancetype)init {
    self = [super init];

    if (self) {
        [self addChildBehavior:self.gravity];
        [self addChildBehavior:self.collider];
        [self addChildBehavior:self.options];
    }

    return self;
}

- (void)addItem:(id <UIDynamicItem>)item {
    [self.gravity addItem:item];
    [self.collider addItem:item];
    [self.options addItem:item];
}

- (void)removeItem:(id <UIDynamicItem>)item {
    [self.gravity removeItem:item];
    [self.collider removeItem:item];
    [self.options removeItem:item];
}

@end
