override func viewWillAppear(_ animated: Bool) {
	super.viewWillAppear(animated)
	// Hide the navigation bar on the this view controller
	self.navigationController?.setNavigationBarHidden(true, animated: animated)
}
	
override func viewWillDisappear(_ animated: Bool) {
	super.viewWillDisappear(animated)
	// Show the navigation bar on other view controllers
	self.navigationController?.setNavigationBarHidden(false, animated: animated)
}



override func viewDidLoad() {
    super.viewDidLoad()

    navigationItem.leftBarButtonItem = UIBarButtonItem(title: "< Back", style: .plain, target: self, action: #selector(backAction))

    // Do any additional setup if required.
}

func backAction(){
    //print("Back Button Clicked")
    dismiss(animated: true, completion: nil)
}