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
    var news:[News] = []
    
    
    @IBOutlet weak var tableView: UITableView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        news = creteNewsArray()
        tableView.delegate  = self
        tableView.dataSource = self
        self.tableView.separatorStyle = UITableViewCell.SeparatorStyle.none
    }
    
    
    func creteNewsArray() -> [News]{
        var newsArr: [News] = []
        newsArr.append(News(imgURL: URL(string: "https://www.prnewswire.com/content/dam/prnewswire/common/prn_facebook_sharing_logo.jpg")!,heading: "Glen Oaks Escrow Announces It Assisted With Yet Another Bitcoin Transaction",content: "ENCINITAS, Calif., Sept. 16, 2020 /PRNewswire/ -- Glen Oaks Escrow, one of Southern California's largest independent escrow companies, recently announced that it closed its second Bitcoin transaction. The organization shared that the homebuyer contacted the G…"))
        
                newsArr.append(News(imgURL: URL(string: "https://www.prnewswire.com/content/dam/prnewswire/common/prn_facebook_sharing_logo.jpg")!,heading: "Glen Oaks Escrow Announces It Assisted With Yet Another Bitcoin Transaction",content: "ENCINITAS, Calif., Sept. 16, 2020 /PRNewswire/ -- Glen Oaks Escrow, one of Southern California's largest independent escrow companies, recently announced that it closed its second Bitcoin transaction. The organization shared that the homebuyer contacted the G…"))
                newsArr.append(News(imgURL: URL(string: "https://www.prnewswire.com/content/dam/prnewswire/common/prn_facebook_sharing_logo.jpg")!,heading: "Glen Oaks Escrow Announces It Assisted With Yet Another Bitcoin Transaction",content: "ENCINITAS, Calif., Sept. 16, 2020 /PRNewswire/ -- Glen Oaks Escrow, one of Southern California's largest independent escrow companies, recently announced that it closed its second Bitcoin transaction. The organization shared that the homebuyer contacted the G…"))
        
        return newsArr
    }
    
    
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


extension NewsPage:UITableViewDelegate, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        news.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let n = news[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "newsCell") as! NewsCell
        cell.setNews(n)
        return cell
    }
    
    
}
