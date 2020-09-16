//
//  DataModel.swift
//  Covid Tracker
//
//  Created by Gunjan  Paul on 09/09/20.
//  Copyright © 2020 Gunjan  Paul. All rights reserved.
//

import Foundation

struct CovidData: Codable {
    let country: String
    let cases: Int
    let todayCases: Int
    let deaths: Int
    let todayDeaths: Int
    let recovered:Int
    let active:Int
    let critical:Int
    let casesPerOneMillion: Int
    let deathsPerOneMillion:Int
    let totalTests: Int
    let testsPerOneMillion:Int
}
