# FSUserDefaults #

Clean, easy, and low maintenance (virtually none) user defaults for iOS & macOS that uses the Objective-C runtime to dynamically manage defaults properties around **NSUserDefaults**. 

## Usage ##

Derive a custom defaults class from **FSUserDefaults** and simply add defaults properties to the class and declare them as dynamic in the class 
implementation.

    @interface MyUserDefaults : FSUserDefaults
    @property (nonatomic, strong) NSString *aString;
    @end
    
    @implementation MyUserDefaults
    @dynamic aString;
    @end

Use as normal properties in code:

    MyUserDefaults *defaults = [MyUserDefaults sharedInstance];
    defaults.aString = @"A string.";
    //...
    NSString *theString = defaults.aString;
    //...

Handles all types supported by **NSUserDefaults**, as well as **NSUserDefaults** instances initialized with a suite name (for App Groups).

    MyUserDefaults *appGroupDefaults = [[MyUserDefaults alloc] initWithSuite:@"AppGroup"];

## License ##

FSUserDefaults is available under the MIT license. See the [LICENSE](https://github.com/cfloisand/FSUserDefaults/blob/master/LICENSE.txt) file for more info.
