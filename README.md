Movie Q
==========

Homework #1: Rotten Tomatoes
created by Tim Lee on Jun 4, 2014 5:15 PM, last modified by Tim Lee on Jun 4, 2014 5:32 PM Version 3
Overview: Build a Rotten Tomatoes app.

Submitting Assignments: Assignments are submitted through Github using Git, check out the Submitting Assignments page for more details.

User Stories:

- DONE User can view a list of movies from Rotten Tomatoes.  Poster images must be loading asynchronously.
User can view movie details by tapping on a cell
User sees loading state while waiting for movies API.  You can use one of the 3rd party libraries here.
User sees error message when there's a networking error.  You may not use UIAlertView to display the error.  See this screenshot for what the error message should look like: network error screenshot.
User can pull to refresh the movie list.
All images fade in (optional)
For the large poster, load the low-res image first, switch to high-res when complete (optional)
All images should be cached in memory and disk. In other words, images load immediately upon cold start (optional).
Customize the highlight and selection effect of the cell. (optional)
Customize the navigation bar. (optional)
Add a tab bar for Box Office and DVD. (optional)
Add a search bar. (optional)
Additional Requirements
Must use Cocoapods.
Asynchronous image downloading must be implemented using the UIImageView category in the AFNetworking library.
References
Install 3rd party libraries like AFNetworking using CocoaPods.
Code snippet for downloading movies from Rotten Tomatoes: https://gist.github.com/timothy1ee/8308396
Quick references: https://gist.github.com/timothy1ee/5fb17eb45950b7a29cc3

