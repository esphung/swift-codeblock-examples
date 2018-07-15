public class DataViewController : UIViewController, IUITableViewDataSource, IUITableViewDelegate
{
    public override void ViewDidLoad ()
    {
         base.ViewDidLoad ();
         //...
         this.DataTableView.WeakDataSource = this; //Make sure to use WeakDataSource instead of DataSource
    }

    public override int RowsInSection (UITableView tableview, int section){

    }

    public override UITableViewCell GetCell (UITableView tableView, NSIndexPath indexPath)
    {
        //GetCell code
    }
}