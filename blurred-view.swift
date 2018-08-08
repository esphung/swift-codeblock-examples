let blurEffect = UIBlurEffect(style: UIBlurEffectStyle.dark)
let blurEffectView = UIVisualEffectView(effect: blurEffect)
blurEffectView.frame = view.bounds
blurEffectView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
view.addSubview(blurEffectView)