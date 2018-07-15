var sampleTextField: UILabel!  


sampleTextField = UITextField(frame: CGRect(x: 20, y: 100, width: 300, height: 40))
sampleTextField.placeholder = "Enter text here"
sampleTextField.font = UIFont.systemFont(ofSize: 15)
sampleTextField.borderStyle = UITextField.BorderStyle.roundedRect
sampleTextField.autocorrectionType = UITextAutocorrectionType.no
sampleTextField.keyboardType = UIKeyboardType.default
sampleTextField.returnKeyType = UIReturnKeyType.done
sampleTextField.clearButtonMode = UITextField.ViewMode.whileEditing;
sampleTextField.contentVerticalAlignment = UIControl.ContentVerticalAlignment.center
//sampleTextField.delegate = self
self.view.addSubview(sampleTextField)
// Do any additional setup after loading the view, typically from a nib.




let label = UILabel(frame: CGRect(x:0,y: 0,width: 200,height: 21))
label.center = CGPoint(x:160,y: 284)
label.textAlignment = .center
label.text = "I'am a test label"
self.view.addSubview(label)