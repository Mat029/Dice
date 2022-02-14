# PATCH NOTE

# Release :

## 1.0.0 :

### Other :

* Updated the docs (added Contributing.md)
* Removed "Beta" from the version display
* Updated translations

## Beta

## Beta 2.0.2

### Other

* Icon with round border
* The display name is now translated into all supported languages.
* Last update before realease!

## Beta 2.0.1

### Other

* Changed the application icon
* Maybe the last code update before the official release

### Code changes

* Clean up of some code

## Beta 2.0.0

### Add  

* Mobile responsive layout (and more responsive for tablets)
* Drag and drop with the bottom sheets

### Changes

* New style for buttons

### Fix

* Fixed a fatal error with BottomSheets caused by the BottomSheet widget.

### Code changes

* Removed many unnecessary parent widgets (= better performance + bug fixes)
* Removed most size boxes to switch to mobile adaptive layout
* Columns: spaceBetween to spaceAround/spaceEvenly
* Added size boxes with MediaQuerry to accommodate devices.
* Replaced all empty spaces in bottom sheets with padding
* Context is now given to the widget.
* Optimisation in the calculation of the theme to show
* Merge Image_Dice into roll.dart
* A lot of optimisation in the calculation of the var "c".
* Use of fittedBox with padding to make the text size fit the box
* Text button --> Elevated button
* Updated gradle version (4.1.0 --> 7.0.4)

## Beta 1.6.3

### Code changes

* Updated pubspec packages
* Changed package_info (deprecated) to package_info_plus.
* Changed launch_review to store_redirect to remove toast.
* Changed the style of the Elevated button

## Beta 1.6.2

### Code changes

* Optimisation of models export
* Removed deprecated api (and warning) from android home screen
* Updated packages

## Beta 1.6.1

### Fix

* Face with 2 dots in dark mode 

### Other

* Minimum Api in Android is now 19 (Android 4.4)
* Optimisation

### Code changes

* Change dark_two.png to a new fixed image
* Merge widgets in settings2 (info page)
* Android Manifest: minSDK 16 --> 19
* Better size of SizedBox in homepage.

## Beta 1.6.0

### Add  

* Button to put a comment on the store
* Button to send a mail
* Button to view the privacy policy

### Changes 

* Translation of the semantic label (theme)
* Version font

### Fix 

* Layout problem with 5/6 dice and total counter

### Code changes 

* 3 New widget (new features, see above)
* 2 new packages (url_launcher, launch_review(deprecated api, to be checked))
* New translations (l10n files)
* Android and iOS manifest to support new features
* Merge of total_counter and total (optimisation)

## Beta 1.5.0

### Add  

* Button to disable face display
* Info page with version and back button (more planned for 1.6.0)

### Delete

* Language changes (permanently removed)

### Changes

* New design for Theme button (icons)
* Translations for settings
* New folder for pages (code functionality)
