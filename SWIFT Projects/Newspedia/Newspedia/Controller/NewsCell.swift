//
//  NewsCell.swift
//  Newspedia
//
//  Created by Gunjan  Paul on 15/09/20.
//  Copyright © 2020 Gunjan  Paul. All rights reserved.
//

import UIKit

class NewsCell: UITableViewCell {

// cell component
    @IBOutlet weak var imageField: UIImageView!
    @IBOutlet weak var newsHeading: UILabel!
    @IBOutlet weak var newsContent: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    func setNews(_ news:News)  {
        newsHeading.text = news.heading
        newsContent.text = news.content
        imageField.load(url: news.imgURL)
    }
}
extension UIImageView {
    func load(url: URL) {
        DispatchQueue.global().async { [weak self] in
            if let data = try? Data(contentsOf: url) {
                if let image = UIImage(data: data) {
                    DispatchQueue.main.async {
                        self?.image = image
                    }
                }
            }
        }
    }
}
