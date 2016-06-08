//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}
// Create dictionary with state and capitals
// Make every character lower
// Interate over that dictionary
// Return value

//Within the solveTrivia method, create a Dictionary with the states and their capitals

- (NSString *)solveTrivia{
    
    NSDictionary *stateCapitals = @{@"Alabama" : @"Montgomery",
                                    @"Alaska"  : @"Juneau",
                                    @"Arizona" : @"Phoenix",
                                    @"Arkansas": @"Little Rock",
                                    @"California":@"Sacramento",
                                    @"Colorado": @"Denver",
                                    @"Connecticut":@"Hartford",
                                    @"Delaware": @"Dover",
                                    @"Florida": @"Tallahassee",
                                    @"Georgia":	@"Atlanta",
                                    @"Hawaii":@"Honolulu",
                                    @"Idaho":@"Boise",
                                    @"Illinois": @"Springfield",
                                    @"Indiana" : @"Indianapolis",
                                    @"Iowa" : @"Des Moines",
                                    @"Kansas": @"Topeka",
                                    @"Kentucky":@"Frankfort",
                                    @"Louisiana":@"Baton Rouge",
                                    @"Maine":@"Augusta",
                                    @"Maryland":@"Annapolis",
                                    @"Massachusetts":@"Boston",
                                    @"Michigan":@"Lansing",
                                    @"Minnesota":@"Saint Paul",
                                    @"Mississippi":@"Jackson",
                                    @"Missouri":@"Jefferson City",
                                    @"Montana":	@"Helena",
                                    @"Nebraska"	:@"Lincoln",
                                    @"Nevada":@"Carson City",
                                    @"New Hampshire":@"Concord",
                                    @"New Jersey":@"Trenton",
                                    @"New Mexico":@"Santa Fe",
                                    @"New York":@"Albany",
                                    @"North Carolina":@"Raleigh",
                                    @"North Dakota":@"Bismarck",
                                    @"Ohio": @"Columbus",
                                    @"Oklahoma":@"Oklahoma City",
                                    @"Oregon" :@"Salem",
                                    @"Pennsylvania":@"Harrisburg",
                                    @"Rhode Island":@"Providence",
                                    @"South Carolina":@"Columbia",
                                    @"South Dakota":@"Pierre",
                                    @"Tennessee":@"Nashville",
                                    @"Texas":@"Austin",
                                    @"Utah":@"Salt Lake City",
                                    @"Vermont":	@"Montpelier",
                                    @"Virginia":@"Richmond",
                                    @"Washington":@"Olympia",
                                    @"West Virginia":@"Charleston",
                                    @"Wisconsin":@"Madison",
                                    @"Wyoming":@"Cheyenne",
                                    };
    
    NSString *solution;
                           
                           for (NSString *keyState in stateCapitals) {
                               
                               BOOL matchFound = false;
                               
                               NSString *state = keyState;
                               NSString *capital = stateCapitals[keyState];
                               
                               state = [state lowercaseString];
                               capital = [capital lowercaseString];
                               
                               state = [state stringByReplacingOccurrencesOfString:@" " withString:@""];
                               capital = [capital stringByReplacingOccurrencesOfString:@" " withString:@""];
                               
                               for (NSUInteger stateIndex = 0; stateIndex < state.length; stateIndex++) {
                                   unichar stateLetter = [state characterAtIndex:stateIndex];
                                   for (NSUInteger capIndex = 0; capIndex < capital.length; capIndex++) {
                                       unichar capLetter = [capital characterAtIndex:capIndex];
                                       if (stateLetter == capLetter) {
                                           matchFound = true;
                                       }
                                       
                                   }
                                   
                               }
                               if (!matchFound) {
                                   solution = keyState;
                               }
                               
                           }
                           
                           NSLog (@"The answer is %@",solution);
                            return solution;
                            }


@end
