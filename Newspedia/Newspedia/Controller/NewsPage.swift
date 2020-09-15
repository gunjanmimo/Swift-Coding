//
//  NewsPage.swift
//  Newspedia
//
//  Created by Gunjan  Paul on 14/09/20.
//  Copyright © 2020 Gunjan  Paul. All rights reserved.
//

import UIKit

class NewsPage: UIViewController {
    
    
    var newsManager = NewsManager()
    //search bar
    
    @IBOutlet weak var searchBar: UISearchBar!
    // bottom icon bar
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
    //    buttom bar icon function
    
    
    @IBAction func trending(_ sender: UIButton) {
        let passingQuery = "&country=in"
        newsManager.fetchNews(passingQuery)
    }
    
    
    @IBAction func tech(_ sender: UIButton) {
        let passingQuery = "&q=tech"
        newsManager.fetchNews(passingQuery)    }
    
    
    @IBAction func business(_ sender: UIButton) {
        let passingQuery =  "&category=business"
            newsManager.fetchNews(passingQuery)
    }
    
    
    
    @IBAction func travel(_ sender: UIButton) {
        let passingQuery = "&q=travel"
      newsManager.fetchNews(passingQuery)
    }
    
    
    @IBAction func lifeStyle(_ sender: UIButton) {
        let passingQuery = "&q=life"
      newsManager.fetchNews(passingQuery)
    }
    
    

    
}
