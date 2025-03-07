//===----------------------------------------------------------------------===//
//
// This source file is part of the DeviceKit open source project
//
// Copyright © 2014 - 2018 Dennis Weissmann and the DeviceKit project authors
//
// License: https://github.com/dennisweissmann/DeviceKit/blob/master/LICENSE
// Contributors: https://github.com/dennisweissmann/DeviceKit#contributors
//
//===----------------------------------------------------------------------===//

#if os(watchOS)
import WatchKit
#elseif os(macOS)
import AppKit
#elseif os(iOS)
import UIKit
#endif

// MARK: - Device

/// This enum is a value-type wrapper and extension of
/// [`UIDevice`](https://developer.apple.com/library/ios/documentation/UIKit/Reference/UIDevice_Class/).
///
/// Usage:
///
///     let device = Device.current
///
///     print(device)     // prints, for example, "iPhone 6 Plus"
///
///     if device == .iPhone6Plus {
///         // Do something
///     } else {
///         // Do something else
///     }
///
///     ...
///
///     if device.batteryState == .full || device.batteryState >= .charging(75) {
///         print("Your battery is happy! 😊")
///     }
///
///     ...
///
///     if device.batteryLevel >= 50 {
///         install_iOS()
///     } else {
///         showError()
///     }
///
public enum Device {
  #if os(iOS)
    /// Device is an [iPod touch (5th generation)](https://support.apple.com/kb/SP657)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP657/sp657_ipod-touch_size.jpg)
    case iPodTouch5
    /// Device is an [iPod touch (6th generation)](https://support.apple.com/kb/SP720)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP720/SP720-ipod-touch-specs-color-sg-2015.jpg)
    case iPodTouch6
    /// Device is an [iPod touch (7th generation)](https://support.apple.com/kb/SP796)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP796/ipod-touch-7th-gen_2x.png)
    case iPodTouch7
    /// Device is an [iPhone 4](https://support.apple.com/kb/SP587)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP643/sp643_iphone4s_color_black.jpg)
    case iPhone4
    /// Device is an [iPhone 4s](https://support.apple.com/kb/SP643)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP643/sp643_iphone4s_color_black.jpg)
    case iPhone4s
    /// Device is an [iPhone 5](https://support.apple.com/kb/SP655)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP655/sp655_iphone5_color.jpg)
    case iPhone5
    /// Device is an [iPhone 5c](https://support.apple.com/kb/SP684)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP684/SP684-color_yellow.jpg)
    case iPhone5c
    /// Device is an [iPhone 5s](https://support.apple.com/kb/SP685)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP685/SP685-color_black.jpg)
    case iPhone5s
    /// Device is an [iPhone 6](https://support.apple.com/kb/SP705)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP705/SP705-iphone_6-mul.png)
    case iPhone6
    /// Device is an [iPhone 6 Plus](https://support.apple.com/kb/SP706)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP706/SP706-iphone_6_plus-mul.png)
    case iPhone6Plus
    /// Device is an [iPhone 6s](https://support.apple.com/kb/SP726)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP726/SP726-iphone6s-gray-select-2015.png)
    case iPhone6s
    /// Device is an [iPhone 6s Plus](https://support.apple.com/kb/SP727)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP727/SP727-iphone6s-plus-gray-select-2015.png)
    case iPhone6sPlus
    /// Device is an [iPhone 7](https://support.apple.com/kb/SP743)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP743/iphone7-black.png)
    case iPhone7
    /// Device is an [iPhone 7 Plus](https://support.apple.com/kb/SP744)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP744/iphone7-plus-black.png)
    case iPhone7Plus
    /// Device is an [iPhone SE](https://support.apple.com/kb/SP738)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP738/SP738.png)
    case iPhoneSE
    /// Device is an [iPhone 8](https://support.apple.com/kb/SP767)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP767/iphone8.png)
    case iPhone8
    /// Device is an [iPhone 8 Plus](https://support.apple.com/kb/SP768)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP768/iphone8plus.png)
    case iPhone8Plus
    /// Device is an [iPhone X](https://support.apple.com/kb/SP770)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP770/iphonex.png)
    case iPhoneX
    /// Device is an [iPhone Xs](https://support.apple.com/kb/SP779)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP779/SP779-iphone-xs.jpg)
    case iPhoneXS
    /// Device is an [iPhone Xs Max](https://support.apple.com/kb/SP780)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP780/SP780-iPhone-Xs-Max.jpg)
    case iPhoneXSMax
    /// Device is an [iPhone Xʀ](https://support.apple.com/kb/SP781)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP781/SP781-iPhone-xr.jpg)
    case iPhoneXR
    /// Device is an [iPhone 11](https://support.apple.com/kb/SP804)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP804/sp804-iphone11_2x.png)
    case iPhone11
    /// Device is an [iPhone 11 Pro](https://support.apple.com/kb/SP805)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP805/sp805-iphone11pro_2x.png)
    case iPhone11Pro
    /// Device is an [iPhone 11 Pro Max](https://support.apple.com/kb/SP806)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP806/sp806-iphone11pro-max_2x.png)
    case iPhone11ProMax
    /// Device is an [iPad 2](https://support.apple.com/kb/SP622)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP622/SP622_01-ipad2-mul.png)
    case iPad2
    /// Device is an [iPad (3rd generation)](https://support.apple.com/kb/SP647)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP662/sp662_ipad-4th-gen_color.jpg)
    case iPad3
    /// Device is an [iPad (4th generation)](https://support.apple.com/kb/SP662)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP662/sp662_ipad-4th-gen_color.jpg)
    case iPad4
    /// Device is an [iPad Air](https://support.apple.com/kb/SP692)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP692/SP692-specs_color-mul.png)
    case iPadAir
    /// Device is an [iPad Air 2](https://support.apple.com/kb/SP708)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP708/SP708-space_gray.jpeg)
    case iPadAir2
    /// Device is an [iPad (5th generation)](https://support.apple.com/kb/SP751)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP751/ipad_5th_generation.png)
    case iPad5
    /// Device is an [iPad (6th generation)](https://support.apple.com/kb/SP774)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP774/sp774-ipad-6-gen_2x.png)
    case iPad6
    /// Device is an [iPad Air (3rd generation)](https://support.apple.com/kb/SP787)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP787/ipad-air-2019.jpg)
    case iPadAir3
    /// Device is an [iPad (7th generation)](https://support.apple.com/kb/SP807)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP807/sp807-ipad-7th-gen_2x.png)
    case iPad7
    /// Device is an [iPad Mini](https://support.apple.com/kb/SP661)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP661/sp661_ipad_mini_color.jpg)
    case iPadMini
    /// Device is an [iPad Mini 2](https://support.apple.com/kb/SP693)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP693/SP693-specs_color-mul.png)
    case iPadMini2
    /// Device is an [iPad Mini 3](https://support.apple.com/kb/SP709)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP709/SP709-space_gray.jpeg)
    case iPadMini3
    /// Device is an [iPad Mini 4](https://support.apple.com/kb/SP725)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP725/SP725ipad-mini-4.png)
    case iPadMini4
    /// Device is an [iPad Mini (5th generation)](https://support.apple.com/kb/SP788)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP788/ipad-mini-2019.jpg)
    case iPadMini5
    /// Device is an [iPad Pro 9.7-inch](https://support.apple.com/kb/SP739)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP739/SP739.png)
    case iPadPro9Inch
    /// Device is an [iPad Pro 12-inch](https://support.apple.com/kb/SP723)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP723/SP723-iPad_Pro_2x.png)
    case iPadPro12Inch
    /// Device is an [iPad Pro 12-inch (2nd generation)](https://support.apple.com/kb/SP761)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP761/ipad-pro-12in-hero-201706.png)
    case iPadPro12Inch2
    /// Device is an [iPad Pro 10.5-inch](https://support.apple.com/kb/SP762)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP761/ipad-pro-10in-hero-201706.png)
    case iPadPro10Inch
    /// Device is an [iPad Pro 11-inch](https://support.apple.com/kb/SP784)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP784/ipad-pro-11-2018_2x.png)
    case iPadPro11Inch
    /// Device is an [iPad Pro 12.9-inch (3rd generation)](https://support.apple.com/kb/SP785)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP785/ipad-pro-12-2018_2x.png)
    case iPadPro12Inch3
    /// Device is an [iPad Pro 11-inch (2nd generation)](https://support.apple.com/kb/SP814)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP814/ipad-pro-11-2020.jpeg)
    case iPadPro11Inch2
    /// Device is an [iPad Pro 12.9-inch (4th generation)](https://support.apple.com/kb/SP815)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP815/ipad-pro-12-2020.jpeg)
    case iPadPro12Inch4
    /// Device is an [iPad Pro 11-inch (3rd generation)](https://support.apple.com/kb/TODO)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/TODO)
    case iPadPro11Inch3
    /// Device is an [iPad Pro 12.9-inch (5th generation)](https://support.apple.com/kb/TODO)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/TODO)
    case iPadPro12Inch5
    /// Device is a [HomePod](https://support.apple.com/kb/SP773)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP773/homepod_space_gray_large_2x.jpg)
    case homePod
  #elseif os(tvOS)
    /// Device is an [Apple TV HD](https://support.apple.com/kb/SP724) (Previously Apple TV (4th generation))
    ///
    /// ![Image](http://images.apple.com/v/tv/c/images/overview/buy_tv_large_2x.jpg)
    case appleTVHD
    /// Device is an [Apple TV 4K](https://support.apple.com/kb/SP769)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP769/appletv4k.png)
    case appleTV4K
    /// Device is an [Apple TV 4K (2nd generation)](https://support.apple.com/kb/TODO)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/TODO)
    case appleTV4K2
  #elseif os(watchOS)
    /// Device is an [Apple Watch (1st generation)](https://support.apple.com/kb/SP735)
    ///
    /// ![Image](https://km.support.apple.com/resources/sites/APPLE/content/live/IMAGES/0/IM784/en_US/apple_watch_sport-240.png)
    case appleWatchSeries0_38mm
    /// Device is an [Apple Watch (1st generation)](https://support.apple.com/kb/SP735)
    ///
    /// ![Image](https://km.support.apple.com/resources/sites/APPLE/content/live/IMAGES/0/IM784/en_US/apple_watch_sport-240.png)
    case appleWatchSeries0_42mm
    /// Device is an [Apple Watch Series 1](https://support.apple.com/kb/SP745)
    ///
    /// ![Image](https://km.support.apple.com/resources/sites/APPLE/content/live/IMAGES/0/IM848/en_US/applewatch-series2-aluminum-temp-240.png)
    case appleWatchSeries1_38mm
    /// Device is an [Apple Watch Series 1](https://support.apple.com/kb/SP745)
    ///
    /// ![Image](https://km.support.apple.com/resources/sites/APPLE/content/live/IMAGES/0/IM848/en_US/applewatch-series2-aluminum-temp-240.png)
    case appleWatchSeries1_42mm
    /// Device is an [Apple Watch Series 2](https://support.apple.com/kb/SP746)
    ///
    /// ![Image](https://km.support.apple.com/resources/sites/APPLE/content/live/IMAGES/0/IM852/en_US/applewatch-series2-hermes-240.png)
    case appleWatchSeries2_38mm
    /// Device is an [Apple Watch Series 2](https://support.apple.com/kb/SP746)
    ///
    /// ![Image](https://km.support.apple.com/resources/sites/APPLE/content/live/IMAGES/0/IM852/en_US/applewatch-series2-hermes-240.png)
    case appleWatchSeries2_42mm
    /// Device is an [Apple Watch Series 3](https://support.apple.com/kb/SP766)
    ///
    /// ![Image](https://km.support.apple.com/resources/sites/APPLE/content/live/IMAGES/0/IM893/en_US/apple-watch-s3-nikeplus-240.png)
    case appleWatchSeries3_38mm
    /// Device is an [Apple Watch Series 3](https://support.apple.com/kb/SP766)
    ///
    /// ![Image](https://km.support.apple.com/resources/sites/APPLE/content/live/IMAGES/0/IM893/en_US/apple-watch-s3-nikeplus-240.png)
    case appleWatchSeries3_42mm
    /// Device is an [Apple Watch Series 4](https://support.apple.com/kb/SP778)
    ///
    /// ![Image](https://km.support.apple.com/resources/sites/APPLE/content/live/IMAGES/0/IM911/en_US/aw-series4-nike-240.png)
    case appleWatchSeries4_40mm
    /// Device is an [Apple Watch Series 4](https://support.apple.com/kb/SP778)
    ///
    /// ![Image](https://km.support.apple.com/resources/sites/APPLE/content/live/IMAGES/0/IM911/en_US/aw-series4-nike-240.png)
    case appleWatchSeries4_44mm
    /// Device is an [Apple Watch Series 5](https://support.apple.com/kb/SP808)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP808/sp808-apple-watch-series-5_2x.png)
    case appleWatchSeries5_40mm
    /// Device is an [Apple Watch Series 5](https://support.apple.com/kb/SP808)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP808/sp808-apple-watch-series-5_2x.png)
    case appleWatchSeries5_44mm
  #elseif os(macOS)
    /// Device is a [Mac mini (2018)](https://support.apple.com/kb/SP782)
    ///
    /// ![Image](https://support.apple.com/library/content/dam/edam/applecare/images/en_US/macmini/mac-mini-2018-space-gray.jpg)
    case macMini2018
    /// Device is a [Mac mini (Late 2014)](https://support.apple.com/kb/SP710)
    ///
    /// ![Image](https://support.apple.com/library/content/dam/edam/applecare/images/en_US/macmini/mac-mini-2014.jpg)
    case macMiniLate2014
    /// Device is a [Mac mini (Late 2012)](https://support.apple.com/kb/SP659)
    ///
    /// ![Image](https://support.apple.com/library/content/dam/edam/applecare/images/en_US/macmini/mac-mini-2011-2012-2014-device.jpg)
    case macMiniLate2012
    /// Device is a [Mac mini (Mid 2011)](https://support.apple.com/kb/SP632)
    ///
    /// ![Image](https://support.apple.com/library/content/dam/edam/applecare/images/en_US/macmini/mac-mini-2011-2012-2014-device.jpg)
    case macMiniMid2011
    /// Device is a [Mac mini (Mid 2010)](https://support.apple.com/kb/SP585)
    ///
    /// ![Image](https://support.apple.com/library/content/dam/edam/applecare/images/en_US/macmini/mac-mini-2010-device.jpg)
    case macMiniMid2010
    /// Device is a [Mac mini (Late 2009)](https://support.apple.com/kb/SP577) or [Mac mini (Early 2009)](https://support.apple.com/kb/SP505)
    ///
    /// ![Image](https://support.apple.com/library/content/dam/edam/applecare/images/en_US/macmini/mac-mini-2009-device.jpg)
    case macMini2009
    /// Device is a [iMac (Retina 5K, 27-inch, 2019)](https://support.apple.com/kb/SP790)
    ///
    /// ![Image](https://support.apple.com/library/content/dam/edam/applecare/images/en_US/imac/imac-27-2017.jpg)
    case iMacRetina5K27Inch2019
    /// Device is a [iMac (Retina 4K, 21.5-inch, 2019)](https://support.apple.com/kb/SP789)
    ///
    /// ![Image](https://support.apple.com/library/content/dam/edam/applecare/images/en_US/imac/imac-21-5-2017.jpg)
    case iMacRetina4K215Inch2019
    /// Device is a [iMac (Retina 5K, 27-inch, 2017)](https://support.apple.com/kb/SP760)
    ///
    /// ![Image](https://support.apple.com/library/content/dam/edam/applecare/images/en_US/imac/imac-27-2017.jpg)
    case iMacRetina5K27Inch2017
    /// Device is a [iMac (Retina 4K, 21.5-inch, 2017)](https://support.apple.com/kb/SP759)
    ///
    /// ![Image](https://support.apple.com/library/content/dam/edam/applecare/images/en_US/imac/imac-21-5-2017.jpg)
    case iMacRetina4K215Inch2017
    /// Device is a [iMac (21.5-inch, 2017)](https://support.apple.com/kb/SP758)
    ///
    /// ![Image](https://support.apple.com/library/content/dam/edam/applecare/images/en_US/imac/imac-21-5-2017.jpg)
    case iMac215Inch2017
    /// Device is a [iMac (Retina 5K, 27-inch, Late 2015)](https://support.apple.com/kb/SP731)
    ///
    /// ![Image](https://support.apple.com/library/content/dam/edam/applecare/images/en_US/imac/imac-27-late-2015.jpg)
    case iMacRetina5K27InchLate2015
    /// Device is a [iMac (Retina 4K, 21.5-inch, Late 2015)](https://support.apple.com/kb/SP732)
    ///
    /// ![Image](https://support.apple.com/library/content/dam/edam/applecare/images/en_US/imac/imac-21-5-2015.jpg)
    case iMacRetina4K215InchLate2015
    /// Device is a [iMac (21.5-inch, Late 2015)](https://support.apple.com/kb/SP733)
    ///
    /// ![Image](https://support.apple.com/library/content/dam/edam/applecare/images/en_US/imac/imac-21-5-2015.jpg)
    case iMac215InchLate2015
    /// Device is a [iMac (Retina 5K, 27-inch, Mid 2015)](https://support.apple.com/kb/SP718) or [iMac (Retina 5K, 27-inch, Late 2014)](https://support.apple.com/kb/SP707)
    ///
    /// ![Image](https://support.apple.com/library/content/dam/edam/applecare/images/en_US/imac/imac-27-late-2015.jpg)
    case iMacRetina5K27InchMid2015
    /// Device is a [iMac (21.5-inch, Mid 2014)](https://support.apple.com/kb/SP701)
    ///
    /// ![Image](https://support.apple.com/library/content/dam/edam/applecare/images/en_US/imac/imac-27-2014.jpg)
    case iMac215InchMid2014
    /// Device is a [iMac (27-inch, Late 2013)](https://support.apple.com/kb/SP688)
    ///
    /// ![Image](https://support.apple.com/library/content/dam/edam/applecare/images/en_US/imac/imac-27-2013.jpg)
    case iMac27InchLate2013
    /// Device is a [iMac (21.5-inch, Late 2013)](https://support.apple.com/kb/SP687)
    ///
    /// ![Image](https://support.apple.com/library/content/dam/edam/applecare/images/en_US/imac/imac-27-2013.jpg)
    case iMac215InchLate2013
    /// Device is a [iMac (21.5-inch, Late 2012)](https://support.apple.com/kb/SP665)
    ///
    /// ![Image](https://support.apple.com/library/content/dam/edam/applecare/images/en_US/imac/imac-27-2012.jpg)
    case iMac215InchLate2012
    /// Device is a [iMac (27-inch, Mid 2011)](https://support.apple.com/kb/SP689)
    ///
    /// ![Image](https://support.apple.com/library/content/dam/edam/applecare/images/en_US/imac/imac-27-2011.jpg)
    case iMac27InchMid2011
    /// Device is a [iMac (21.5-inch, Mid 2011)](https://support.apple.com/kb/SP623)
    ///
    /// ![Image](https://support.apple.com/library/content/dam/edam/applecare/images/en_US/imac/imac-27-2011.jpg)
    case iMac215InchMid2011
    /// Device is a [iMac (27-inch, Mid 2010)](https://support.apple.com/kb/SP695)
    ///
    /// ![Image](https://support.apple.com/library/content/dam/edam/applecare/images/en_US/imac/imac-27-2010.jpg)
    case iMac27InchMid2010
    /// Device is a [iMac (21.5-inch, Mid 2010)](https://support.apple.com/kb/SP588)
    ///
    /// ![Image](https://support.apple.com/library/content/dam/edam/applecare/images/en_US/imac/imac-27-2010.jpg)
    case iMac215InchMid2010
    /// Device is a [Mac Pro (2019)](https://support.apple.com/kb/SP797)
    ///
    /// ![Image](https://support.apple.com/library/content/dam/edam/applecare/images/en_US/macpro/id-mac-pro-2019.jpg)
    case macPro2019
    /// Device is a [Mac Pro (Late 2013)](https://support.apple.com/kb/SP697)
    ///
    /// ![Image](https://support.apple.com/library/content/dam/edam/applecare/images/en_US/macpro/id-mac-pro-2013.jpg)
    case macProLate2013
    /// Device is a [Mac Pro (Mid 2012)](https://support.apple.com/kb/SP652)
    ///
    /// ![Image](https://support.apple.com/library/content/dam/edam/applecare/images/en_US/macpro/id-mac-pro-2009-2012.jpg)
    case macProMid2012
    /// Device is a [Mac Pro (Early 2009)](https://support.apple.com/kb/SP506)
    ///
    /// ![Image](https://support.apple.com/library/content/dam/edam/applecare/images/en_US/macpro/id-mac-pro-2009-2012.jpg)
    case macProEarly2009
    /// Device is a [MacBook (Retina, 12-inch, 2017)](https://support.apple.com/kb/SP757)
    ///
    /// ![Image](https://support.apple.com/library/content/dam/edam/applecare/images/en_US/macbook/macbook-2017-device.jpg)
    case macBookRetina12Inch2017
    /// Device is a [MacBook (Retina, 12-inch, Early 2016)](https://support.apple.com/kb/SP741)
    ///
    /// ![Image](https://support.apple.com/library/content/dam/edam/applecare/images/en_US/macbook/macbook-2016-device.jpg)
    case macBookRetina12InchEarly2016
    /// Device is a [MacBook (Retina, 12-inch, Early 2015)](https://support.apple.com/kb/SP712)
    ///
    /// ![Image](https://support.apple.com/library/content/dam/edam/applecare/images/en_US/macbook/macbook-2015-device.jpg)
    case macBookRetina12InchEarly2015
    /// Device is a [MacBook (13-inch, Mid 2010)](https://support.apple.com/kb/SP584)
    ///
    /// ![Image](https://support.apple.com/library/content/dam/edam/applecare/images/en_US/macbook/macbook-late-2009-2010-device.jpg)
    case macBook13InchMid2010
    /// Device is a [MacBook (13-inch, Late 2009)](https://support.apple.com/kb/SP579)
    ///
    /// ![Image](https://support.apple.com/library/content/dam/edam/applecare/images/en_US/macbook/macbook-late-2009-2010-device.jpg)
    case macBook13InchLate2009
    /// Device is a [MacBook Air (Retina, 13-inch, 2019)](https://support.apple.com/kb/SP798)
    ///
    /// ![Image](https://support.apple.com/library/content/dam/edam/applecare/images/en_US/macbookair/macbook-air-2018-device.jpg)
    case macBookAirRetina13Inch2019
    /// Device is a [MacBook Air (Retina, 13-inch, 2018)](https://support.apple.com/kb/SP783)
    ///
    /// ![Image](https://support.apple.com/library/content/dam/edam/applecare/images/en_US/macbookair/macbook-air-2018-device.jpg)
    case macBookAirRetina13Inch2018
    /// Device is a [MacBook Air (13-inch, 2017)](https://support.apple.com/kb/SP753)
    ///
    /// ![Image](https://support.apple.com/library/content/dam/edam/applecare/images/en_US/macbookair/macbook-air-2017-device.jpg)
    case macBookAir13Inch2017
    /// Device is a [MacBook Air (13-inch, Early 2015)](https://support.apple.com/kb/SP714)
    ///
    /// ![Image](https://support.apple.com/library/content/dam/edam/applecare/images/en_US/macbookair/macbook-air-2015-13in-device.jpg)
    case macBookAir13InchEarly2015
    /// Device is a [MacBook Air (11-inch, Early 2015)](https://support.apple.com/kb/SP713)
    ///
    /// ![Image](https://support.apple.com/library/content/dam/edam/applecare/images/en_US/macbookair/macbook-air-2015-11in-device.jpg)
    case macBookAir11InchEarly2015
    /// Device is a [MacBook Air (13-inch, Early 2014)](https://support.apple.com/kb/SP700) or [MacBook Air (13-inch, Mid 2013)](https://support.apple.com/kb/SP678)
    ///
    /// ![Image](https://support.apple.com/library/content/dam/edam/applecare/images/en_US/macbookair/macbook-air-2013-2014-13in-device.jpg)
    case macBookAir13InchEarly2014
    /// Device is a [MacBook Air (11-inch, Early 2014)](https://support.apple.com/kb/SP699) or [MacBook Air (11-inch, Mid 2013)](https://support.apple.com/kb/SP677)
    ///
    /// ![Image](https://support.apple.com/library/content/dam/edam/applecare/images/en_US/macbookair/macbook-air-2013-2014-11in-device.jpg)
    case macBookAir11InchEarly2014
    /// Device is a [MacBook Air (13-inch, Mid 2012)](https://support.apple.com/kb/SP670)
    ///
    /// ![Image](https://support.apple.com/library/content/dam/edam/applecare/images/en_US/macbookair/macbook-air-2012-13in-device.jpg)
    case macBookAir13InchMid2012
    /// Device is a [MacBook Air (11-inch, Mid 2012)](https://support.apple.com/kb/SP650)
    ///
    /// ![Image](https://support.apple.com/library/content/dam/edam/applecare/images/en_US/macbookair/macbook-air-2012-11in-device.jpg)
    case macBookAir11InchMid2012
    /// Device is a [MacBook Air (13-inch, Mid 2011)](https://support.apple.com/kb/SP683)
    ///
    /// ![Image](https://support.apple.com/library/content/dam/edam/applecare/images/en_US/macbookair/macbook-air-2011-13in-device.jpg)
    case macBookAir13InchMid2011
    /// Device is a [MacBook Air (11-inch, Mid 2011)](https://support.apple.com/kb/SP631)
    ///
    /// ![Image](https://support.apple.com/library/content/dam/edam/applecare/images/en_US/macbookair/macbook-air-2011-11in-device.jpg)
    case macBookAir11InchMid2011
    /// Device is a [MacBook Air (13-inch, Late 2010)](https://support.apple.com/kb/SP618)
    ///
    /// ![Image](https://support.apple.com/library/content/dam/edam/applecare/images/en_US/macbookair/macbook-air-2009-2010-13in-device.jpg)
    case macBookAir13InchLate2010
    /// Device is a [MacBook Air (11-inch, Late 2010)](https://support.apple.com/kb/SP617)
    ///
    /// ![Image](https://support.apple.com/library/content/dam/edam/applecare/images/en_US/macbookair/macbook-air-2010-11in-device.jpg)
    case macBookAir11InchLate2010
    /// Device is a [MacBook Air (Mid 2009)](https://support.apple.com/kb/SP548)
    ///
    /// ![Image](https://support.apple.com/library/content/dam/edam/applecare/images/en_US/macbookair/macbook-air-2009-2010-13in-device.jpg)
    case macBookAirMid2009
    /// Device is a [MacBook Pro (16-inch, 2019)](https://support.apple.com/kb/SP809)
    ///
    /// ![Image](https://support.apple.com/library/content/dam/edam/applecare/images/en_US/macbookpro/macbook-pro-16in-2019.jpg)
    case macBookPro16Inch2019
    /// Device is a [MacBook Pro (13-inch, 2019, Two Thunderbolt 3 ports)](https://support.apple.com/kb/SP799)
    ///
    /// ![Image](https://support.apple.com/library/content/dam/edam/applecare/images/en_US/macbookpro/macbook-pro-2018-13in-device.jpg)
    case macBookPro13Inch2019TwoThunderbolt3Ports
    /// Device is a [MacBook Pro (15-inch, 2019)](https://support.apple.com/kb/SP794)
    ///
    /// ![Image](https://support.apple.com/library/content/dam/edam/applecare/images/en_US/macbookpro/macbook-pro-2018-15in-device.jpg)
    case macBookPro15Inch2019
    /// Device is a [MacBook Pro (13-inch, 2019, Four Thunderbolt 3 ports)](https://support.apple.com/kb/SP795) or [MacBook Pro (13-inch, 2018, Four Thunderbolt 3 ports)](https://support.apple.com/kb/SP775)
    ///
    /// ![Image](https://support.apple.com/library/content/dam/edam/applecare/images/en_US/macbookpro/macbook-pro-2018-13in-device.jpg)
    case macBookPro13Inch2019FourThunderbolt3Ports
    /// Device is a [MacBook Pro (15-inch, 2018)](https://support.apple.com/kb/SP776)
    ///
    /// ![Image](https://support.apple.com/library/content/dam/edam/applecare/images/en_US/macbookpro/macbook-pro-2018-15in-device.jpg)
    case macBookPro15Inch2018
    /// Device is a [MacBook Pro (15-inch, 2017)](https://support.apple.com/kb/SP756)
    ///
    /// ![Image](https://support.apple.com/library/content/dam/edam/applecare/images/en_US/macbookpro/macbook-pro-2017-15in-device.jpg)
    case macBookPro15Inch2017
    /// Device is a [MacBook Pro (13-inch, 2017, Four Thunderbolt 3 ports)](https://support.apple.com/kb/SP755)
    ///
    /// ![Image](https://support.apple.com/library/content/dam/edam/applecare/images/en_US/macbookpro/macbook-pro-2017-13in-device.jpg)
    case macBookPro13Inch2017FourThunderbolt3Ports
    /// Device is a [MacBook Pro (13-inch, 2017, Two Thunderbolt 3 ports)](https://support.apple.com/kb/SP754)
    ///
    /// ![Image](https://support.apple.com/library/content/dam/edam/applecare/images/en_US/macbookpro/macbook-pro-2017-13in-device-2thunderbolt-3ports.jpg)
    case macBookPro13Inch2017TwoThunderbolt3Ports
    /// Device is a [MacBook Pro (15-inch, 2016)](https://support.apple.com/kb/SP749)
    ///
    /// ![Image](https://support.apple.com/library/content/dam/edam/applecare/images/en_US/macbookpro/macbook-pro-2016-15in-device.jpg)
    case macBookPro15Inch2016
    /// Device is a [MacBook Pro (13-inch, 2016, Four Thunderbolt 3 ports)](https://support.apple.com/kb/SP748)
    ///
    /// ![Image](https://support.apple.com/library/content/dam/edam/applecare/images/en_US/macbookpro/macbook-pro-2016-13in-device.jpg)
    case macBookPro13Inch2016FourThunderbolt3Ports
    /// Device is a [MacBook Pro (13-inch, 2016, Two Thunderbolt 3 ports)](https://support.apple.com/kb/SP747)
    ///
    /// ![Image](https://support.apple.com/library/content/dam/edam/applecare/images/en_US/macbookpro/macbook-pro-2016-13in-device.jpg)
    case macBookPro13Inch2016TwoThunderbolt3Ports
    /// Device is a [MacBook Pro (Retina, 15-inch, Mid 2015)](https://support.apple.com/kb/SP719)
    ///
    /// ![Image](https://support.apple.com/library/content/dam/edam/applecare/images/en_US/macbookpro/macbook-pro-mid-2015-15in-device.jpg)
    case macBookProRetina15InchMid2015
    /// Device is a [MacBook Pro (Retina, 13-inch, Early 2015)](https://support.apple.com/kb/SP715)
    ///
    /// ![Image](https://support.apple.com/library/content/dam/edam/applecare/images/en_US/macbookpro/macbook-pro-early-2015-13in-device.jpg)
    case macBookProRetina13InchEarly2015
    /// Device is a [MacBook Pro (Retina, 15-inch, Mid 2014)](https://support.apple.com/kb/SP704) or [MacBook Pro (Retina, 15-inch, Late 2013)](https://support.apple.com/kb/SP690)
    ///
    /// ![Image](https://support.apple.com/library/content/dam/edam/applecare/images/en_US/macbookpro/macbook-pro-mid-2014-15in-device.jpg)
    case macBookProRetina15InchMid2014
    /// Device is a [MacBook Pro (Retina, 13-inch, Mid 2014)](https://support.apple.com/kb/SP703) or [MacBook Pro (Retina, 13-inch, Late 2013)](https://support.apple.com/kb/SP691)
    ///
    /// ![Image](https://support.apple.com/library/content/dam/edam/applecare/images/en_US/macbookpro/macbook-pro-mid-2014-13in-device.jpg)
    case macBookProRetina13InchMid2014
    /// Device is an [iMac Pro](https://support.apple.com/kb/SP771)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP771/SP771-imac-pro-2017.png)
    case iMacPro2017
  #endif

