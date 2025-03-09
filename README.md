# SocialMediaAppCaseStudy
An iOS Application which uses Social Media App UI Kit as a design, written in Swift. This app uses Social Media App UI Kit, for more information about the kit kindly visit: https://www.pixeltrue.com/free-ui-kits/social-media-app

### Used Packages:

*SwiftLint* installed to the project in order to standardize the code base. Consequently, if you don't have SwiftLint locally installed:

  1. You can either disable *SwiftLint* by removing SwiftLint Run Script Phase from *Targets > Build Phases*

  2. Or you can install *SwiftLint* using *Homebrew*. In order to install SwiftLint run below command via terminal:
    
           `brew install swiftlint`
        
  *For more information about *SwiftLint*, kindly visit: https://github.com/realm/SwiftLint*

### Environment Info:

**Xcode version: 13.2.1**

**Swift version:5.5**

**This project uses *VIPER* as an architecture model.**


### How to test?

There are 5 screens to test in this app:

  1. Splash Screen: Initial screen with a page controller.
  2. Home Screen: Main screen with a tab bar controller, story slider, and post listing. This is the first screen that will be presenting after the Splash Screen.
  3. Profile Screen: On the tab bar controller, 5th tab bar item is for profile screen. In order to open the screen, you need to click this user icon placed on the tab bar.
  4. Conversations Screen: On the home screen, click the messaging icon placed on the top right corner. All the conversations will be displaying in this screen.
  5. Messaging Screen: Click one of the conversations listed in conversations screen, in order to see messaging screen.
