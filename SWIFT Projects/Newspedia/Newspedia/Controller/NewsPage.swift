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
    var news:[News] = []
    var nData:NewsData?
    //search bar
    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
         nData = newsManager.fetchNews("&q=tech")
        news = creteNewsArray()
        tableView.delegate  = self
        tableView.dataSource = self
        self.tableView.separatorStyle = UITableViewCell.SeparatorStyle.none
        
    }
    func creteNewsArray() -> [News]{
        var newsArr: [News] = []
        
    if   let nl = nData{
        for  i in 0...5{
            
                newsArr.append(News(imgURL: URL(string: nl.articles[i].urlToImage!)!, heading: nl.articles[i].title, content: nl.articles[i].articleDescription!))
            }
            
        }
    else{
        newsArr.append(News(imgURL: URL(string: "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTHJTnwaS-YjGL59BMjPuyS0oLdgcqvvVV_xQ&usqp=CAU")!, heading: "No news Availabe", content: "No releated news. something wrong with NewsPedia"))
        }
        
        return newsArr
    }
    
    
    @IBAction func trending(_ sender: UIButton) {
        let passingQuery = "&country=in"
        nData = newsManager.fetchNews(passingQuery)
    }
    
    
    @IBAction func tech(_ sender: UIButton) {
        let passingQuery = "&q=tech"
        nData =  newsManager.fetchNews(passingQuery)    }
    
    
    @IBAction func business(_ sender: UIButton) {
        let passingQuery =  "&category=business"
        nData = newsManager.fetchNews(passingQuery)
    }
    
    
    
    @IBAction func travel(_ sender: UIButton) {
        let passingQuery = "&q=travel"
        nData = newsManager.fetchNews(passingQuery)
    }
    
    
    @IBAction func lifeStyle(_ sender: UIButton) {
        let passingQuery = "&q=life"
        nData = newsManager.fetchNews(passingQuery)
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
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 50
    }
}
