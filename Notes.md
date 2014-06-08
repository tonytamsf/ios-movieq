### iOS class 

### useful site
http://pttrns.com/ - look at how others have done it

### API
Application: Movie Queue Key: 
t7anbdt8gp32yvw33cs92zkg 
Status: active Register ed: 1 minute ago

# Video
- 18:34 - buiding the URL
- 7:58 - building cell

## Notes
// TODO remember to assign rootViewController
// 2014-06-04 20:00:07.779 MovieQueue[14444:60b] Application windows are expected to have a root view controller at the end of application launch
//
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];

    self.window.rootViewController = [[MovieQueueViewController alloc] init];

### Keys
Ctrl-CMD Up to switch between
    
