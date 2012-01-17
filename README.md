Purpose
--------------

MACAddress is a category on UIDevice that provides a method to return the MAC address for an iOS device. This is a useful way of uniquely identifying a particular device now that Apple has deprecated the uniqueIdentifier method of UIDevice.


Supported iOS & SDK Versions
-----------------------------

* Supported build target - iOS 5.0 (Xcode 4.2)
* Earliest supported deployment target - iOS 4.3
* Earliest compatible deployment target - iOS 3.0

NOTE: 'Supported' means that the library has been tested with this version. 'Compatible' means that the library should work on this iOS version (i.e. it doesn't rely on any unavailable SDK features) but is no longer being tested for compatibility and may require tweaking or bug fixes to run correctly.


ARC Compatibility
------------------

MACAddress is compatible with both ARC and non-ARC compile targets.


Installation
--------------

To use MACAddress in an app, just drag the UIDevice+MACAddress category files into your project.


Methods
------------

The MACAddress category extends UIDevice with a single method:

	- (NSString *)MACAddress
	
This method returns the device's MAC address as a colon-delimited hexadecimal string in the form "00:00:00:00:00:00". You can use this method as follows:

    NSString *macAddress = [[UIDevice currentDevice] MACAddress];

If you do not want the colons, you can remove them using the following code:

    macAddress = [macAddress stringByReplacingOccurrencesOfString:@":" withString:@""];