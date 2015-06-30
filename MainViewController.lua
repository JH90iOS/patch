waxClass{"MainViewController", UITableViewController}

function tableView_cellForRowAtIndexPath(self, tableView, indexPath)
	local cell = self:ORIGtableView_cellForRowAtIndexPath(tableView, indexPath)
	cell:textLabel():setText("" .. (10 - indexPath:row()))
	cell:detailTextLabel():setText("http://github.com/mmin18")
	cell:textLabel():setTextColor(UIColor:redColor())

	local view = UIView:initWithFrame(CGRect(50,0,100,20))
	view:setBackgroundColor(UIColor:yellowColor())
	cell:addSubview(view)
	return cell
end

function tableView_numberOfRowsInSection(self,tableView,section)
	return 4

end