//
//  FavoriteTableViewCell.swift
//  MoviesProject
//
//  Created by ozlem on 3.05.2023.
//

import UIKit

class FavoriteTableViewCell: UITableViewCell {

    @IBOutlet var favoriteName: UILabel!
    @IBOutlet var favoriteImage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
