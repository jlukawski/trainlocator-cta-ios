//
//  DataDecoder.swift
//  JLUKAWSK Final
//
//  Created by Jake Lukawski on 8/07/20.
//  Copyright © 2020 Jake Lukawski. All rights reserved.
//

import Foundation

public class DataDecoder {
    var arrivalData = Root()
    let key: String = "" //see https://www.transitchicago.com/developers/traintracker/

    init(mapid: Int){
        load(mapid: mapid) //station ID from DetailViewController
    }
    
    func load(mapid: Int){
        let urlString: String = "https://lapi.transitchicago.com/api/1.0/ttarrivals.aspx?key="+key+"&mapid="+"\(mapid)"+"&outputType=JSON"
        if let url = URL(string: urlString) {
                URLSession.shared.dataTask(with: url) { data, response, error in
            if let data = data {
                let jsonDecoder = JSONDecoder()
                do {
                    let parsedJSON = try jsonDecoder.decode(Root.self, from: data)
                    self.arrivalData = parsedJSON
                }catch {
                    print("Something went wrong with parsing: ", error)
                }
            }
           }.resume()
        }
        do {sleep(1)} //TODO: add semaphores
    }
}