  /// Device is [Simulator](https://developer.apple.com/library/ios/documentation/IDEs/Conceptual/iOS_Simulator_Guide/Introduction/Introduction.html)
  ///
  /// ![Image](https://developer.apple.com/assets/elements/icons/256x256/xcode-6.png)
  indirect case simulator(Device)

  /// Device is not yet known (implemented)
  /// You can still use this enum as before but the description equals the identifier (you can get multiple identifiers for the same product class
  /// (e.g. "iPhone6,1" or "iPhone 6,2" do both mean "iPhone 5s"))
  case unknown(String)

  /// Returns a `Device` representing the current device this software runs on.
  public static var current: Device {
    return Device.mapToDevice(identifier: Device.identifier)
  }

  /// Gets the identifier from the system, such as "iPhone7,1".
  public static var identifier: String = {
    #if os(macOS)
    let identifier = try? sysctlData(for: [CTL_HW, HW_MODEL]).withUnsafeBufferPointer { dataPointer -> String? in
        dataPointer.baseAddress.flatMap { String(validatingUTF8: $0) }
    }
    return identifier ?? ""
    #else
    var systemInfo = utsname()
    uname(&systemInfo)
    let mirror = Mirror(reflecting: systemInfo.machine)

    let identifier = mirror.children.reduce("") { identifier, element in
      guard let value = element.value as? Int8, value != 0 else { return identifier }
      return identifier + String(UnicodeScalar(UInt8(value)))
    }
    return identifier
    #endif
  }()

