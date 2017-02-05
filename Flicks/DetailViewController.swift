//
//  DetailViewController.swift
//  Flicks
//
//  Created by Kausthub Poondi on 2/4/17.
//  Copyright © 2017 Kausthub Poondi. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var overviewLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var posterImageView: UIImageView!
    
    var movie : NSDictionary!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let title = movie["title"] as? String
        titleLabel.text = title
        
        let overview = movie["overview"] as? String
        overviewLabel.text = overview
        
        let baseURL = "https://image.tmdb.org/t/p/w500"
        
        
        if let posterPath = movie["poster_path"] as? String {
            let finalURL = URL(string: baseURL + posterPath)
            posterImageView.setImageWith(finalURL!)
            
        }

        print(movie)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
