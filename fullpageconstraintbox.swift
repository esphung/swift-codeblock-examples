override func viewDidLoad() {
	super.viewDidLoad()
	// Do any additional setup after loading the view.
	
	let myView = UIView()
	myView.backgroundColor = UIColor.blue
	myView.translatesAutoresizingMaskIntoConstraints = false
	view.addSubview(myView)
	
	//myView.widthAnchor.constraint(eq).isActive = true
	myView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
	myView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
	myView.widthAnchor.constraint(equalToConstant: screenWidth * 0.9).isActive = true
	myView.heightAnchor.constraint(equalToConstant: screenHeight *  0.9).isActive = true
	


}
