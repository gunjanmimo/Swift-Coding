//
//  NewsPage.swift
//  Newspedia
//
//  Created by Gunjan  Paul on 14/09/20.
//  Copyright © 2020 Gunjan  Paul. All rights reserved.
//

import UIKit

class NewsPage: UIViewController {
    
    
    var newsManager = NewsDataManager()
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
    
    
    @IBAction func trending(_ sender: Any) {
        let passingQuery = "&country=in"
        //print(passingQuery)
        newsManager.fetch(passingQuery)
    }
    
    
    @IBAction func tech(_ sender: Any) {
        let passingQuery = "&q=tech"
        //print(passingQuery)
        newsManager.fetch(passingQuery)
    }
    
    
    @IBAction func business(_ sender: Any) {
        let passingQuery =  "&category=business"
        //print(passingQuery)
        newsManager.fetch(passingQuery)
    }
    
    
    
    @IBAction func travel(_ sender: Any) {
        let passingQuery = "&q=travel"
        //print(passingQuery)
        newsManager.fetch(passingQuery)
    }
    
    
    @IBAction func lifeStyle(_ sender: Any) {
        let passingQuery = "&q=life"
        //print(passingQuery)
        newsManager.fetch(passingQuery)
    }
    
    
}
