//
//  ListTableViewCell.swift
//  WordList
//
//  Created by Rimika Inoguchi on 2018/04/13.
//  Copyright © 2018年 Rimika Inoguchi. All rights reserved.
//

import UIKit

class ListTableViewCell: UITableViewCell {
    
    
    @IBOutlet var englishLabel: UILabel!
    @IBOutlet var japaneseLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}

