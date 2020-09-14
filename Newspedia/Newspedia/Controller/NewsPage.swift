//
//  NewsPage.swift
//  Newspedia
//
//  Created by Gunjan  Paul on 14/09/20.
//  Copyright © 2020 Gunjan  Paul. All rights reserved.
//

import UIKit

class NewsPage: UIViewController {

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
        let passingQuery = "&category=business"
    }
    
    
    @IBAction func tech(_ sender: Any) {
         let passingQuery = "&q=tech"
    }
    
    
    @IBAction func business(_ sender: Any) {
         let passingQuery =  "&category=business"
    }
    
    
    
    @IBAction func travel(_ sender: Any) {
          let passingQuery = "&q=travel"
    }
    
    
    @IBAction func lifeStyle(_ sender: Any) {
         let passingQuery = "&q=life"
    }
    
    
}
