//
//  UserDataViewDemoCell.swift
//  MockProject
//
//  Created by sypatra on 19/12/22.
//

import UIKit

class UserDataViewDemoCell: UITableViewCell {

     var imageURL : String?
    
    @IBOutlet weak var name: UILabel!
    
    @IBOutlet weak var imageview: UIImageView!
    
    @IBOutlet weak var agency: UILabel!
    
    func configureWith(userdata: UserData) {
       
        self.imageURL = userdata.image
        self.name.text = userdata.name
        self.agency.text = userdata.agency
        if let url = self.imageURL {
            self.imageview.loadImageFromUrl(urlString: url  as NSString)
        }
        
    }

    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
