#import "AppDelegate.h"
#import "MainViewController.h"
#import "Contact.h"


@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor whiteColor];
    self.window.rootViewController = [MainViewController new];
    [self.window makeKeyAndVisible];
    
    return YES;
}


@end