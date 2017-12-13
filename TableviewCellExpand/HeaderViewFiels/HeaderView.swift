//
//  HeaderView.swift
//  TableviewCellExpand
//
//  Created by verareddy on 12/13/17.
//  Copyright © 2017 Netberry. All rights reserved.
//

import UIKit

protocol ExpandableHeaderViewDelegate {
    func toggleSection(header: HeaderView, section: Int)
}
class HeaderView: UITableViewHeaderFooterView {
    @IBOutlet weak var nameLabel: UILabel!

    var delegate: ExpandableHeaderViewDelegate?
    var section: Int!
    
    override func awakeFromNib (){
       
        self.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(selectHeaderAction)))
    }
    
    
    func selectHeaderAction(gestureRecognizer: UITapGestureRecognizer) {
        let cell = gestureRecognizer.view as! HeaderView
        delegate?.toggleSection(header: self, section: cell.section)
    }
    func customInit(title: String, section: Int, delegate: ExpandableHeaderViewDelegate) {
        self.nameLabel.text = title
        self.section = section
        self.delegate = delegate
    }
    override func layoutSubviews() {
        super.layoutSubviews()

    }

}
