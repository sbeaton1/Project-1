//
//  ViewController.swift
//  Product 1 Fix
//
//  Created by Shawana Beaton on 10/26/22.
//  Copyright © 2022 com.example. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    var pictures = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let fm = FileManager.default
        let path = Bundle.main.resourcePath!
        let items = try! fm.contentsOfDirectory(atPath: path)
        
        for item in items {
            if item.hasPrefix("nssl") {
                // this is a picture to load!
                pictures.append(item)
        }

        print(pictures)
            
        }
        
        override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return pictures.count
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath:
            IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "Picture", for:
            indexPath)
            cell.textLabel?.text = pictures[indexPath.row]
            return cell
        }
    }
}
