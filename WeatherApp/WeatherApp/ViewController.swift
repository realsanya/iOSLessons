//
//  ViewController.swift
//  WeatherApp
//
//  Created by Student 6 on 02/09/2020.
//  Copyright © 2020 Student 6. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var searchBar: UISearchBar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        searchBar.delegate = self
    }
}

extension ViewController: UISearchBarDelegate{
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        let urlString = "http://api.apixu.com/v1/current.json?key=2fcbca7114dd43fb82e144949180601&q=\(searchBar.text!)"
        let url = URL.init(string: urlString)
        let task = URLSession.shared.dataTask(with: url!) { (data, response, error) in
            
        }
        task.resume()
    }
}

