
import UIKit

// Screen width.
public var screenWidth: CGFloat {
    return UIScreen.main.bounds.width
}

// Screen height.
public var screenHeight: CGFloat {
    return UIScreen.main.bounds.height
}


class ViewController: UIViewController {

    weak var square: UIView!

    var squareFrame: CGRect {
        //let midX = self.view.bounds.midX
        //let midY = self.view.bounds.midY
        //let size: CGFloat = 64
        return CGRect(x: 0, y: 0, width: screenWidth, height: screenHeight)
    }

    override func loadView() {
        super.loadView()
        
        let square = UIView()
        self.view.addSubview(square)
        self.square = square
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.square.backgroundColor = .yellow
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()

        self.square.frame = self.squareFrame
    }
}