  /// Maps an identifier to a Device. If the identifier can not be mapped to an existing device, `UnknownDevice(identifier)` is returned.
  ///
  /// - parameter identifier: The device identifier, e.g. "iPhone7,1". Can be obtained from `Device.identifier`.
  ///
  /// - returns: An initialized `Device`.
  public static func mapToDevice(identifier: String) -> Device { // swiftlint:disable:this cyclomatic_complexity function_body_length
    #if os(iOS)
      switch identifier {
      case "iPod5,1": return iPodTouch5
      case "iPod7,1": return iPodTouch6
      case "iPod9,1": return iPodTouch7
      case "iPhone3,1", "iPhone3,2", "iPhone3,3": return iPhone4
      case "iPhone4,1": return iPhone4s
      case "iPhone5,1", "iPhone5,2": return iPhone5
      case "iPhone5,3", "iPhone5,4": return iPhone5c
      case "iPhone6,1", "iPhone6,2": return iPhone5s
      case "iPhone7,2": return iPhone6
      case "iPhone7,1": return iPhone6Plus
      case "iPhone8,1": return iPhone6s
      case "iPhone8,2": return iPhone6sPlus
      case "iPhone9,1", "iPhone9,3": return iPhone7
      case "iPhone9,2", "iPhone9,4": return iPhone7Plus
      case "iPhone8,4": return iPhoneSE
      case "iPhone10,1", "iPhone10,4": return iPhone8
      case "iPhone10,2", "iPhone10,5": return iPhone8Plus
      case "iPhone10,3", "iPhone10,6": return iPhoneX
      case "iPhone11,2": return iPhoneXS
      case "iPhone11,4", "iPhone11,6": return iPhoneXSMax
      case "iPhone11,8": return iPhoneXR
      case "iPhone12,1": return iPhone11
      case "iPhone12,3": return iPhone11Pro
      case "iPhone12,5": return iPhone11ProMax
      case "iPad2,1", "iPad2,2", "iPad2,3", "iPad2,4": return iPad2
      case "iPad3,1", "iPad3,2", "iPad3,3": return iPad3
      case "iPad3,4", "iPad3,5", "iPad3,6": return iPad4
      case "iPad4,1", "iPad4,2", "iPad4,3": return iPadAir
      case "iPad5,3", "iPad5,4": return iPadAir2
      case "iPad6,11", "iPad6,12": return iPad5
      case "iPad7,5", "iPad7,6": return iPad6
      case "iPad11,3", "iPad11,4": return iPadAir3
      case "iPad7,11", "iPad7,12": return iPad7
      case "iPad2,5", "iPad2,6", "iPad2,7": return iPadMini
      case "iPad4,4", "iPad4,5", "iPad4,6": return iPadMini2
      case "iPad4,7", "iPad4,8", "iPad4,9": return iPadMini3
      case "iPad5,1", "iPad5,2": return iPadMini4
      case "iPad11,1", "iPad11,2": return iPadMini5
      case "iPad6,3", "iPad6,4": return iPadPro9Inch
      case "iPad6,7", "iPad6,8": return iPadPro12Inch
      case "iPad7,1", "iPad7,2": return iPadPro12Inch2
      case "iPad7,3", "iPad7,4": return iPadPro10Inch
      case "iPad8,1", "iPad8,2", "iPad8,3", "iPad8,4": return iPadPro11Inch
      case "iPad8,5", "iPad8,6", "iPad8,7", "iPad8,8": return iPadPro12Inch3
      case "iPad8,9", "iPad8,10": return iPadPro11Inch2
      case "iPad8,11", "iPad8,12": return iPadPro12Inch4
      case "iPad13,4", "iPad13,5", "iPad13,6", "iPad13,7": return iPadPro11Inch3
      case "iPad13,8", "iPad13,9", "iPad13,10", "iPad13,11": return iPadPro12Inch5
      case "AudioAccessory1,1": return homePod
      case "i386", "x86_64": return simulator(mapToDevice(identifier: ProcessInfo().environment["SIMULATOR_MODEL_IDENTIFIER"] ?? "iOS"))
      default: return unknown(identifier)
      }
    #elseif os(tvOS)
      switch identifier {
      case "AppleTV5,3": return appleTVHD
      case "AppleTV6,2": return appleTV4K
      case "AppleTV11,1": return appleTV4K2
      case "i386", "x86_64", "arm64": return simulator(mapToDevice(identifier: ProcessInfo().environment["SIMULATOR_MODEL_IDENTIFIER"] ?? "tvOS"))
      default: return unknown(identifier)
      }
    #elseif os(watchOS)
    switch identifier {
      case "Watch1,1": return appleWatchSeries0_38mm
      case "Watch1,2": return appleWatchSeries0_42mm
      case "Watch2,6": return appleWatchSeries1_38mm
      case "Watch2,7": return appleWatchSeries1_42mm
      case "Watch2,3": return appleWatchSeries2_38mm
      case "Watch2,4": return appleWatchSeries2_42mm
      case "Watch3,1", "Watch3,3": return appleWatchSeries3_38mm
      case "Watch3,2", "Watch3,4": return appleWatchSeries3_42mm
      case "Watch4,1", "Watch4,3": return appleWatchSeries4_40mm
      case "Watch4,2", "Watch4,4": return appleWatchSeries4_44mm
      case "Watch5,1", "Watch5,3": return appleWatchSeries5_40mm
      case "Watch5,2", "Watch5,4": return appleWatchSeries5_44mm
      case "i386", "x86_64": return simulator(mapToDevice(identifier: ProcessInfo().environment["SIMULATOR_MODEL_IDENTIFIER"] ?? "watchOS"))
      default: return unknown(identifier)
      }
    #elseif os(macOS)
      switch identifier {
      case "Macmini8,1": return macMini2018
      case "Macmini7,1": return macMiniLate2014
      case "Macmini6,1", "Macmini6,2": return macMiniLate2012
      case "Macmini5,1", "Macmini5,2": return macMiniMid2011
      case "Macmini4,1": return macMiniMid2010
      case "Macmini3,1": return macMini2009
      case "iMac19,1": return iMacRetina5K27Inch2019
      case "iMac19,2": return iMacRetina4K215Inch2019
      case "iMac18,3": return iMacRetina5K27Inch2017
      case "iMac18,2": return iMacRetina4K215Inch2017
      case "iMac18,1": return iMac215Inch2017
      case "iMac17,1": return iMacRetina5K27InchLate2015
      case "iMac16,2": return iMacRetina4K215InchLate2015
      case "iMac16,1": return iMac215InchLate2015
      case "iMac15,1": return iMacRetina5K27InchMid2015
      case "iMac14,4": return iMac215InchMid2014
      case "iMac14,2": return iMac27InchLate2013
      case "iMac14,1": return iMac215InchLate2013
      case "iMac13,1": return iMac215InchLate2012
      case "iMac12,2": return iMac27InchMid2011
      case "iMac12,1": return iMac215InchMid2011
      case "iMac11,3": return iMac27InchMid2010
      case "iMac11,2": return iMac215InchMid2010
      case "MacPro7,1": return macPro2019
      case "MacPro6,1": return macProLate2013
      case "MacPro5,1": return macProMid2012
      case "MacPro4,1": return macProEarly2009
      case "MacBook10,1": return macBookRetina12Inch2017
      case "MacBook9,1": return macBookRetina12InchEarly2016
      case "MacBook8,1": return macBookRetina12InchEarly2015
      case "MacBook7,1": return macBook13InchMid2010
      case "MacBook6,1": return macBook13InchLate2009
      case "MacBookAir8,2": return macBookAirRetina13Inch2019
      case "MacBookAir8,1": return macBookAirRetina13Inch2018
      case "MacBookAir7,3": return macBookAir13Inch2017
      case "MacBookAir7,2": return macBookAir13InchEarly2015
      case "MacBookAir7,1": return macBookAir11InchEarly2015
      case "MacBookAir6,2": return macBookAir13InchEarly2014
      case "MacBookAir6,1": return macBookAir11InchEarly2014
      case "MacBookAir5,2": return macBookAir13InchMid2012
      case "MacBookAir5,1": return macBookAir11InchMid2012
      case "MacBookAir4,2": return macBookAir13InchMid2011
      case "MacBookAir4,1": return macBookAir11InchMid2011
      case "MacBookAir3,2": return macBookAir13InchLate2010
      case "MacBookAir3,1": return macBookAir11InchLate2010
      case "MacBookAir2,1": return macBookAirMid2009
      case "MacBookPro16,1": return macBookPro16Inch2019
      case "MacBookPro15,4": return macBookPro13Inch2019TwoThunderbolt3Ports
      case "MacBookPro15,3": return macBookPro15Inch2019
      case "MacBookPro15,2": return macBookPro13Inch2019FourThunderbolt3Ports
      case "MacBookPro15,1": return macBookPro15Inch2018
      case "MacBookPro14,3": return macBookPro15Inch2017
      case "MacBookPro14,2": return macBookPro13Inch2017FourThunderbolt3Ports
      case "MacBookPro14,1": return macBookPro13Inch2017TwoThunderbolt3Ports
      case "MacBookPro13,3": return macBookPro15Inch2016
      case "MacBookPro13,2": return macBookPro13Inch2016FourThunderbolt3Ports
      case "MacBookPro13,1": return macBookPro13Inch2016TwoThunderbolt3Ports
      case "MacBookPro11,4": return macBookProRetina15InchMid2015
      case "MacBookPro12,1": return macBookProRetina13InchEarly2015
      case "MacBookPro11,2": return macBookProRetina15InchMid2014
      case "MacBookPro11,1": return macBookProRetina13InchMid2014
      case "iMacPro1,1": return iMacPro2017
      default: return unknown(identifier)
      }
    #endif
  }

