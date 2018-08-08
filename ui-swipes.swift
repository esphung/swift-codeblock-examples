
class ViewController: UIViewController {
    @IBOutlet weak var myView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let left = UISwipeGestureRecognizer(target : self, action : #selector(ViewController.leftSwipe))
        left.direction = .left
        self.myView.addGestureRecognizer(left)
        
        let right = UISwipeGestureRecognizer(target : self, action : #selector(ViewController.rightSwipe))
        right.direction = .right
        self.myView.addGestureRecognizer(right)
        
        let up = UISwipeGestureRecognizer(target : self, action : #selector(ViewController.upSwipe))
        up.direction = .up
        self.myView.addGestureRecognizer(up)
        
        let down = UISwipeGestureRecognizer(target : self, action : #selector(ViewController.downSwipe))
        down.direction = .down
        self.myView.addGestureRecognizer(down)
    }
    @objc
    func leftSwipe(){
        self.myView.backgroundColor = UIColor.blue
    }
    
    @objc
    func rightSwipe(){
        self.myView.backgroundColor = UIColor.green
    }
    
    @objc
    func upSwipe(){
        self.myView.backgroundColor = UIColor.yellow
    }
    
    @objc
    func downSwipe(){
        self.myView.backgroundColor = UIColor.gray
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}