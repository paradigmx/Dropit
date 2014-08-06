//
//  DropitBehavior.h
//  Dropit
//
//  Created by Neo on 8/6/14.
//  Copyright (c) 2014 Paradigm X. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DropitBehavior : UIDynamicBehavior
- (void)addItem:(id <UIDynamicItem>)item;
- (void)removeItem:(id <UIDynamicItem>)item;
@end