  /// Get the real device from a device.
  /// If the device is a an iPhone8Plus simulator this function returns .iPhone8Plus (the real device).
  /// If the parameter is a real device, this function returns just that passed parameter.
  ///
  /// - parameter device: A device.
  ///
  /// - returns: the underlying device If the `device` is a `simulator`,
  /// otherwise return the `device`.
  public static func realDevice(from device: Device) -> Device {
    if case let .simulator(model) = device {
      return model
    }
    return device
  }

  #if os(iOS) || os(watchOS)
  /// Returns diagonal screen length in inches
  public var diagonal: Double {
    #if os(iOS)
      switch self {
        case .iPodTouch5: return 4
        case .iPodTouch6: return 4
        case .iPodTouch7: return 4
        case .iPhone4: return 3.5
        case .iPhone4s: return 3.5
        case .iPhone5: return 4
        case .iPhone5c: return 4
        case .iPhone5s: return 4
        case .iPhone6: return 4.7
        case .iPhone6Plus: return 5.5
        case .iPhone6s: return 4.7
        case .iPhone6sPlus: return 5.5
        case .iPhone7: return 4.7
        case .iPhone7Plus: return 5.5
        case .iPhoneSE: return 4
        case .iPhone8: return 4.7
        case .iPhone8Plus: return 5.5
        case .iPhoneX: return 5.8
        case .iPhoneXS: return 5.8
        case .iPhoneXSMax: return 6.5
        case .iPhoneXR: return 6.1
        case .iPhone11: return 6.1
        case .iPhone11Pro: return 5.8
        case .iPhone11ProMax: return 6.5
        case .iPad2: return 9.7
        case .iPad3: return 9.7
        case .iPad4: return 9.7
        case .iPadAir: return 9.7
        case .iPadAir2: return 9.7
        case .iPad5: return 9.7
        case .iPad6: return 9.7
        case .iPadAir3: return 10.5
        case .iPad7: return 10.2
        case .iPadMini: return 7.9
        case .iPadMini2: return 7.9
        case .iPadMini3: return 7.9
        case .iPadMini4: return 7.9
        case .iPadMini5: return 7.9
        case .iPadPro9Inch: return 9.7
        case .iPadPro12Inch: return 12.9
        case .iPadPro12Inch2: return 12.9
        case .iPadPro10Inch: return 10.5
        case .iPadPro11Inch: return 11.0
        case .iPadPro12Inch3: return 12.9
        case .iPadPro11Inch2: return 11.0
        case .iPadPro12Inch4: return 12.9
        case .iPadPro11Inch3: return 11.0
        case .iPadPro12Inch5: return 12.9
        case .homePod: return -1
        case .simulator(let model): return model.diagonal
        case .unknown: return -1
      }
    #elseif os(watchOS)
      switch self {
      case .appleWatchSeries0_38mm: return 1.5
      case .appleWatchSeries0_42mm: return 1.6
      case .appleWatchSeries1_38mm: return 1.5
      case .appleWatchSeries1_42mm: return 1.6
      case .appleWatchSeries2_38mm: return 1.5
      case .appleWatchSeries2_42mm: return 1.6
      case .appleWatchSeries3_38mm: return 1.5
      case .appleWatchSeries3_42mm: return 1.6
      case .appleWatchSeries4_40mm: return 1.8
      case .appleWatchSeries4_44mm: return 2.0
      case .appleWatchSeries5_40mm: return 1.8
      case .appleWatchSeries5_44mm: return 2.0
      case .simulator(let model): return model.diagonal
      case .unknown: return -1
      }
    #elseif os(macOS)
      return -1
    #endif
  }
  #endif

  /// Returns screen ratio as a tuple
  public var screenRatio: (width: Double, height: Double) {
    #if os(iOS)
      switch self {
      case .iPodTouch5: return (width: 9, height: 16)
      case .iPodTouch6: return (width: 9, height: 16)
      case .iPodTouch7: return (width: 9, height: 16)
      case .iPhone4: return (width: 2, height: 3)
      case .iPhone4s: return (width: 2, height: 3)
      case .iPhone5: return (width: 9, height: 16)
      case .iPhone5c: return (width: 9, height: 16)
      case .iPhone5s: return (width: 9, height: 16)
      case .iPhone6: return (width: 9, height: 16)
      case .iPhone6Plus: return (width: 9, height: 16)
      case .iPhone6s: return (width: 9, height: 16)
      case .iPhone6sPlus: return (width: 9, height: 16)
      case .iPhone7: return (width: 9, height: 16)
      case .iPhone7Plus: return (width: 9, height: 16)
      case .iPhoneSE: return (width: 9, height: 16)
      case .iPhone8: return (width: 9, height: 16)
      case .iPhone8Plus: return (width: 9, height: 16)
      case .iPhoneX: return (width: 9, height: 19.5)
      case .iPhoneXS: return (width: 9, height: 19.5)
      case .iPhoneXSMax: return (width: 9, height: 19.5)
      case .iPhoneXR: return (width: 9, height: 19.5)
      case .iPhone11: return (width: 9, height: 19.5)
      case .iPhone11Pro: return (width: 9, height: 19.5)
      case .iPhone11ProMax: return (width: 9, height: 19.5)
      case .iPad2: return (width: 3, height: 4)
      case .iPad3: return (width: 3, height: 4)
      case .iPad4: return (width: 3, height: 4)
      case .iPadAir: return (width: 3, height: 4)
      case .iPadAir2: return (width: 3, height: 4)
      case .iPad5: return (width: 3, height: 4)
      case .iPad6: return (width: 3, height: 4)
      case .iPadAir3: return (width: 3, height: 4)
      case .iPad7: return (width: 3, height: 4)
      case .iPadMini: return (width: 3, height: 4)
      case .iPadMini2: return (width: 3, height: 4)
      case .iPadMini3: return (width: 3, height: 4)
      case .iPadMini4: return (width: 3, height: 4)
      case .iPadMini5: return (width: 3, height: 4)
      case .iPadPro9Inch: return (width: 3, height: 4)
      case .iPadPro12Inch: return (width: 3, height: 4)
      case .iPadPro12Inch2: return (width: 3, height: 4)
      case .iPadPro10Inch: return (width: 3, height: 4)
      case .iPadPro11Inch: return (width: 139, height: 199)
      case .iPadPro12Inch3: return (width: 512, height: 683)
      case .iPadPro11Inch2: return (width: 139, height: 199)
      case .iPadPro12Inch4: return (width: 512, height: 683)
      case .iPadPro11Inch3: return (width: 139, height: 199)
      case .iPadPro12Inch5: return (width: 512, height: 683)
      case .homePod: return (width: 4, height: 5)
      case .simulator(let model): return model.screenRatio
      case .unknown: return (width: -1, height: -1)
      }
    #elseif os(watchOS)
      switch self {
      case .appleWatchSeries0_38mm: return (width: 4, height: 5)
      case .appleWatchSeries0_42mm: return (width: 4, height: 5)
      case .appleWatchSeries1_38mm: return (width: 4, height: 5)
      case .appleWatchSeries1_42mm: return (width: 4, height: 5)
      case .appleWatchSeries2_38mm: return (width: 4, height: 5)
      case .appleWatchSeries2_42mm: return (width: 4, height: 5)
      case .appleWatchSeries3_38mm: return (width: 4, height: 5)
      case .appleWatchSeries3_42mm: return (width: 4, height: 5)
      case .appleWatchSeries4_40mm: return (width: 4, height: 5)
      case .appleWatchSeries4_44mm: return (width: 4, height: 5)
      case .appleWatchSeries5_40mm: return (width: 4, height: 5)
      case .appleWatchSeries5_44mm: return (width: 4, height: 5)
      case .simulator(let model): return model.screenRatio
      case .unknown: return (width: -1, height: -1)
      }
    #elseif os(tvOS)
      return (width: -1, height: -1)
    #elseif os(macOS)
      return (width: -1, height: -1)
    #endif
  }

  #if os(iOS)
    /// All iPods
    public static var allPods: [Device] {
      return [.iPodTouch5, .iPodTouch6, .iPodTouch7]
    }

    /// All iPhones
    public static var allPhones: [Device] {
      return [.iPhone4, .iPhone4s, .iPhone5, .iPhone5c, .iPhone5s, .iPhone6, .iPhone6Plus, .iPhone6s, .iPhone6sPlus, .iPhone7, .iPhone7Plus, .iPhoneSE, .iPhone8, .iPhone8Plus, .iPhoneX, .iPhoneXS, .iPhoneXSMax, .iPhoneXR, .iPhone11, .iPhone11Pro, .iPhone11ProMax]
    }

