//
//  ViewController.swift
//  MoviesProject
//
//  Created by ozlem on 29.03.2023.
//

import UIKit

class HomePageViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.tabBarController?.tabBar.isHidden = false
    }

    @IBAction func button(_ sender: Any) {
        performSegue(withIdentifier: "toDetailVC", sender: nil)
    }
    
}

