iOS Version Blocker (Below iOS 12) - POC

Purpose:
This POC checks the iOS version at runtime and blocks the app if it is running on an iOS version lower than 12.0.  
Since Xcode no longer supports simulators below iOS 12, we use iOS 15 as a reference for testing.  
To simulate blocking below iOS 12, set the deployment target to 10.0 or 11.0.

Setup Instructions:
1. Create a new Xcode project (`App` template, Storyboard, Swift).  
2. Set the Deployment Target to `10.0` or `11.0` in Project Settings.  
3. Implement runtime iOS version checking inside `ViewController.swift`.  
4. If the version is below iOS 12, show an alert and prevent usage.  

Testing Instructions:
    On a Simulator -
        - Run on an iOS 11 or lower simulator (if available in older Xcode versions).
        - If running iOS 12 or higher, the app works normally.
        - If below iOS 12, an alert appears, and tapping "Exit" closes the app.

    On a Real Device -
        - If you have an iOS 11 or lower device, install and run the app.
        - The unsupported version alert should appear.

Notes:
- Xcode 14+ does not support iOS 11 or lower simulators, so testing may require an older Xcode version.
- `exit(0)` is not allowed in App Store apps, but fine for POCs.
- If the deployment target is iOS 12, the app won’t install on lower versions.

Conclusion:
This POC blocks iOS versions below 12 at runtime.  
It’s useful for internal testing or enterprise apps where strict OS version control is required.
