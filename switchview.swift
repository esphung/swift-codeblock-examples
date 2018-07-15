
//  __         ___  __               ___
// /__` |  | |  |  /  ` |__| \  / | |__  |  |
// .__/ |/\| |  |  \__, |  |  \/  | |___ |/\|


func transition(Sender: UIButton!) {
	let secondViewController:SecondViewController = SecondViewController()
	self.presentViewController(secondViewController, animated: true, completion: nil)
}



 //  or


func switchScreen() {
	let mainStoryboard = UIStoryboard(name: "Storyboard", bundle: Bundle.main)
	let vc : UIViewController = mainStoryboard.instantiateViewController(withIdentifier: "vcMainLogin") as UIViewController
	self.present(vc, animated: true, completion: nil)
}


let storyboard = UIStoryboard(name: "MyStoryboardName", bundle: nil)
let controller = storyboard.instantiateViewController(withIdentifier: "someViewController")
self.present(controller, animated: true, completion: nil)



extension UIViewController {
	func performSegueToReturnBack()  {
		if let nav = self.navigationController {
			nav.popViewController(animated: true)
		} else {
			self.dismiss(animated: true, completion: nil)
		}
	}
}
