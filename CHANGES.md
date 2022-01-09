# PATCH NOTE

# Beta

## Beta 2.0.1

### Others

* Change app icon
* Maybe the last code update before official release

### Code changes

* Clean up some code

## Beta 2.0.0

### Add  

* Responsive layout for mobile (and more reponsive for tablet)
* Drag with bottom sheets

### Changes

* New style for button

### Fix

* Fix a fatal error with BottomSheets cause by BottomSheet widget

### Code changes

* Delete lot of useless parent widgets (= better performance + bugs fix)
* Delete most of sized box to go to an adaptive layout on mobile
* Columns : spaceBetween to spaceAround/spaceEvenly
* Add sized box with MediaQuerry to fit with the devices
* Replace all empty space in bottom sheets by padding
* Context is now give to the widget
* Optimization in the calculation of the theme to show
* Merge Image_Dice in roll.dart
* Lot of optimization for the calculation of the var "c"
* Use of MediaQuerri proportion to calculate the size of the box
* Use fittedBox with padding to the text size fit with box
* Text button --> Elevated button
* Update gradle version(4.1.0 --> 7.0.4)

## Beta 1.6.3

### Code changes

* Update pubsec packages
* Change package_info (deprecated) to package_info_plus
* Change launch_review to store_redirect to remove toast
* Change Elevated button style

## Beta 1.6.2

### Code changes

* Optimise models export
* Remove deprecated api (and warning) of android splash screen
* Update packages

## Beta 1.6.1

### Fix

* Face with 2 points in dark mode 

### Others

* Minimum Api in Android is now 19 (Android 4.4)
* Optimization

### Code changes

* Changes dark_two.png to a new repaired image
* Merge widgets in settings2 (info page)
* Android manifest : minSDK 16 --> 19
* Better size of SizedBox in Home Page

## Beta 1.6.0

### Add  

* Button to put a review on store
* Button to send a mail of feedback
* Button to see privacy policy

### Changes 

* Translation for semantics label (theme)
* Font of the version

### Fix 

* Layout problem with 5/6 dice and total counter

### Code changes 

* 3 New widget (new features, see above)
* 2 New package (url_launcher, launch_review(deprecated api, to check))
* New translations (l10n files)
* Android and iOS manifest to support new features
* Merge total_counter and total (optimisation)

## Beta 1.5.0

### Add  

* Button to disable showing of faces
* Info page with version and back button (other coming for 1.6.0)

### Remove

* Languague changes (remove forever)

### Changes

* New design to Theme button (Icons)
* Translations for settings
* New folder for pages (code feature)
