//
// Created by Leandro Linardos on 11/12/15.
// Copyright (c) 2015 Leandro Linardos. All rights reserved.
//

#import "XibView.h"

#import "XibView.h"

@interface XibView ()
@end

@implementation XibView

- (instancetype)init {
    self = [self initWithFrame:CGRectZero];
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self commonInit];
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if (self) {
        [self commonInit];
    }
    return self;
}

- (void)commonInit {
    [self setupFromXib];
}

- (void)setupFromXib {
    UIView *innerView = [[[NSBundle bundleForClass:self.class] loadNibNamed:[self getClassName] owner:self options:nil] firstObject];
    [self addSubview:innerView];
    
    [innerView setTranslatesAutoresizingMaskIntoConstraints:NO];
    [innerView.leftAnchor constraintEqualToAnchor:self.leftAnchor].active = YES;
    [innerView.rightAnchor constraintEqualToAnchor:self.rightAnchor].active = YES;
    [innerView.topAnchor constraintEqualToAnchor:self.topAnchor].active = YES;
    [innerView.bottomAnchor constraintEqualToAnchor:self.bottomAnchor].active = YES;
    
    self.backgroundColor = [UIColor clearColor];
}

- (NSString *)getClassName {
    NSString *className = NSStringFromClass(self.class);
    return className;
}

@end


