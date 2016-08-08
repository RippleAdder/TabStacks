# TabStacks
Minimal iOS Project to demonstrate a bug with UITabBar is iOS 10 beta

Rdar description: 

Summary:
When using a Tab Bar on iPhone that has more tabs than will fit on screen, the tabs automatically go into a "More" tab.  I have subclassed UITabBarItem and I am setting the Title of the tab bar item after the tab bar appears.  Once the title is set, the tabs that are hidden behind the "More" tab appear and stack on top of other tabs, as seen in the screenshot.  Note: This only happens on iOS 10 beta.

I have included a sample project that illustrates this behavior.  Open the sample project in XCode 8, run it on iPhone 6 or simulator and press the Go button.  Once you press the button, the tab will stack on top of the first tab.

Steps to Reproduce:
1.  Create a new Xcode project with a tab bar
2.  Add 7 tabs to the tab bar
3.  Create a subclass of UITabBarItem
4.  In the subclass, register for a notification and set title in the notification handler
5.  Add a button to trigger the notification
6.  Press button
7.  Now the tab shows up when it should not

Expected Results:
Tabs hidden behind "More" should not show unless "More" is tapped

Actual Results:
Tabs stack on top of each other after their Title is set programmatically.

Version:
iOS 10.0 (14A5322e)

Notes:


Configuration:
iPhone 6
