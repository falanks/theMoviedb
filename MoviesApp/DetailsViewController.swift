//
//  DetailsViewController.swift
//  MoviesApp
//
//  Created by Muhammed Sağlam on 28.10.2022.
//

import UIKit

class DetailsViewController: UIViewController {

    @IBOutlet var image: UIImageView!
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var categoryLabel: UILabel!
    @IBOutlet var durationLabel: UILabel!
    @IBOutlet var ratingLabel: UILabel!
    @IBOutlet var summaryLabel: UITextView!
    
    var selectedMovie: Movie!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        image.image = UIImage(named: selectedMovie.imageWide)
        titleLabel.text = selectedMovie.title
        ratingLabel.text = "\(selectedMovie.rating)/10"
        summaryLabel.text = selectedMovie.summary
        durationLabel.text = selectedMovie.duration
        categoryLabel.text = selectedMovie.categoriesDescription
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
