//
//  MovieTableViewCell.swift
//  MoviesApp
//
//  Created by Muhammed Sağlam on 28.10.2022.
//

import UIKit

class MovieTableViewCell: UITableViewCell {

    @IBOutlet var imgPoster: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var summaryLabel: UILabel!
    @IBOutlet weak var ratingLabel: UILabel!
    @IBOutlet weak var categoryLabel: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func prepare(movie: Movie) {
        imgPoster.image = UIImage(named: movie.imageSmall)
        titleLabel.text = movie.title
        summaryLabel.text = movie.summary
        ratingLabel.text = "\(movie.rating)/10"
        categoryLabel.text = movie.categoriesDescription
    }

}
