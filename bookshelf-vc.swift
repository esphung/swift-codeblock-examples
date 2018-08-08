import ShelfView

class ViewController: UIViewController, ShelfViewDelegate {
	
	var shelfView:ShelfView!
	var bookModel = [BookModel] ()
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		shelfView = ShelfView(frame: CGRect(x: 0, y: 0, width: 375, height: 647))
		bookModel.append(
			BookModel.init(bookCoverSource: "http://www.aidanf.net/images/learn-swift/cover-web.png",
						   bookId: "0",
						   bookTitle: "Learn Swift"))
		
		shelfView.loadData(bookModel: bookModel,
						   bookSource: ShelfView.BOOK_SOURCE_URL)
		
		shelfView.delegate = self
		self.view.addSubview(shelfView)
	}
	
	func onBookClicked(_ shelfView: ShelfView, position: Int, bookId: String, bookTitle: String) {
		print("I just clicked \(bookTitle) with bookId \(bookId) @ position \(position)")
	}
	
}
