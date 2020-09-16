//
//  CarVC.swift
//  Tabel View swift4
//
//  Created by Gunjan  Paul on 15/09/20.
//  Copyright © 2020 Gunjan  Paul. All rights reserved.
//

import UIKit

class CarVC: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var car:[Car] = []
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        car = createArray()
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func createArray()->[Car] {
        var tempCar: [Car] = []
        tempCar.append(Car(img: #imageLiteral(resourceName: "ducati v4"), title: "this is my red ducati v4"))
         tempCar.append(Car(img: #imageLiteral(resourceName: "medcedes cla"), title: "this is my mercedes cla"))
         tempCar.append(Car(img: #imageLiteral(resourceName: "Audi Q3 Sportback"), title: "this is my audi q3 sportsback"))
         tempCar.append(Car(img: #imageLiteral(resourceName: "BMW-M5"), title: "this is my bmw m5"))
         tempCar.append(Car(img: #imageLiteral(resourceName: "ducati v4"), title: "this is my red ducati v4"))
         tempCar.append(Car(img: #imageLiteral(resourceName: "medcedes cla"), title: "this is my mercedes cla"))
         tempCar.append(Car(img: #imageLiteral(resourceName: "Audi Q3 Sportback"), title: "this is my audi q3 sportsback"))
         tempCar.append(Car(img: #imageLiteral(resourceName: "BMW-M5"), title: "this is my bmw m5"))
         
         tempCar.append(Car(img: #imageLiteral(resourceName: "ducati v4"), title: "this is my red ducati v4"))
         tempCar.append(Car(img: #imageLiteral(resourceName: "medcedes cla"), title: "this is my mercedes cla"))
         tempCar.append(Car(img: #imageLiteral(resourceName: "Audi Q3 Sportback"), title: "this is my audi q3 sportsback"))
         tempCar.append(Car(img: #imageLiteral(resourceName: "BMW-M5"), title: "this is my bmw m5"))
         
         tempCar.append(Car(img: #imageLiteral(resourceName: "ducati v4"), title: "this is my red ducati v4"))
         tempCar.append(Car(img: #imageLiteral(resourceName: "medcedes cla"), title: "this is my mercedes cla"))
         tempCar.append(Car(img: #imageLiteral(resourceName: "Audi Q3 Sportback"), title: "this is my audi q3 sportsback"))
         tempCar.append(Car(img: #imageLiteral(resourceName: "BMW-M5"), title: "this is my bmw m5"))
         
         tempCar.append(Car(img: #imageLiteral(resourceName: "ducati v4"), title: "this is my red ducati v4"))
         tempCar.append(Car(img: #imageLiteral(resourceName: "medcedes cla"), title: "this is my mercedes cla"))
         tempCar.append(Car(img: #imageLiteral(resourceName: "Audi Q3 Sportback"), title: "this is my audi q3 sportsback"))
         tempCar.append(Car(img: #imageLiteral(resourceName: "BMW-M5"), title: "this is my bmw m5"))
         
         tempCar.append(Car(img: #imageLiteral(resourceName: "ducati v4"), title: "this is my red ducati v4"))
         tempCar.append(Car(img: #imageLiteral(resourceName: "medcedes cla"), title: "this is my mercedes cla"))
         tempCar.append(Car(img: #imageLiteral(resourceName: "Audi Q3 Sportback"), title: "this is my audi q3 sportsback"))
         tempCar.append(Car(img: #imageLiteral(resourceName: "BMW-M5"), title: "this is my bmw m5"))
         
        
        tempCar.append(Car(img: #imageLiteral(resourceName: "ducati v4"), title: "this is my red ducati v4"))
        tempCar.append(Car(img: #imageLiteral(resourceName: "medcedes cla"), title: "this is my mercedes cla"))
        tempCar.append(Car(img: #imageLiteral(resourceName: "Audi Q3 Sportback"), title: "this is my audi q3 sportsback"))
        tempCar.append(Car(img: #imageLiteral(resourceName: "BMW-M5"), title: "this is my bmw m5"))
        tempCar.append(Car(img: #imageLiteral(resourceName: "ducati v4"), title: "this is my red ducati v4"))
        tempCar.append(Car(img: #imageLiteral(resourceName: "medcedes cla"), title: "this is my mercedes cla"))
        tempCar.append(Car(img: #imageLiteral(resourceName: "Audi Q3 Sportback"), title: "this is my audi q3 sportsback"))
        tempCar.append(Car(img: #imageLiteral(resourceName: "BMW-M5"), title: "this is my bmw m5"))
        
        tempCar.append(Car(img: #imageLiteral(resourceName: "ducati v4"), title: "this is my red ducati v4"))
        tempCar.append(Car(img: #imageLiteral(resourceName: "medcedes cla"), title: "this is my mercedes cla"))
        tempCar.append(Car(img: #imageLiteral(resourceName: "Audi Q3 Sportback"), title: "this is my audi q3 sportsback"))
        tempCar.append(Car(img: #imageLiteral(resourceName: "BMW-M5"), title: "this is my bmw m5"))
        
        tempCar.append(Car(img: #imageLiteral(resourceName: "ducati v4"), title: "this is my red ducati v4"))
        tempCar.append(Car(img: #imageLiteral(resourceName: "medcedes cla"), title: "this is my mercedes cla"))
        tempCar.append(Car(img: #imageLiteral(resourceName: "Audi Q3 Sportback"), title: "this is my audi q3 sportsback"))
        tempCar.append(Car(img: #imageLiteral(resourceName: "BMW-M5"), title: "this is my bmw m5"))
        
        tempCar.append(Car(img: #imageLiteral(resourceName: "ducati v4"), title: "this is my red ducati v4"))
        tempCar.append(Car(img: #imageLiteral(resourceName: "medcedes cla"), title: "this is my mercedes cla"))
        tempCar.append(Car(img: #imageLiteral(resourceName: "Audi Q3 Sportback"), title: "this is my audi q3 sportsback"))
        tempCar.append(Car(img: #imageLiteral(resourceName: "BMW-M5"), title: "this is my bmw m5"))
        
        tempCar.append(Car(img: #imageLiteral(resourceName: "ducati v4"), title: "this is my red ducati v4"))
        tempCar.append(Car(img: #imageLiteral(resourceName: "medcedes cla"), title: "this is my mercedes cla"))
        tempCar.append(Car(img: #imageLiteral(resourceName: "Audi Q3 Sportback"), title: "this is my audi q3 sportsback"))
        tempCar.append(Car(img: #imageLiteral(resourceName: "BMW-M5"), title: "this is my bmw m5"))
        
        return tempCar
    }
}



extension CarVC: UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        car.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let c = car[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "carCell") as! CarCell
        
        cell.setCar(c)
        return cell
    }
    
    
}
