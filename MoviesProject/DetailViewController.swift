//
//  DetailViewController.swift
//  MoviesProject
//
//  Created by ozlem on 29.03.2023.
//

import UIKit

class DetailViewController: UIViewController {
    
    
    @IBOutlet private var movieSynopsis: UITextView!
    @IBOutlet private var movieIMDb: UILabel!
    @IBOutlet private var movieTime: UILabel!
    @IBOutlet private var movieName: UILabel!
    @IBOutlet private var movieImageView: UIImageView!
    @IBOutlet var favoriteButton: UIButton!
    var isClicked = true
    
    var favoriteMovie = [String : Any]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tabBarController?.tabBar.isHidden = false
        self.movieImageView.image = UIImage(named: "p1.png")
        self.movieName.text = "Star Wars: The Last Jedi"
        self.movieTime.text = "152 minutes"
        self.movieIMDb.text = "7.0 (IMDb)"
        self.movieSynopsis.text = "Rey (Daisy Ridley) finally manages to find the legendary Jedi knight, Luke Skywalker (Mark Hamill) on an island with a magical aura. The heroes of The Force Awakens including Leia, FinnRey (Daisy Ridley) finally manages to find the legendary Jedi knight, Luke Skywalker (Mark Hamill) on an island with a magical aura."
    }
    
    
    @IBAction func clickedButton(_ sender: Any) {
        let defaults = UserDefaults.standard
        
        
        if isClicked{
            if let movieName = movieName.text, let movieImage = movieImageView.image, let movieImageData = movieImage.pngData() {
                favoriteMovie["name"] = movieName
                favoriteMovie["image"] = movieImageData
                defaults.set(favoriteMovie, forKey: "favoriteMovie")
                favoriteButton.setImage(UIImage(systemName: "heart.fill"), for: .normal)
            }
            
        } else {
            defaults.removeObject(forKey: "favoriteMovie")
            favoriteButton.setImage(UIImage(systemName: "heart"), for: .normal)
        }
        
        isClicked = !isClicked
        
    }
}
