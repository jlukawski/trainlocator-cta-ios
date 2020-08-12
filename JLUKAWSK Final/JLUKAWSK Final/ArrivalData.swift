//
//  ArrivalData.swift
//  JLUKAWSK Final
//
//  Created by Jake Lukawski on 8/11/20.
//  Copyright © 2020 Jake Lukawski. All rights reserved.
//

import Foundation

//API documentation and variable definitions: https://www.transitchicago.com/developers/ttdocs/

struct Root:Codable{
    init?() {
        return nil
    }
    enum CodingKeys : String, CodingKey { case ctatt = "ctatt" }
    let ctatt : Ctatt
}

struct Ctatt:Codable{
    enum CodingKeys : String, CodingKey {
        case timestamp = "tmst"
        case errorCode = "errCd"
        case errorNumber = "errNm"
        case eta = "eta"
    }
    var timestamp: String
    var errorCode: String
    var errorNumber: String?
    let eta : [Eta]
}

struct Eta:Codable{
    enum CodingKeys : String, CodingKey {
        
        case stationID = "staId"
        case stopID = "stpId"
        case stationName = "staNm"
        case platformDescription = "stpDe"
        case run = "rn"
        case route = "rt"
        case destinationID = "destSt"
        case destinationName = "destNm"
        case serviceDirection = "trDr"
        case predictionLastUpdated = "prdt"
        case predictedArrivalTime = "arrT"
        case isApproaching = "isApp"
        case isScheduled = "isSch"
        case isDelayed = "isDly"
        case departedLate = "isFlt"
        case flags = "flags"
        case currentLatitude = "lat"
        case currentLongitude = "lon"
        case currentDirection = "heading"
    }
    var stationID: String
    var stopID: String
    var stationName: String
    var platformDescription: String
    var run: String
    var route: String
    var destinationID: String
    var destinationName: String
    var serviceDirection: String
    var predictionLastUpdated: String
    var predictedArrivalTime: String
    var isApproaching: String
    var isScheduled: String
    var isDelayed: String
    var departedLate: String
    var flags: String?
    var currentLatitude: String?
    var currentLongitude: String?
    var currentDirection: String?

}
