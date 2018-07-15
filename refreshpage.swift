
self.refreshControl = UIRefreshControl()
self.refreshControl?.attributedTitle = NSAttributedString(string: "Pull to refresh")
self.refreshControl?.addTarget(self, action: #selector(refresh), for: UIControl.Event.valueChanged)

self.tableView.addSubview(self.refreshControl!)



	@objc func refresh() {
		//  do stuff to refresh page
		self.refreshControl?.endRefreshing()
	}
	