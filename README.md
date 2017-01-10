### Moya/Moya#844

This repo is an attempt to reproduce [an issue](https://github.com/Moya/Moya/issues/844) whereby requests 
aren't being made after subscription. 
The code in question can be found in [WelcomeViewController's]() `viewDidLoad` method. 
In the logs the subscription is made, then no network messages appear.

(Ps. you may need to replace the Hookbin URL)
