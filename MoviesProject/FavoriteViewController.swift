//
//  FavoriteViewController.swift
//  MoviesProject
//
//  Created by ozlem on 3.05.2023.
//

import UIKit

import UIKit

class FavoriteViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet var tableView: UITableView!
    var favoriteMovies = [[String: Any]]()
    let defaults = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
            super.viewWillAppear(animated)
     
            if let savedFavoriteMovies = defaults.array(forKey: "favoriteMovie") as? [[String: Any]] {
                favoriteMovies = savedFavoriteMovies
            }
          
            tableView.reloadData()
        }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return UserDefaults.standard.array(forKey: "favoriteMovie")?.count ?? 0
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! FavoriteTableViewCell
        
        
        let favoriteMovie = favoriteMovies[indexPath.row]
        cell.favoriteName.text = favoriteMovie["name"] as? String
        if let imageData = favoriteMovie["image"] as? Data {
            cell.favoriteImage.image = UIImage(data: imageData)
        }
        
        return cell
    }
}
