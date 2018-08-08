

// MARK: - Set Up CheckMark Button
button = UIButton(frame: CGRect(
	x: myListIndent,
	y: screenHeight * 0.325,
	width: screenWidth * 0.8/2,
	height: myDefaultTextFieldHeight))
button.layer.borderWidth = 2.0
button.setTitleColor(UIColor.black, for: .normal)
button.setTitleColor(UIColor.lightGray, for: .disabled)
button.setTitleColor(UIColor.white, for: .highlighted)
button.setTitle("✓", for: .normal)
button.setTitleColor(.green, for: .normal)
button.titleLabel?.font =  UIFont.systemFont(
	ofSize: myDefaultTextFontSize,
	weight: .light)
button.addTarget(
	self,
	action: #selector(buttonTapped),
	for: .touchUpInside)

view.addSubview(button)

// MARK: - CheckMark Button Action
@objc func buttonTapped(_ sender: UIButton) {
	isChecked = !isChecked
	if isChecked {
		sender.setTitle("✓", for: .normal)
		sender.setTitleColor(.green, for: .normal)
	} else {
		sender.setTitle("X", for: .normal)
		sender.setTitleColor(.red, for: .normal)
	}
}