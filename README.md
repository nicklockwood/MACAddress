NOTE: As of iOS 7, accessing the MAC address is no longer supported on iOS.
-------------------------------------

Use of the MACAddress library on iOS is not recommended except for backwards compatibility with iOS 5, will return only zeros on iOS 7, and may result in App Store rejection. It is still fine to use on Mac OS X.


Purpose
--------------

MACAddress is a simple global method that returns the MAC address for an iOS device or Mac. This is a useful way of uniquely identifying a particular device now that Apple has deprecated the uniqueIdentifier method of UIDevice.


Supported iOS & SDK Versions
-----------------------------

* Supported build target - iOS 5.1 / Mac OS 10.7 (Xcode 4.3.2)
* Earliest supported deployment target - iOS 4.3 / Mac OS 10.6
* Earliest compatible deployment target - iOS 3.0 / Mac OS 10.6

NOTE: 'Supported' means that the library has been tested with this version. 'Compatible' means that the library should work on this iOS version (i.e. it doesn't rely on any unavailable SDK features) but is no longer being tested for compatibility and may require tweaking or bug fixes to run correctly.


ARC Compatibility
------------------

MACAddress is compatible with both ARC and non-ARC compile targets.


Installation
--------------

To use MACAddress in an app, just drag the MACAddress class files into your project.


MACAddress class
-----------------

The MACAddress class provides a single class function.

    + (NSString *)address;
	
This method returns the device's MAC address as a colon-delimited hexadecimal string in the form "00:00:00:00:00:00".

If you do not want the colons, you can specify your own delimiter using the following method. To remove the delimiter altogether, pass an empty string.

    + (NSString *)addressWithDelimiter:(NSString *)delimiter;


UIDevice class
---------------

For convenience and backwards compatibility with the 1.0 release, the MAC address is also available via the following category method on UIDevice:

    - (NSString *)MACAddress;

The UIDevice class is only available on iOS.