    /// All iPads
    public static var allPads: [Device] {
      return [.iPad2, .iPad3, .iPad4, .iPadAir, .iPadAir2, .iPad5, .iPad6, .iPadAir3, .iPad7, .iPad8, .iPadAir4, .iPadMini, .iPadMini2, .iPadMini3, .iPadMini4, .iPadMini5, .iPadPro9Inch, .iPadPro12Inch, .iPadPro12Inch2, .iPadPro10Inch, .iPadPro11Inch, .iPadPro12Inch3, .iPadPro11Inch2, .iPadPro12Inch4, .iPadPro11Inch3, .iPadPro12Inch5]
    }

    /// All X-Series Devices
    public static var allXSeriesDevices: [Device] {
      return [.iPhoneX, .iPhoneXS, .iPhoneXSMax, .iPhoneXR, .iPhone11, .iPhone11Pro, .iPhone11ProMax]
    }

    /// All Plus-Sized Devices
    public static var allPlusSizedDevices: [Device] {
      return [.iPhone6Plus, .iPhone6sPlus, .iPhone7Plus, .iPhone8Plus, .iPhoneXSMax, .iPhone11ProMax]
    }

    /// All Pro Devices
    public static var allProDevices: [Device] {
      return [.iPhone11Pro, .iPhone11ProMax, .iPhone12Pro, .iPhone12ProMax, .iPadPro9Inch, .iPadPro12Inch, .iPadPro12Inch2, .iPadPro10Inch, .iPadPro11Inch, .iPadPro12Inch3, .iPadPro11Inch2, .iPadPro12Inch4, .iPadPro11Inch3, .iPadPro12Inch5]
    }

    /// All mini Devices
    public static var allMiniDevices: [Device] {
      return [.iPadMini, .iPadMini2, .iPadMini3, .iPadMini4, .iPadMini5]
    }

    /// All simulator iPods
    public static var allSimulatorPods: [Device] {
      return allPods.map(Device.simulator)
    }

    /// All simulator iPhones
    public static var allSimulatorPhones: [Device] {
      return allPhones.map(Device.simulator)
    }

    /// All simulator iPads
    public static var allSimulatorPads: [Device] {
      return allPads.map(Device.simulator)
    }

    /// All simulator iPad mini
    public static var allSimulatorMiniDevices: [Device] {
      return allMiniDevices.map(Device.simulator)
    }

    /// All simulator Plus-Sized Devices
    public static var allSimulatorXSeriesDevices: [Device] {
      return allXSeriesDevices.map(Device.simulator)
    }

    /// All simulator Plus-Sized Devices
    public static var allSimulatorPlusSizedDevices: [Device] {
      return allPlusSizedDevices.map(Device.simulator)
    }

    /// All simulator Pro Devices
    public static var allSimulatorProDevices: [Device] {
      return allProDevices.map(Device.simulator)
    }

    /// Returns whether the device is an iPod (real or simulator)
    public var isPod: Bool {
      return isOneOf(Device.allPods) || isOneOf(Device.allSimulatorPods)
    }

    /// Returns whether the device is an iPhone (real or simulator)
    public var isPhone: Bool {
      return (isOneOf(Device.allPhones)
              || isOneOf(Device.allSimulatorPhones)
              || (UIDevice.current.userInterfaceIdiom == .phone && isCurrent)) && !isPod
    }

    /// Returns whether the device is an iPad (real or simulator)
    public var isPad: Bool {
      return isOneOf(Device.allPads)
              || isOneOf(Device.allSimulatorPads)
              || (UIDevice.current.userInterfaceIdiom == .pad && isCurrent)
    }

    /// Returns whether the device is any of the simulator
    /// Useful when there is a need to check and skip running a portion of code (location request or others)
    public var isSimulator: Bool {
      return isOneOf(Device.allSimulators)
    }

    /// If this device is a simulator return the underlying device,
    /// otherwise return `self`.
    public var realDevice: Device {
      return Device.realDevice(from: self)
    }

    public var isZoomed: Bool? {
      guard isCurrent else { return nil }
      if Int(UIScreen.main.scale.rounded()) == 3 {
        // Plus-sized
        return UIScreen.main.nativeScale > 2.7 && UIScreen.main.nativeScale < 3
      } else {
        return UIScreen.main.nativeScale > UIScreen.main.scale
      }
    }

    /// All Touch ID Capable Devices
    public static var allTouchIDCapableDevices: [Device] {
      return [.iPhone5s, .iPhone6, .iPhone6Plus, .iPhone6s, .iPhone6sPlus, .iPhone7, .iPhone7Plus, .iPhoneSE, .iPhone8, .iPhone8Plus, .iPadAir2, .iPad5, .iPad6, .iPadAir3, .iPad7, .iPadMini3, .iPadMini4, .iPadMini5, .iPadPro9Inch, .iPadPro12Inch, .iPadPro12Inch2, .iPadPro10Inch]
    }

    /// All Face ID Capable Devices
    public static var allFaceIDCapableDevices: [Device] {

      return [.iPhoneX, .iPhoneXS, .iPhoneXSMax, .iPhoneXR, .iPhone11, .iPhone11Pro, .iPhone11ProMax, .iPhone12, .iPhone12Mini, .iPhone12Pro, .iPhone12ProMax, .iPadPro11Inch, .iPadPro12Inch3, .iPadPro11Inch2, .iPadPro12Inch4, .iPadPro11Inch3, .iPadPro12Inch5]
    }

    /// All Devices with Touch ID or Face ID
    public static var allBiometricAuthenticationCapableDevices: [Device] {
      return [.iPhone5s, .iPhone6, .iPhone6Plus, .iPhone6s, .iPhone6sPlus, .iPhone7, .iPhone7Plus, .iPhoneSE, .iPhone8, .iPhone8Plus, .iPhoneX, .iPhoneXS, .iPhoneXSMax, .iPhoneXR, .iPhone11, .iPhone11Pro, .iPhone11ProMax, .iPhoneSE2, .iPhone12, .iPhone12Mini, .iPhone12Pro, .iPhone12ProMax, .iPadAir2, .iPad5, .iPad6, .iPadAir3, .iPad7, .iPad8, .iPadAir4, .iPadMini3, .iPadMini4, .iPadMini5, .iPadPro9Inch, .iPadPro12Inch, .iPadPro12Inch2, .iPadPro10Inch, .iPadPro11Inch, .iPadPro12Inch3, .iPadPro11Inch2, .iPadPro12Inch4, .iPadPro11Inch3, .iPadPro12Inch5]
    }

    /// Returns whether or not the device has Touch ID
    public var isTouchIDCapable: Bool {
      return isOneOf(Device.allTouchIDCapableDevices)
    }

    /// Returns whether or not the device has Face ID
    public var isFaceIDCapable: Bool {
      return isOneOf(Device.allFaceIDCapableDevices)
    }

    /// Returns whether or not the device has any biometric sensor (i.e. Touch ID or Face ID)
    public var hasBiometricSensor: Bool {
      return isTouchIDCapable || isFaceIDCapable
    }

    /// All devices that feature a sensor housing in the screen
    public static var allDevicesWithSensorHousing: [Device] {
      return [.iPhoneX, .iPhoneXS, .iPhoneXSMax, .iPhoneXR, .iPhone11, .iPhone11Pro, .iPhone11ProMax]
    }

    /// Returns whether or not the device has a sensor housing
    public var hasSensorHousing: Bool {
      return isOneOf(Device.allDevicesWithSensorHousing)
    }

    /// All devices that feature a screen with rounded corners.
    public static var allDevicesWithRoundedDisplayCorners: [Device] {

      return [.iPhoneX, .iPhoneXS, .iPhoneXSMax, .iPhoneXR, .iPhone11, .iPhone11Pro, .iPhone11ProMax, .iPhone12, .iPhone12Mini, .iPhone12Pro, .iPhone12ProMax, .iPadAir4, .iPadPro11Inch, .iPadPro12Inch3, .iPadPro11Inch2, .iPadPro12Inch4, .iPadPro11Inch3, .iPadPro12Inch5]
    }

    /// Returns whether or not the device has a screen with rounded corners.
    public var hasRoundedDisplayCorners: Bool {
      return isOneOf(Device.allDevicesWithRoundedDisplayCorners)
    }

    /// All devices that have 3D Touch support.
    public static var allDevicesWith3dTouchSupport: [Device] {
      return [.iPhone6s, .iPhone6sPlus, .iPhone7, .iPhone7Plus, .iPhoneSE, .iPhone8, .iPhone8Plus, .iPhoneX, .iPhoneXS, .iPhoneXSMax]
    }

    /// Returns whether or not the device has 3D Touch support.
    public var has3dTouchSupport: Bool {
      return isOneOf(Device.allDevicesWith3dTouchSupport)
    }

    /// All devices that support wireless charging.
    public static var allDevicesWithWirelessChargingSupport: [Device] {
      return [.iPhone8, .iPhone8Plus, .iPhoneX, .iPhoneXS, .iPhoneXSMax, .iPhoneXR, .iPhone11, .iPhone11Pro, .iPhone11ProMax]
    }

    /// Returns whether or not the device supports wireless charging
    public var supportsWirelessCharging: Bool {
      return isOneOf(Device.allDevicesWithWirelessChargingSupport) || isOneOf(Device.allDevicesWithWirelessChargingSupport.map(Device.simulator))
    }

    /// All devices that have a LiDAR sensor.
    public static var allDevicesWithALidarSensor: [Device] {
      return [.iPhone12Pro, .iPhone12ProMax, .iPadPro11Inch2, .iPadPro12Inch4, .iPadPro11Inch3, .iPadPro12Inch5]
    }

    /// Returns whether or not the device has a LiDAR sensor.
    public var hasLidarSensor: Bool {
      return isOneOf(Device.allDevicesWithALidarSensor) || isOneOf(Device.allDevicesWithALidarSensor.map(Device.simulator))
    }
  #elseif os(tvOS)
    /// All TVs
    public static var allTVs: [Device] {
       return [.appleTVHD, .appleTV4K, .appleTV4K2]
    }

    /// All simulator TVs
    public static var allSimulatorTVs: [Device] {
      return allTVs.map(Device.simulator)
    }
  #elseif os(watchOS)
    /// All Watches
    public static var allWatches: [Device] {
       return [.appleWatchSeries0_38mm, .appleWatchSeries0_42mm, .appleWatchSeries1_38mm, .appleWatchSeries1_42mm, .appleWatchSeries2_38mm, .appleWatchSeries2_42mm, .appleWatchSeries3_38mm, .appleWatchSeries3_42mm, .appleWatchSeries4_40mm, .appleWatchSeries4_44mm, .appleWatchSeries5_40mm, .appleWatchSeries5_44mm]
    }

    /// All simulator Watches
    public static var allSimulatorWatches: [Device] {
      return allWatches.map(Device.simulator)
    }

    /// All watches that have Force Touch support.
    public static var allWatchesWithForceTouchSupport: [Device] {
      return [.appleWatchSeries0_38mm, .appleWatchSeries0_42mm, .appleWatchSeries1_38mm, .appleWatchSeries1_42mm, .appleWatchSeries2_38mm, .appleWatchSeries2_42mm, .appleWatchSeries3_38mm, .appleWatchSeries3_42mm, .appleWatchSeries4_40mm, .appleWatchSeries4_44mm, .appleWatchSeries5_40mm, .appleWatchSeries5_44mm]
    }

    /// Returns whether or not the device has Force Touch support.
    public var hasForceTouchSupport: Bool {
      return isOneOf(Device.allWatchesWithForceTouchSupport)
    }
  #elseif os(macOS)
  /// All Macs
  public static var allMacs: [Device] {
     return [.macMini2018, .macMiniLate2014, .macMiniLate2012, .macMiniMid2011, .macMiniMid2010, .macMini2009, .iMacRetina5K27Inch2019, .iMacRetina4K215Inch2019, .iMacRetina5K27Inch2017, .iMacRetina4K215Inch2017, .iMac215Inch2017, .iMacRetina5K27InchLate2015, .iMacRetina4K215InchLate2015, .iMac215InchLate2015, .iMacRetina5K27InchMid2015, .iMac215InchMid2014, .iMac27InchLate2013, .iMac215InchLate2013, .iMac215InchLate2012, .iMac27InchMid2011, .iMac215InchMid2011, .iMac27InchMid2010, .iMac215InchMid2010, .macPro2019, .macProLate2013, .macProMid2012, .macProEarly2009, .macBookRetina12Inch2017, .macBookRetina12InchEarly2016, .macBookRetina12InchEarly2015, .macBook13InchMid2010, .macBook13InchLate2009, .macBookAirRetina13Inch2019, .macBookAirRetina13Inch2018, .macBookAir13Inch2017, .macBookAir13InchEarly2015, .macBookAir11InchEarly2015, .macBookAir13InchEarly2014, .macBookAir11InchEarly2014, .macBookAir13InchMid2012, .macBookAir11InchMid2012, .macBookAir13InchMid2011, .macBookAir11InchMid2011, .macBookAir13InchLate2010, .macBookAir11InchLate2010, .macBookAirMid2009, .macBookPro16Inch2019, .macBookPro13Inch2019TwoThunderbolt3Ports, .macBookPro15Inch2019, .macBookPro13Inch2019FourThunderbolt3Ports, .macBookPro15Inch2018, .macBookPro15Inch2017, .macBookPro13Inch2017FourThunderbolt3Ports, .macBookPro13Inch2017TwoThunderbolt3Ports, .macBookPro15Inch2016, .macBookPro13Inch2016FourThunderbolt3Ports, .macBookPro13Inch2016TwoThunderbolt3Ports, .macBookProRetina15InchMid2015, .macBookProRetina13InchEarly2015, .macBookProRetina15InchMid2014, .macBookProRetina13InchMid2014, .iMacPro2017]
  }

