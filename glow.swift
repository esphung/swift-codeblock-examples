
let vw = UIView(frame: CGRect(x: 100, y: 100, width: 128, height: 128))

vw.backgroundColor = .white

vw.layer.shadowOffset = .zero
vw.layer.shadowColor = UIColor.yellow.cgColor
vw.layer.shadowRadius = 20
vw.layer.shadowOpacity = 1
vw.layer.shadowPath = UIBezierPath(rect: vw.bounds).cgPath

view.addSubview(vw)
view.sendSubview(toBack: vw)

view.backgroundColor = .black