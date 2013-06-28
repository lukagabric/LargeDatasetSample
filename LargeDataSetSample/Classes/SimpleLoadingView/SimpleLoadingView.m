#import "SimpleLoadingView.h"


@implementation SimpleLoadingView


#pragma mark - Init


- (id)init
{
    self = [super init];
    if (self)
    {
        [self initialize];        
    }
    return self;
}


- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self)
    {
        [self initialize];
    }
    return self;
}


- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self)
    {
        [self initialize];
    }
    return self;
}


- (void)initialize
{
    UIActivityIndicatorView *spinner = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleWhiteLarge];
    spinner.center = self.center;
    spinner.autoresizingMask = UIViewAutoresizingFlexibleLeftMargin | UIViewAutoresizingFlexibleRightMargin | UIViewAutoresizingFlexibleBottomMargin | UIViewAutoresizingFlexibleTopMargin;
    [spinner startAnimating];
    [self addSubview:spinner];

    self.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    self.backgroundColor = [UIColor colorWithWhite:0.1 alpha:0.9];
}


#pragma mark - Show loading


+ (void)showLoadingOnView:(UIView *)view
{
    SimpleLoadingView *loading = [[SimpleLoadingView alloc] initWithFrame:view.bounds];
    [view addSubview:loading];
}


+ (void)hideLoadingFromView:(UIView *)view
{
    for (UIView *subview in view.subviews)
    {
        if ([subview isKindOfClass:[self class]])
        {
            [subview removeFromSuperview];
        }
    }
}


#pragma mark - Hide loading


@end