  public static var allMacMinis: [Device] {
     return [.macMini2018, .macMiniLate2014, .macMiniLate2012, .macMiniMid2011, .macMiniMid2010, .macMini2009]
  }

  public static var allMacBookAirs: [Device] {
     return [.macBookAirRetina13Inch2019, .macBookAirRetina13Inch2018, .macBookAir13Inch2017, .macBookAir13InchEarly2015, .macBookAir11InchEarly2015, .macBookAir13InchEarly2014, .macBookAir11InchEarly2014, .macBookAir13InchMid2012, .macBookAir11InchMid2012, .macBookAir13InchMid2011, .macBookAir11InchMid2011, .macBookAir13InchLate2010, .macBookAir11InchLate2010, .macBookAirMid2009]
  }

  public static var allMacBooks: [Device] {
     return [.macBookRetina12Inch2017, .macBookRetina12InchEarly2016, .macBookRetina12InchEarly2015, .macBook13InchMid2010, .macBook13InchLate2009]
  }

  public static var allMacBookPros: [Device] {
     return [.macBookPro16Inch2019, .macBookPro13Inch2019TwoThunderbolt3Ports, .macBookPro15Inch2019, .macBookPro13Inch2019FourThunderbolt3Ports, .macBookPro15Inch2018, .macBookPro15Inch2017, .macBookPro13Inch2017FourThunderbolt3Ports, .macBookPro13Inch2017TwoThunderbolt3Ports, .macBookPro15Inch2016, .macBookPro13Inch2016FourThunderbolt3Ports, .macBookPro13Inch2016TwoThunderbolt3Ports, .macBookProRetina15InchMid2015, .macBookProRetina13InchEarly2015, .macBookProRetina15InchMid2014, .macBookProRetina13InchMid2014]
  }

  public static var allIMacs: [Device] {
     return [.iMacRetina5K27Inch2019, .iMacRetina4K215Inch2019, .iMacRetina5K27Inch2017, .iMacRetina4K215Inch2017, .iMac215Inch2017, .iMacRetina5K27InchLate2015, .iMacRetina4K215InchLate2015, .iMac215InchLate2015, .iMacRetina5K27InchMid2015, .iMac215InchMid2014, .iMac27InchLate2013, .iMac215InchLate2013, .iMac215InchLate2012, .iMac27InchMid2011, .iMac215InchMid2011, .iMac27InchMid2010, .iMac215InchMid2010]
  }

  public static var allIMacPros: [Device] {
     return [.iMacPro2017]
  }

  public static var allMacPros: [Device] {
     return [.macPro2019, .macProLate2013, .macProMid2012, .macProEarly2009]
  }

  public var isMacMini: Bool {
    return isOneOf(Device.allMacMinis)
  }

  public var isMacBookAir: Bool {
    return isOneOf(Device.allMacBookAirs)
  }

  public var isMacBook: Bool {
    return isOneOf(Device.allMacBooks)
  }

  public var isMacBookPro: Bool {
    return isOneOf(Device.allMacBookPros)
  }

  public var isIMac: Bool {
    return isOneOf(Device.allIMacs)
  }

  public var isIMacPro: Bool {
    return isOneOf(Device.allIMacPros)
  }

  public var isMacPro: Bool {
    return isOneOf(Device.allMacPros)
  }
  #endif

  /// All real devices (i.e. all devices except for all simulators)
  public static var allRealDevices: [Device] {
    #if os(iOS)
      return allPods + allPhones + allPads
    #elseif os(tvOS)
      return allTVs
    #elseif os(watchOS)
      return allWatches
    #elseif os(macOS)
      return allMacs
    #endif
  }

  /// All simulators
  public static var allSimulators: [Device] {
    return allRealDevices.map(Device.simulator)
  }

  /**
   This method saves you in many cases from the need of updating your code with every new device.
   Most uses for an enum like this are the following:

   ```
   switch Device.current {
   case .iPodTouch5, .iPodTouch6: callMethodOnIPods()
   case .iPhone4, iPhone4s, .iPhone5, .iPhone5s, .iPhone6, .iPhone6Plus, .iPhone6s, .iPhone6sPlus, .iPhone7, .iPhone7Plus, .iPhoneSE, .iPhone8, .iPhone8Plus, .iPhoneX: callMethodOnIPhones()
   case .iPad2, .iPad3, .iPad4, .iPadAir, .iPadAir2, .iPadMini, .iPadMini2, .iPadMini3, .iPadMini4, .iPadPro: callMethodOnIPads()
   default: break
   }
   ```
   This code can now be replaced with

   ```
   let device = Device.current
   if device.isOneOf(Device.allPods) {
     callMethodOnIPods()
   } else if device.isOneOf(Device.allPhones) {
     callMethodOnIPhones()
   } else if device.isOneOf(Device.allPads) {
     callMethodOnIPads()
   }
   ```

   - parameter devices: An array of devices.

   - returns: Returns whether the current device is one of the passed in ones.
   */
  public func isOneOf(_ devices: [Device]) -> Bool {
    return devices.contains(self)
  }

  /// Whether or not the current device is the current device.
  private var isCurrent: Bool {
    return self == Device.current
  }

  /// The name identifying the device (e.g. "Dennis' iPhone").
  public var name: String? {
    guard isCurrent else { return nil }
    #if os(watchOS)
    return WKInterfaceDevice.current().name
    #elseif os(macOS)
    return description
    #else
    return UIDevice.current.name
    #endif
  }

  /// The name of the operating system running on the device represented by the receiver (e.g. "iOS" or "tvOS").
  public var systemName: String? {
    guard isCurrent else { return nil }
    #if os(watchOS)
    return WKInterfaceDevice.current().systemName
    #elseif os(macOS)
    return "macOS"
    #else
    return UIDevice.current.systemName
    #endif
  }

  /// The current version of the operating system (e.g. 8.4 or 9.2).
  public var systemVersion: String? {
    guard isCurrent else { return nil }
    #if os(watchOS)
    return WKInterfaceDevice.current().systemVersion
    #elseif os(macOS)
    return ProcessInfo.processInfo.operatingSystemVersionString
    #else
    return UIDevice.current.systemVersion
    #endif
  }

  /// The model of the device (e.g. "iPhone" or "iPod Touch").
  public var model: String? {
    guard isCurrent else { return nil }
    #if os(watchOS)
    return WKInterfaceDevice.current().model
    #elseif os(macOS)
    var set = CharacterSet.decimalDigits
    set.insert(",")
    return Device.identifier.components(separatedBy: set).joined()
    #else
    return UIDevice.current.model
    #endif
  }

  /// The model of the device as a localized string.
  public var localizedModel: String? {
    guard isCurrent else { return nil }
    #if os(watchOS)
    return WKInterfaceDevice.current().localizedModel
    #elseif os(macOS)
    return model
    #else
    return UIDevice.current.localizedModel
    #endif
  }

  /// PPI (Pixels per Inch) on the current device's screen (if applicable). When the device is not applicable this property returns nil.
  public var ppi: Int? {
    #if os(iOS)
    switch self {
      case .iPodTouch5: return 326
      case .iPodTouch6: return 326
      case .iPodTouch7: return 326
      case .iPhone4: return 326
      case .iPhone4s: return 326
      case .iPhone5: return 326
      case .iPhone5c: return 326
      case .iPhone5s: return 326
      case .iPhone6: return 326
      case .iPhone6Plus: return 401
      case .iPhone6s: return 326
      case .iPhone6sPlus: return 401
      case .iPhone7: return 326
      case .iPhone7Plus: return 401
      case .iPhoneSE: return 326
      case .iPhone8: return 326
      case .iPhone8Plus: return 401
      case .iPhoneX: return 458
      case .iPhoneXS: return 458
      case .iPhoneXSMax: return 458
      case .iPhoneXR: return 326
      case .iPhone11: return 326
      case .iPhone11Pro: return 458
      case .iPhone11ProMax: return 458
      case .iPad2: return 132
      case .iPad3: return 264
      case .iPad4: return 264
      case .iPadAir: return 264
      case .iPadAir2: return 264
      case .iPad5: return 264
      case .iPad6: return 264
      case .iPadAir3: return 264
      case .iPad7: return 264
      case .iPadMini: return 163
      case .iPadMini2: return 326
      case .iPadMini3: return 326
      case .iPadMini4: return 326
      case .iPadMini5: return 326
      case .iPadPro9Inch: return 264
      case .iPadPro12Inch: return 264
      case .iPadPro12Inch2: return 264
      case .iPadPro10Inch: return 264
      case .iPadPro11Inch: return 264
      case .iPadPro12Inch3: return 264
      case .iPadPro11Inch2: return 264
      case .iPadPro12Inch4: return 264
      case .iPadPro11Inch3: return 264
      case .iPadPro12Inch5: return 264
      case .homePod: return -1
      case .simulator(let model): return model.ppi
      case .unknown: return nil
    }
    #elseif os(watchOS)
    switch self {
    case .appleWatchSeries0_38mm: return 290
    case .appleWatchSeries0_42mm: return 303
    case .appleWatchSeries1_38mm: return 290
    case .appleWatchSeries1_42mm: return 303
    case .appleWatchSeries2_38mm: return 290
    case .appleWatchSeries2_42mm: return 303
    case .appleWatchSeries3_38mm: return 290
    case .appleWatchSeries3_42mm: return 303
    case .appleWatchSeries4_40mm: return 326
    case .appleWatchSeries4_44mm: return 326
    case .appleWatchSeries5_40mm: return 326
    case .appleWatchSeries5_44mm: return 326
    case .simulator(let model): return model.ppi
    case .unknown: return nil
    }
    #elseif os(tvOS)
    return nil
    #elseif os(macOS)
    return nil
    #endif
  }

  /// True when a Guided Access session is currently active; otherwise, false.
  public var isGuidedAccessSessionActive: Bool {
    #if os(iOS)
      #if swift(>=4.2)
        return UIAccessibility.isGuidedAccessEnabled
      #else
        return UIAccessibilityIsGuidedAccessEnabled()
      #endif
    #else
      return false
    #endif
  }

  /// The brightness level of the screen.
  public var screenBrightness: Int {
    #if os(iOS)
    return Int(UIScreen.main.brightness * 100)
    #else
    return 100
    #endif
  }
}

// MARK: - CustomStringConvertible
extension Device: CustomStringConvertible {

  /// A textual representation of the device.
  public var description: String {
    #if os(iOS)
      switch self {
      case .iPodTouch5: return "iPod touch (5th generation)"
      case .iPodTouch6: return "iPod touch (6th generation)"
      case .iPodTouch7: return "iPod touch (7th generation)"
      case .iPhone4: return "iPhone 4"
      case .iPhone4s: return "iPhone 4s"
      case .iPhone5: return "iPhone 5"
      case .iPhone5c: return "iPhone 5c"
      case .iPhone5s: return "iPhone 5s"
      case .iPhone6: return "iPhone 6"
      case .iPhone6Plus: return "iPhone 6 Plus"
      case .iPhone6s: return "iPhone 6s"
      case .iPhone6sPlus: return "iPhone 6s Plus"
      case .iPhone7: return "iPhone 7"
      case .iPhone7Plus: return "iPhone 7 Plus"
      case .iPhoneSE: return "iPhone SE"
      case .iPhone8: return "iPhone 8"
      case .iPhone8Plus: return "iPhone 8 Plus"
      case .iPhoneX: return "iPhone X"
      case .iPhoneXS: return "iPhone Xs"
      case .iPhoneXSMax: return "iPhone Xs Max"
      case .iPhoneXR: return "iPhone Xʀ"
      case .iPhone11: return "iPhone 11"
      case .iPhone11Pro: return "iPhone 11 Pro"
      case .iPhone11ProMax: return "iPhone 11 Pro Max"
      case .iPad2: return "iPad 2"
      case .iPad3: return "iPad (3rd generation)"
      case .iPad4: return "iPad (4th generation)"
      case .iPadAir: return "iPad Air"
      case .iPadAir2: return "iPad Air 2"
      case .iPad5: return "iPad (5th generation)"
      case .iPad6: return "iPad (6th generation)"
      case .iPadAir3: return "iPad Air (3rd generation)"
      case .iPad7: return "iPad (7th generation)"
      case .iPadMini: return "iPad Mini"
      case .iPadMini2: return "iPad Mini 2"
      case .iPadMini3: return "iPad Mini 3"
      case .iPadMini4: return "iPad Mini 4"
      case .iPadMini5: return "iPad Mini (5th generation)"
      case .iPadPro9Inch: return "iPad Pro (9.7-inch)"
      case .iPadPro12Inch: return "iPad Pro (12.9-inch)"
      case .iPadPro12Inch2: return "iPad Pro (12.9-inch) (2nd generation)"
      case .iPadPro10Inch: return "iPad Pro (10.5-inch)"
      case .iPadPro11Inch: return "iPad Pro (11-inch)"
      case .iPadPro12Inch3: return "iPad Pro (12.9-inch) (3rd generation)"
      case .iPadPro11Inch2: return "iPad Pro (11-inch) (2nd generation)"
      case .iPadPro12Inch4: return "iPad Pro (12.9-inch) (4th generation)"
      case .iPadPro11Inch3: return "iPad Pro (11-inch) (3rd generation)"
      case .iPadPro12Inch5: return "iPad Pro (12.9-inch) (5th generation)"
      case .homePod: return "HomePod"
      case .simulator(let model): return "Simulator (\(model))"
      case .unknown(let identifier): return identifier
      }
    #elseif os(watchOS)
      switch self {
      case .appleWatchSeries0_38mm: return "Apple Watch (1st generation) 38mm"
      case .appleWatchSeries0_42mm: return "Apple Watch (1st generation) 42mm"
      case .appleWatchSeries1_38mm: return "Apple Watch Series 1 38mm"
      case .appleWatchSeries1_42mm: return "Apple Watch Series 1 42mm"
      case .appleWatchSeries2_38mm: return "Apple Watch Series 2 38mm"
      case .appleWatchSeries2_42mm: return "Apple Watch Series 2 42mm"
      case .appleWatchSeries3_38mm: return "Apple Watch Series 3 38mm"
      case .appleWatchSeries3_42mm: return "Apple Watch Series 3 42mm"
      case .appleWatchSeries4_40mm: return "Apple Watch Series 4 40mm"
      case .appleWatchSeries4_44mm: return "Apple Watch Series 4 44mm"
      case .appleWatchSeries5_40mm: return "Apple Watch Series 5 40mm"
      case .appleWatchSeries5_44mm: return "Apple Watch Series 5 44mm"
      case .simulator(let model): return "Simulator (\(model))"
      case .unknown(let identifier): return identifier
      }
    #elseif os(tvOS)
      switch self {
      case .appleTVHD: return "Apple TV HD"
      case .appleTV4K: return "Apple TV 4K"
      case .appleTV4K2: return "Apple TV 4K (2nd generation)"
      case .simulator(let model): return "Simulator (\(model.description))"
      case .unknown(let identifier): return identifier
      }
    #endif
  }

