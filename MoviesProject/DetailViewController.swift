//
//  DetailViewController.swift
//  MoviesProject
//
//  Created by ozlem on 29.03.2023.
//

import UIKit

class DetailViewController: UIViewController {


    @IBOutlet var movieSynopsis: UITextView!
    @IBOutlet var movieIMDb: UILabel!
    @IBOutlet var movieTime: UILabel!
    @IBOutlet var movieName: UILabel!
    @IBOutlet var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        self.tabBarController?.tabBar.isHidden = false
                self.imageView.image = UIImage(named: "p1.png")
                self.movieName.text = "Star Wars: The Last Jedi"
                self.movieTime.text = "152 minutes"
                self.movieIMDb.text = "7.0 (IMDb)"
                self.movieSynopsis.text = "Rey (Daisy Ridley) finally manages to find the legendary Jedi knight, Luke Skywalker (Mark Hamill) on an island with a magical aura. The heroes of The Force Awakens including Leia, FinnRey (Daisy Ridley) finally manages to find the legendary Jedi knight, Luke Skywalker (Mark Hamill) on an island with a magical aura."
    }
    
    

    

}
