func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
	// Override point for customization after application launch.
	// Sets background to a blank/empty image
	

	// Create a new window with the size of the current window and set it as our main window
	self.window = UIWindow(frame: UIScreen.main.bounds)
	
	// 2. Instantiate a storyboard that we can use to create our new initial view controller
	let mainStoryboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
	
	// 3. Instantiate our new initial view controller based on it's Storyboard ID
	let testViewController: UIViewController = mainStoryboard.instantiateViewController(withIdentifier: "testViewController")
	
	// 4. Set our new window's root view controller as our the new controller we just initiated
	self.window?.rootViewController = testViewController
	
	// 5. Make our new window visible
	self.window?.makeKeyAndVisible()



	return true
}