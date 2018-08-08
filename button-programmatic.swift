/*
88""Yb 88   88 888888 888888  dP"Yb  88b 88
88__dP 88   88   88     88   dP   Yb 88Yb88
88""Yb Y8   8P   88     88   Yb   dP 88 Y88
88oodP `YbodP'   88     88    YbodP  88  Y8
*/

var button = UIButton()

// set up button
button =  UIButton(frame: CGRect(x: screenWidth/12, y: screenHeight/2, width: screenWidth * 0.8, height: 50))
button.layer.borderWidth = 2.0;
button.backgroundColor = UIColor.green
button.setTitle("Button", for: .normal)
button.titleLabel?.font =  UIFont.systemFont(ofSize: 32, weight: .light)
button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)

self.view.addSubview(button)