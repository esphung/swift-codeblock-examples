// MARK: - LEFT TO RIGHT TRANSITION
let transition = CATransition()
transition.duration = 0.5
transition.type = kCATransitionPush
transition.subtype = kCATransitionFromRight
transition.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionDefault)
self.view.window?.layer.add(transition, forKey: kCATransition)
//present(dashboardWorkout, animated: false, completion: nil)