  /// A safe version of `description`.
  /// Example:
  /// Device.iPhoneXR.description:     iPhone Xʀ
  /// Device.iPhoneXR.safeDescription: iPhone XR
  public var safeDescription: String {
    #if os(iOS)
      switch self {
      case .iPodTouch5: return "iPod touch (5th generation)"
      case .iPodTouch6: return "iPod touch (6th generation)"
      case .iPodTouch7: return "iPod touch (7th generation)"
      case .iPhone4: return "iPhone 4"
      case .iPhone4s: return "iPhone 4s"
      case .iPhone5: return "iPhone 5"
      case .iPhone5c: return "iPhone 5c"
      case .iPhone5s: return "iPhone 5s"
      case .iPhone6: return "iPhone 6"
      case .iPhone6Plus: return "iPhone 6 Plus"
      case .iPhone6s: return "iPhone 6s"
      case .iPhone6sPlus: return "iPhone 6s Plus"
      case .iPhone7: return "iPhone 7"
      case .iPhone7Plus: return "iPhone 7 Plus"
      case .iPhoneSE: return "iPhone SE"
      case .iPhone8: return "iPhone 8"
      case .iPhone8Plus: return "iPhone 8 Plus"
      case .iPhoneX: return "iPhone X"
      case .iPhoneXS: return "iPhone XS"
      case .iPhoneXSMax: return "iPhone XS Max"
      case .iPhoneXR: return "iPhone XR"
      case .iPhone11: return "iPhone 11"
      case .iPhone11Pro: return "iPhone 11 Pro"
      case .iPhone11ProMax: return "iPhone 11 Pro Max"
      case .iPhoneSE2: return "iPhone SE (2nd generation)"
      case .iPhone12: return "iPhone 12"
      case .iPhone12Mini: return "iPhone 12 mini"
      case .iPhone12Pro: return "iPhone 12 Pro"
      case .iPhone12ProMax: return "iPhone 12 Pro Max"
      case .iPad2: return "iPad 2"
      case .iPad3: return "iPad (3rd generation)"
      case .iPad4: return "iPad (4th generation)"
      case .iPadAir: return "iPad Air"
      case .iPadAir2: return "iPad Air 2"
      case .iPad5: return "iPad (5th generation)"
      case .iPad6: return "iPad (6th generation)"
      case .iPadAir3: return "iPad Air (3rd generation)"
      case .iPad7: return "iPad (7th generation)"
      case .iPad8: return "iPad (8th generation)"
      case .iPadAir4: return "iPad Air (4th generation)"
      case .iPadMini: return "iPad Mini"
      case .iPadMini2: return "iPad Mini 2"
      case .iPadMini3: return "iPad Mini 3"
      case .iPadMini4: return "iPad Mini 4"
      case .iPadMini5: return "iPad Mini (5th generation)"
      case .iPadPro9Inch: return "iPad Pro (9.7-inch)"
      case .iPadPro12Inch: return "iPad Pro (12.9-inch)"
      case .iPadPro12Inch2: return "iPad Pro (12.9-inch) (2nd generation)"
      case .iPadPro10Inch: return "iPad Pro (10.5-inch)"
      case .iPadPro11Inch: return "iPad Pro (11-inch)"
      case .iPadPro12Inch3: return "iPad Pro (12.9-inch) (3rd generation)"
      case .iPadPro11Inch2: return "iPad Pro (11-inch) (2nd generation)"
      case .iPadPro12Inch4: return "iPad Pro (12.9-inch) (4th generation)"
      case .iPadPro11Inch3: return "iPad Pro (11-inch) (3rd generation)"
      case .iPadPro12Inch5: return "iPad Pro (12.9-inch) (5th generation)"
      case .homePod: return "HomePod"
      case .simulator(let model): return "Simulator (\(model.safeDescription))"
      case .unknown(let identifier): return identifier
      }
    #elseif os(macOS)
      switch self {
      case .appleWatchSeries0_38mm: return "Apple Watch (1st generation) 38mm"
      case .appleWatchSeries0_42mm: return "Apple Watch (1st generation) 42mm"
      case .appleWatchSeries1_38mm: return "Apple Watch Series 1 38mm"
      case .appleWatchSeries1_42mm: return "Apple Watch Series 1 42mm"
      case .appleWatchSeries2_38mm: return "Apple Watch Series 2 38mm"
      case .appleWatchSeries2_42mm: return "Apple Watch Series 2 42mm"
      case .appleWatchSeries3_38mm: return "Apple Watch Series 3 38mm"
      case .appleWatchSeries3_42mm: return "Apple Watch Series 3 42mm"
      case .appleWatchSeries4_40mm: return "Apple Watch Series 4 40mm"
      case .appleWatchSeries4_44mm: return "Apple Watch Series 4 44mm"
      case .appleWatchSeries5_40mm: return "Apple Watch Series 5 40mm"
      case .appleWatchSeries5_44mm: return "Apple Watch Series 5 44mm"
      case .appleWatchSeries6_40mm: return "Apple Watch Series 6 40mm"
      case .appleWatchSeries6_44mm: return "Apple Watch Series 6 44mm"
      case .appleWatchSE_40mm: return "Apple Watch SE 40mm"
      case .appleWatchSE_44mm: return "Apple Watch SE 44mm"
      case .simulator(let model): return "Simulator (\(model.safeDescription))"
      case .unknown(let identifier): return identifier
      }
    #elseif os(tvOS)
      switch self {
      case .appleTVHD: return "Apple TV HD"
      case .appleTV4K: return "Apple TV 4K"
      case .appleTV4K2: return "Apple TV 4K (2nd generation)"
      case .simulator(let model): return "Simulator (\(model.safeDescription))"
      case .unknown(let identifier): return identifier
      }
    #endif
  }
}

// MARK: - Equatable
extension Device: Equatable {

  /// Compares two devices
  ///
  /// - parameter lhs: A device.
  /// - parameter rhs: Another device.
  ///
  /// - returns: `true` iff the underlying identifier is the same.
  public static func == (lhs: Device, rhs: Device) -> Bool {
    return lhs.description == rhs.description
  }

}

// MARK: - Battery
#if os(iOS) || os(watchOS)
@available(iOS 8.0, watchOS 4.0, *)
extension Device {
  /**
   This enum describes the state of the battery.

   - Full:      The device is plugged into power and the battery is 100% charged or the device is the iOS Simulator.
   - Charging:  The device is plugged into power and the battery is less than 100% charged.
   - Unplugged: The device is not plugged into power; the battery is discharging.
   */
  public enum BatteryState: CustomStringConvertible, Equatable {
    /// The device is plugged into power and the battery is 100% charged or the device is the iOS Simulator.
    case full
    /// The device is plugged into power and the battery is less than 100% charged.
    /// The associated value is in percent (0-100).
    case charging(Int)
    /// The device is not plugged into power; the battery is discharging.
    /// The associated value is in percent (0-100).
    case unplugged(Int)

    #if os(iOS)
      fileprivate init() {
        let wasBatteryMonitoringEnabled = UIDevice.current.isBatteryMonitoringEnabled
        UIDevice.current.isBatteryMonitoringEnabled = true
        let batteryLevel = Int(round(UIDevice.current.batteryLevel * 100)) // round() is actually not needed anymore since -[batteryLevel] seems to always return a two-digit precision number
        // but maybe that changes in the future.
        switch UIDevice.current.batteryState {
        case .charging: self = .charging(batteryLevel)
        case .full: self = .full
        case .unplugged: self = .unplugged(batteryLevel)
        case .unknown: self = .full // Should never happen since `batteryMonitoring` is enabled.
        @unknown default:
          self = .full // To cover any future additions for which DeviceKit might not have updated yet.
        }
        UIDevice.current.isBatteryMonitoringEnabled = wasBatteryMonitoringEnabled
      }
    #elseif os(watchOS)
      fileprivate init() {
        let wasBatteryMonitoringEnabled = WKInterfaceDevice.current().isBatteryMonitoringEnabled
        WKInterfaceDevice.current().isBatteryMonitoringEnabled = true
        let batteryLevel = Int(round(WKInterfaceDevice.current().batteryLevel * 100)) // round() is actually not needed anymore since -[batteryLevel] seems to always return a two-digit precision number
        // but maybe that changes in the future.
        switch WKInterfaceDevice.current().batteryState {
        case .charging: self = .charging(batteryLevel)
        case .full: self = .full
        case .unplugged: self = .unplugged(batteryLevel)
        case .unknown: self = .full // Should never happen since `batteryMonitoring` is enabled.
        @unknown default:
          self = .full // To cover any future additions for which DeviceKit might not have updated yet.
        }
        WKInterfaceDevice.current().isBatteryMonitoringEnabled = wasBatteryMonitoringEnabled
      }
    #endif

    /// The user enabled Low Power mode
    public var lowPowerMode: Bool {
      if #available(iOS 9.0, *) {
        return ProcessInfo.processInfo.isLowPowerModeEnabled
      } else {
        return false
      }
    }

    /// Provides a textual representation of the battery state.
    /// Examples:
    /// ```
    /// Battery level: 90%, device is plugged in.
    /// Battery level: 100 % (Full), device is plugged in.
    /// Battery level: \(batteryLevel)%, device is unplugged.
    /// ```
    public var description: String {
      switch self {
      case .charging(let batteryLevel): return "Battery level: \(batteryLevel)%, device is plugged in."
      case .full: return "Battery level: 100 % (Full), device is plugged in."
      case .unplugged(let batteryLevel): return "Battery level: \(batteryLevel)%, device is unplugged."
      }
    }

  }

  /// The state of the battery
  public var batteryState: BatteryState? {
    guard isCurrent else { return nil }
    return BatteryState()
  }

  /// Battery level ranges from 0 (fully discharged) to 100 (100% charged).
  public var batteryLevel: Int? {
    guard isCurrent else { return nil }
    switch BatteryState() {
    case .charging(let value): return value
    case .full: return 100
    case .unplugged(let value): return value
    }
  }

}
#endif

// MARK: - Device.Batterystate: Comparable
#if os(iOS) || os(watchOS)
@available(iOS 8.0, watchOS 4.0, *)
extension Device.BatteryState: Comparable {
  /// Tells if two battery states are equal.
  ///
  /// - parameter lhs: A battery state.
  /// - parameter rhs: Another battery state.
  ///
  /// - returns: `true` iff they are equal, otherwise `false`
  public static func == (lhs: Device.BatteryState, rhs: Device.BatteryState) -> Bool {
    return lhs.description == rhs.description
  }

  /// Compares two battery states.
  ///
  /// - parameter lhs: A battery state.
  /// - parameter rhs: Another battery state.
  ///
  /// - returns: `true` if rhs is `.Full`, `false` when lhs is `.Full` otherwise their battery level is compared.
  public static func < (lhs: Device.BatteryState, rhs: Device.BatteryState) -> Bool {
    switch (lhs, rhs) {
    case (.full, _): return false // return false (even if both are `.Full` -> they are equal)
    case (_, .full): return true // lhs is *not* `.Full`, rhs is
    case let (.charging(lhsLevel), .charging(rhsLevel)): return lhsLevel < rhsLevel
    case let (.charging(lhsLevel), .unplugged(rhsLevel)): return lhsLevel < rhsLevel
    case let (.unplugged(lhsLevel), .charging(rhsLevel)): return lhsLevel < rhsLevel
    case let (.unplugged(lhsLevel), .unplugged(rhsLevel)): return lhsLevel < rhsLevel
    default: return false // compiler won't compile without it, though it cannot happen
    }
  }
}
#endif

#if os(iOS)
extension Device {
  // MARK: - Orientation
    /**
      This enum describes the state of the orientation.
      - Landscape: The device is in Landscape Orientation
      - Portrait:  The device is in Portrait Orientation
    */
    public enum Orientation {
      case landscape
      case portrait
    }

    public var orientation: Orientation {
      if UIDevice.current.orientation.isLandscape {
        return .landscape
      } else {
        return .portrait
      }
    }
}
#endif

#if os(iOS)
// MARK: - DiskSpace
extension Device {

  /// Return the root url
  ///
  /// - returns: the NSHomeDirectory() url
  private static let rootURL = URL(fileURLWithPath: NSHomeDirectory())

  /// The volume’s total capacity in bytes.
  public static var volumeTotalCapacity: Int? {
    return (try? Device.rootURL.resourceValues(forKeys: [.volumeTotalCapacityKey]))?.volumeTotalCapacity
  }

  /// The volume’s available capacity in bytes.
  public static var volumeAvailableCapacity: Int? {
    return (try? rootURL.resourceValues(forKeys: [.volumeAvailableCapacityKey]))?.volumeAvailableCapacity
  }

  /// The volume’s available capacity in bytes for storing important resources.
  @available(iOS 11.0, *)
  public static var volumeAvailableCapacityForImportantUsage: Int64? {
    return (try? rootURL.resourceValues(forKeys: [.volumeAvailableCapacityForImportantUsageKey]))?.volumeAvailableCapacityForImportantUsage
  }

  /// The volume’s available capacity in bytes for storing nonessential resources.
  @available(iOS 11.0, *)
  public static var volumeAvailableCapacityForOpportunisticUsage: Int64? { //swiftlint:disable:this identifier_name
    return (try? rootURL.resourceValues(forKeys: [.volumeAvailableCapacityForOpportunisticUsageKey]))?.volumeAvailableCapacityForOpportunisticUsage
  }

  /// All volumes capacity information in bytes.
  @available(iOS 11.0, *)
  public static var volumes: [URLResourceKey: Int64]? {
    do {
      let values = try rootURL.resourceValues(forKeys: [.volumeAvailableCapacityForImportantUsageKey,
                                                        .volumeAvailableCapacityKey,
                                                        .volumeAvailableCapacityForOpportunisticUsageKey,
                                                        .volumeTotalCapacityKey
                                                       ])
      return values.allValues.mapValues {
        if let int = $0 as? Int64 {
          return int
        }
        if let int = $0 as? Int {
          return Int64(int)
        }
        return 0
      }
    } catch {
      return nil
    }
  }
}
#endif

#if os(iOS)
// MARK: - Apple Pencil
extension Device {

  /**
    This option set describes the current Apple Pencils
    - firstGeneration:  1st Generation Apple Pencil
    - secondGeneration: 2nd Generation Apple Pencil
   */
  public struct ApplePencilSupport: OptionSet {

    public var rawValue: UInt

    public init(rawValue: UInt) {
      self.rawValue = rawValue
    }

    public static let firstGeneration = ApplePencilSupport(rawValue: 0x01)
    public static let secondGeneration = ApplePencilSupport(rawValue: 0x02)
  }

  /// All Apple Pencil Capable Devices
  public static var allApplePencilCapableDevices: [Device] {
    return [.iPad6, .iPadAir3, .iPad7, .iPad8, .iPadAir4, .iPadMini5, .iPadPro9Inch, .iPadPro12Inch, .iPadPro12Inch2, .iPadPro10Inch, .iPadPro11Inch, .iPadPro12Inch3, .iPadPro11Inch2, .iPadPro12Inch4, .iPadPro11Inch3, .iPadPro12Inch5]
  }

  /// Returns supported version of the Apple Pencil
  public var applePencilSupport: ApplePencilSupport {
    switch self {
      case .iPad6: return .firstGeneration
      case .iPadAir3: return .firstGeneration
      case .iPad7: return .firstGeneration
      case .iPadMini5: return .firstGeneration
      case .iPadPro9Inch: return .firstGeneration
      case .iPadPro12Inch: return .firstGeneration
      case .iPadPro12Inch2: return .firstGeneration
      case .iPadPro10Inch: return .firstGeneration
      case .iPadPro11Inch: return .secondGeneration
      case .iPadPro12Inch3: return .secondGeneration
      default: return []
    }
  }
}
#endif

#if os(iOS)
// MARK: - Cameras
extension Device {

  public enum CameraTypes {
    case normal
    case telephoto
    case ultraWide
  }

  /// Returns an array of the types of cameras the device has
  public var cameras: [CameraTypes] {
    switch self {
      case .iPodTouch5: return [.wide]
      case .iPodTouch6: return [.wide]
      case .iPodTouch7: return [.wide]
      case .iPhone4: return [.wide]
      case .iPhone4s: return [.wide]
      case .iPhone5: return [.wide]
      case .iPhone5c: return [.wide]
      case .iPhone5s: return [.wide]
      case .iPhone6: return [.wide]
      case .iPhone6Plus: return [.wide]
      case .iPhone6s: return [.wide]
      case .iPhone6sPlus: return [.wide]
      case .iPhone7: return [.wide]
      case .iPhoneSE: return [.wide]
      case .iPhone8: return [.wide]
      case .iPhoneXR: return [.wide]
      case .iPhoneSE2: return [.wide]
      case .iPad2: return [.wide]
      case .iPad3: return [.wide]
      case .iPad4: return [.wide]
      case .iPadAir: return [.wide]
      case .iPadAir2: return [.wide]
      case .iPad5: return [.wide]
      case .iPad6: return [.wide]
      case .iPadAir3: return [.wide]
      case .iPad7: return [.wide]
      case .iPad8: return [.wide]
      case .iPadAir4: return [.wide]
      case .iPadMini: return [.wide]
      case .iPadMini2: return [.wide]
      case .iPadMini3: return [.wide]
      case .iPadMini4: return [.wide]
      case .iPadMini5: return [.wide]
      case .iPadPro9Inch: return [.wide]
      case .iPadPro12Inch: return [.wide]
      case .iPadPro12Inch2: return [.wide]
      case .iPadPro10Inch: return [.wide]
      case .iPadPro11Inch: return [.wide]
      case .iPadPro12Inch3: return [.wide]
      case .iPhone7Plus: return [.wide, .telephoto]
      case .iPhone8Plus: return [.wide, .telephoto]
      case .iPhoneX: return [.wide, .telephoto]
      case .iPhoneXS: return [.wide, .telephoto]
      case .iPhoneXSMax: return [.wide, .telephoto]
      case .iPhone11: return [.wide, .ultraWide]
      case .iPhone12: return [.wide, .ultraWide]
      case .iPhone12Mini: return [.wide, .ultraWide]
      case .iPadPro11Inch2: return [.wide, .ultraWide]
      case .iPadPro12Inch4: return [.wide, .ultraWide]
      case .iPadPro11Inch3: return [.wide, .ultraWide]
      case .iPadPro12Inch5: return [.wide, .ultraWide]
      case .iPhone11Pro: return [.wide, .telephoto, .ultraWide]
      case .iPhone11ProMax: return [.wide, .telephoto, .ultraWide]
      case .iPhone12Pro: return [.wide, .telephoto, .ultraWide]
      case .iPhone12ProMax: return [.wide, .telephoto, .ultraWide]
      default: return []
    }
  }

  /// All devices that feature a camera
  public static var allDevicesWithCamera: [Device] {
    return [.iPodTouch5, .iPodTouch6, .iPodTouch7, .iPhone4, .iPhone4s, .iPhone5, .iPhone5c, .iPhone5s, .iPhone6, .iPhone6Plus, .iPhone6s, .iPhone6sPlus, .iPhone7, .iPhone7Plus, .iPhoneSE, .iPhone8, .iPhone8Plus, .iPhoneX, .iPhoneXS, .iPhoneXSMax, .iPhoneXR, .iPhone11, .iPhone11Pro, .iPhone11ProMax, .iPhoneSE2, .iPhone12, .iPhone12Mini, .iPhone12Pro, .iPhone12ProMax, .iPad2, .iPad3, .iPad4, .iPadAir, .iPadAir2, .iPad5, .iPad6, .iPadAir3, .iPad7, .iPad8, .iPadAir4, .iPadMini, .iPadMini2, .iPadMini3, .iPadMini4, .iPadMini5, .iPadPro9Inch, .iPadPro12Inch, .iPadPro12Inch2, .iPadPro10Inch, .iPadPro11Inch, .iPadPro12Inch3, .iPadPro11Inch2, .iPadPro12Inch4, .iPadPro11Inch3, .iPadPro12Inch5]
  }

  /// All devices that feature a normal camera
  public static var allDevicesWithNormalCamera: [Device] {
    return Device.allDevicesWithWideCamera
  }

  /// All devices that feature a wide camera
  public static var allDevicesWithWideCamera: [Device] {
    return [.iPodTouch5, .iPodTouch6, .iPodTouch7, .iPhone4, .iPhone4s, .iPhone5, .iPhone5c, .iPhone5s, .iPhone6, .iPhone6Plus, .iPhone6s, .iPhone6sPlus, .iPhone7, .iPhone7Plus, .iPhoneSE, .iPhone8, .iPhone8Plus, .iPhoneX, .iPhoneXS, .iPhoneXSMax, .iPhoneXR, .iPhone11, .iPhone11Pro, .iPhone11ProMax, .iPhoneSE2, .iPhone12, .iPhone12Mini, .iPhone12Pro, .iPhone12ProMax, .iPad2, .iPad3, .iPad4, .iPadAir, .iPadAir2, .iPad5, .iPad6, .iPadAir3, .iPad7, .iPad8, .iPadAir4, .iPadMini, .iPadMini2, .iPadMini3, .iPadMini4, .iPadMini5, .iPadPro9Inch, .iPadPro12Inch, .iPadPro12Inch2, .iPadPro10Inch, .iPadPro11Inch, .iPadPro12Inch3, .iPadPro11Inch2, .iPadPro12Inch4, .iPadPro11Inch3, .iPadPro12Inch5]
  }

  /// All devices that feature a telephoto camera
  public static var allDevicesWithTelephotoCamera: [Device] {
    return [.iPhone7Plus, .iPhone8Plus, .iPhoneX, .iPhoneXS, .iPhoneXSMax, .iPhone11Pro, .iPhone11ProMax]
  }

  /// All devices that feature an ultra wide camera
  public static var allDevicesWithUltraWideCamera: [Device] {
    return [.iPhone11, .iPhone11Pro, .iPhone11ProMax, .iPhone12, .iPhone12Mini, .iPhone12Pro, .iPhone12ProMax, .iPadPro11Inch2, .iPadPro12Inch4, .iPadPro11Inch3, .iPadPro12Inch5]
  }

  /// Returns whether or not the current device has a camera
  public var hasCamera: Bool {
    return !self.cameras.isEmpty
  }

  /// Returns whether or not the current device has a normal camera
  public var hasNormalCamera: Bool {
    return self.cameras.contains(.normal)
  }

  /// Returns whether or not the current device has a telephoto camera
  public var hasTelephotoCamera: Bool {
    return self.cameras.contains(.telephoto)
  }

  /// Returns whether or not the current device has an ultra wide camera
  public var hasUltraWideCamera: Bool {
    return self.cameras.contains(.ultraWide)
  }

}
#endif

#if os(macOS)
private func sysctlData(for keys: [Int32]) throws -> [Int8] {
    return try keys.withUnsafeBufferPointer { keysPointer -> [Int8] in
        // Get the data size
        var requiredSize = 0
        var result = Darwin.sysctl(UnsafeMutablePointer<Int32>(mutating: keysPointer.baseAddress), UInt32(keys.count), nil, &requiredSize, nil, 0)
        if result != 0, let code = POSIXErrorCode(rawValue: errno) {
            throw POSIXError(code)
        }
        // get info
        let data = [Int8](repeating: 0, count: requiredSize)
        result = data.withUnsafeBufferPointer { dataBuffer -> Int32 in
            Darwin.sysctl(UnsafeMutablePointer<Int32>(mutating: keysPointer.baseAddress), UInt32(keys.count), UnsafeMutableRawPointer(mutating: dataBuffer.baseAddress), &requiredSize, nil, 0)
        }
        if result != 0, let code = POSIXErrorCode(rawValue: errno) {
            throw POSIXError(code)
        }
        return data
    }
}
#endif
