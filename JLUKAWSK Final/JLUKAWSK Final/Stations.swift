//
//  Stations.swift
//  JLUKAWSK Final
//
//  Created by Jake Lukawski on 3/15/20.
//  Copyright © 2020 Jake Lukawski. All rights reserved.
//

import Foundation

var stations = [
    Station(name: "18th", type: .pink, id: 40830, latitude: 41.857908, longitude: -87.669147, distance: 0),
    Station(name: "35th-Bronzeville-IIT", type: .green, id: 41120, latitude: 41.831677, longitude: -87.625826, distance: 0),
    Station(name: "35th/Archer", type: .orange, id: 40120, latitude: 41.829353, longitude: -87.680622, distance: 0),
    Station(name: "43rd", type: .green, id: 41270, latitude: 41.816462, longitude: -87.619021, distance: 0),
    Station(name: "47th", type: .green, id: 41080, latitude: 41.809209, longitude: -87.618826, distance: 0),
    Station(name: "47th", type: .red, id: 41230, latitude: 41.810318, longitude: -87.63094, distance: 0),
    Station(name: "51st", type: .green, id: 41080, latitude: 41.809209, longitude: -87.618826, distance: 0),
    Station(name: "54th/Cermak", type: .pink, id: 40580, latitude: 41.85177331, longitude: -87.75669201, distance: 0),
    Station(name: "63rd", type: .red, id: 40910, latitude: 41.780536, longitude: -87.630952, distance: 0),
    Station(name: "69th", type: .red, id: 40990, latitude: 41.768367, longitude: -87.625724, distance: 0),
    Station(name: "79th", type: .red, id: 40240, latitude: 41.750419, longitude: -87.625112, distance: 0),
    Station(name: "87th", type: .red, id: 41430, latitude: 41.735372, longitude: -87.624717, distance: 0),
    Station(name: "95th/Dan Ryan", type: .red, id: 40450, latitude: 41.722377, longitude: -87.624342, distance: 0),
    Station(name: "Adams/Wabash", type: .orangegreenpinkpurplebrown, id: 40680, latitude: 41.879507, longitude:  -87.626037, distance: 0),
    Station(name: "Addison", type: .blue, id: 41240, latitude: 41.94738, longitude: -87.71906, distance: 0),
    Station(name: "Addison", type: .brown, id: 41440, latitude: 41.947028, longitude: -87.674642, distance: 0),
    Station(name: "Addison", type: .red, id: 41420, latitude: 41.947428, longitude: -87.653626, distance: 0),
    Station(name: "Argyle", type: .red, id: 41200, latitude: 41.973453, longitude: -87.65853, distance: 0),
    Station(name: "Armitage", type: .brownpurple, id: 40660, latitude: 41.918217, longitude: -87.652644, distance: 0),
    Station(name: "Ashland", type: .greenpink, id: 40170, latitude: 41.885269, longitude: -87.666969, distance: 0),
    Station(name: "Ashland", type: .orange, id: 40160, latitude: 41.839234, longitude: -87.665317, distance: 0),
    Station(name: "Ashland/63rd", type: .green, id: 40290, latitude: 41.77886, longitude: -87.663766, distance: 0),
    Station(name: "Austin", type: .blue, id: 40010, latitude: 41.870851, longitude: -87.776812, distance: 0),
    Station(name: "Austin", type: .green, id: 41260, latitude: 41.887293, longitude: -87.774135, distance: 0),
    Station(name: "Belmont", type: .blue, id: 40060, latitude: 41.938132, longitude: -87.712359, distance: 0),
    Station(name: "Belmont", type: .redpurplebrown, id: 41320, latitude: 41.939751, longitude: -87.65338, distance: 0),
    Station(name: "Berwyn", type: .red, id: 40340, latitude: 41.977984, longitude: -87.658668, distance: 0),
    Station(name: "Bryn Mawr", type: .red, id: 41380, latitude: 41.983504, longitude: -87.65884, distance: 0),
    Station(name: "California", type: .blue, id: 40570, latitude: 41.921939, longitude: -87.69689, distance: 0),
    Station(name: "California", type: .pink, id: 40440, latitude: 41.854109, longitude: -87.694774, distance: 0),
    Station(name: "California", type: .green, id: 41360, latitude: 41.88422, longitude: -87.696234, distance: 0),
    Station(name: "Central", type: .green, id: 40280, latitude: 41.887389, longitude: -87.76565, distance: 0),
    Station(name: "Central Park", type: .pink, id: 40780, latitude: 41.853839, longitude: -87.714842, distance: 0),
    Station(name: "Cermak-Chinatown", type: .red, id: 41000, latitude: 41.853206, longitude: -87.630968, distance: 0),
    Station(name: "Cermak-McCormick Place", type: .green, id: 41690, latitude: 41.853115, longitude: -87.626402, distance: 0),
    Station(name: "Chicago", type: .blue, id: 41410, latitude: 41.896075, longitude: -87.655214, distance: 0),
    Station(name: "Chicago", type: .brownpurple, id: 40710, latitude: 41.89681, longitude: -87.635924, distance: 0),
    Station(name: "Chicago", type: .red, id: 41450, latitude: 41.896671, longitude: -87.628176, distance: 0),
    Station(name: "Central", type: .purple, id: 41250, latitude: 42.063987, longitude: -87.685617, distance: 0),
    Station(name: "Cicero", type: .pink, id: 40420, latitude: 41.85182, longitude: -87.745336, distance: 0),
    Station(name: "Cicero", type: .blue, id: 40970, latitude: 41.871574, longitude: -87.745154, distance: 0),
    Station(name: "Cicero", type: .green, id: 40480, latitude: 41.886519, longitude: -87.744698, distance: 0),
    Station(name: "Clark/Division", type: .red, id: 40630, latitude: 41.90392, longitude: -87.631412, distance: 0),
    Station(name: "Clark/Lake", type: .orangegreenbluepinkpurplebrown, id: 40380, latitude: 41.885737, longitude: -87.630886, distance: 0),
    Station(name: "Clinton", type: .blue, id: 40430, latitude: 41.875539, longitude: -87.640984, distance: 0),
    Station(name: "Clinton", type: .greenpink, id: 41160, latitude: 41.885678, longitude: -87.641782, distance: 0),
    Station(name: "Conservatory", type: .green, id: 41670, latitude: 41.884904, longitude: -87.716523, distance: 0),
    Station(name: "Cottage Grove", type: .green, id: 40720, latitude: 41.780309, longitude: -87.605857, distance: 0),
    Station(name: "Cumberland", type: .blue, id: 40230, latitude: 41.984246, longitude: -87.838028, distance: 0),
    Station(name: "Damen", type: .pink, id: 40210, latitude: 41.854517, longitude: -87.675975, distance: 0),
    Station(name: "Damen", type: .blue, id: 40590, latitude: 41.909744, longitude: -87.677437, distance: 0),
    Station(name: "Damen", type: .brown, id: 40090, latitude: 41.966286, longitude: -87.678639, distance: 0),
    Station(name: "Davis", type: .purple, id: 40050, latitude: 42.04771, longitude: -87.683543, distance: 0),
    Station(name: "Dempster", type: .purple, id: 40690, latitude: 42.041655, longitude: -87.681602, distance: 0),
    Station(name: "Dempster-Skokie", type: .yellow, id: 40140, latitude: 42.038951, longitude: -87.751919, distance: 0),
    Station(name: "Diversey", type: .brownpurple, id: 40530, latitude: 41.932732, longitude: -87.653131, distance: 0),
    Station(name: "Division", type: .blue, id: 40320, latitude: 41.903355, longitude: -87.666496, distance: 0),
    Station(name: "Forest Park", type: .blue, id: 40390, latitude: 41.874257, longitude: -87.817318, distance: 0),
    Station(name: "Foster", type: .purple, id: 40520, latitude: 42.05416, longitude: -87.68356, distance: 0),
    Station(name: "Francisco", type: .brown, id: 40870, latitude: 41.966046, longitude: -87.701644, distance: 0),
    Station(name: "Fullerton", type: .redpurplebrown, id: 41220, latitude: 41.925051, longitude: -87.652866, distance: 0),
    Station(name: "Garfield", type: .green, id: 40510, latitude: 41.795172, longitude: -87.618327, distance: 0),
    Station(name: "Garfield", type: .red, id: 41170, latitude: 41.79542, longitude: -87.631157, distance: 0),
    Station(name: "Grand", type: .blue, id: 40510, latitude: 41.891189, longitude: -87.647578, distance: 0),
    Station(name: "Grand", type: .red, id: 40330, latitude: 41.891665, longitude: -87.628021, distance: 0),
    Station(name: "Granville", type: .red, id: 40760, latitude: 41.993664, longitude: -87.659202, distance: 0),
    Station(name: "Halsted", type: .orange, id: 41130, latitude: 41.84678, longitude: -87.648088, distance: 0),
    Station(name: "Halsted", type: .green, id: 40940, latitude: 41.778943, longitude: -87.644244, distance: 0),
    Station(name: "Harlem (O'Hare)", type: .blue, id: 40750, latitude: 41.98227, longitude: -87.8089, distance: 0),
    Station(name: "Harlem (Forest Park)", type: .blue, id: 40980, latitude: 41.87349, longitude: -87.806961, distance: 0),
    Station(name: "Harlem/Lake", type: .green, id: 40020, latitude: 41.886848, longitude: -87.803176, distance: 0),
    Station(name: "Harrison", type: .red, id: 41490, latitude: 41.874039, longitude: -87.627479, distance: 0),
    Station(name: "Library", type: .orangepurplepinkbrown, id: 40850, latitude: 41.876862, longitude: -87.628196, distance: 0),
    Station(name: "Howard", type: .redyellowpurple, id: 40900, latitude: 42.019063, longitude: -87.672892, distance: 0),
    Station(name: "IMD", type: .blue, id: 40900, latitude: 41.875706, longitude: -87.673932, distance: 0),
    Station(name: "Indiana", type: .green, id: 40300, latitude: 41.821732, longitude: -87.621371, distance: 0),
    Station(name: "Irving Park", type: .blue, id: 40550, latitude: 41.952925, longitude: -87.729229, distance: 0),
    Station(name: "Irving Park", type: .brown, id: 41460, latitude: 41.954521, longitude: -87.674868, distance: 0),
    Station(name: "Jackson", type: .blue, id: 40070, latitude: 41.878183, longitude: -87.629296, distance: 0),
    Station(name: "Jackson", type: .red, id: 40560, latitude: 41.878153, longitude: -87.627596, distance: 0),
    Station(name: "Jarvis", type: .red, id: 41190, latitude: 42.015876, longitude: -87.669092, distance: 0),
    Station(name: "Jefferson Park", type: .blue, id: 41280, latitude: 41.970634, longitude: -87.760892, distance: 0),
    Station(name: "Kedzie", type: .brown, id: 41180, latitude: 41.965996, longitude: -87.708821, distance: 0),
    Station(name: "Kedzie", type: .pink, id: 41040, latitude: 41.853964, longitude: -87.705408, distance: 0),
    Station(name: "Kedzie", type: .orange, id: 41150, latitude: 41.804236, longitude: -87.704406, distance: 0),
    Station(name: "Kedzie", type: .green, id: 41070, latitude: 41.884321, longitude: -87.706155, distance: 0),
    Station(name: "Kedzie-Homan", type: .blue, id: 40250, latitude: 41.874341, longitude: -87.70604, distance: 0),
    Station(name: "Kimball", type: .brown, id: 41290, latitude: 41.967901, longitude: -87.713065, distance: 0),
    Station(name: "King Drive", type: .green, id: 41290, latitude: 41.78013, longitude: -87.615546, distance: 0),
    Station(name: "Kostner", type: .pink, id: 40600, latitude: 41.853751, longitude: -87.733258, distance: 0),
    Station(name: "Lake", type: .red, id: 41660, latitude: 41.884809, longitude: -87.627813, distance: 0),
    Station(name: "Laramie", type: .green, id: 40700, latitude: 41.887163, longitude: -87.754986, distance: 0),
    Station(name: "LaSalle", type: .blue, id: 41340, latitude: 41.875568, longitude: -87.631722, distance: 0),
    Station(name: "LaSalle/Van Buren", type: .orangepurplepinkbrown, id: 40160, latitude: 41.8768, longitude: -87.631739, distance: 0),
    Station(name: "Lawrence", type: .red, id: 40770, latitude: 41.969139, longitude: -87.658493, distance: 0),
    Station(name: "Linden", type: .purple, id: 41050, latitude: 42.073153, longitude: -87.69073, distance: 0),
    Station(name: "Logan Square", type: .blue, id: 41020, latitude: 41.929728, longitude: -87.708541, distance: 0),
    Station(name: "Loyola", type: .red, id: 41300, latitude: 42.001073, longitude: -87.661061, distance: 0),
    Station(name: "Main", type: .purple, id: 40270, latitude: 42.033456, longitude: -87.679538, distance: 0),
    Station(name: "Merchandise Mart", type: .brownpurple, id: 40460, latitude: 41.888969, longitude: -87.633924, distance: 0),
    Station(name: "Midway", type: .orange, id: 40930, latitude: 41.78661, longitude: -87.737875, distance: 0),
    Station(name: "Monroe", type: .blue, id: 40790, latitude: 41.880703, longitude: -87.629378, distance: 0),
    Station(name: "Monroe", type: .red, id: 41090, latitude: 41.880745, longitude: -87.627696, distance: 0),
    Station(name: "Montrose", type: .blue, id: 41330, latitude: 41.961539, longitude: -87.743574, distance: 0),
    Station(name: "Montrose", type: .brown, id: 41330, latitude: 41.961539, longitude: -87.743574, distance: 0),
    Station(name: "Morgan", type: .greenpink, id: 41510, latitude: 41.885586, longitude: -87.652193, distance: 0),
    Station(name: "Morse", type: .red, id: 40100, latitude: 42.008362, longitude: -87.665909, distance: 0),
    Station(name: "North/Clybourn", type: .red, id: 40650, latitude: 41.910655, longitude: -87.649177, distance: 0),
    Station(name: "Noyes", type: .purple, id: 40400, latitude: 42.058282, longitude: -87.683337, distance: 0),
    Station(name: "O'Hare", type: .blue, id: 40890, latitude: 41.97766526, longitude: -87.90422307, distance: 0),
    Station(name: "Oak Park", type: .green, id: 41350, latitude: 41.886988, longitude: -87.793783, distance: 0),
    Station(name: "Oak Park", type: .blue, id: 40180, latitude: 41.872108, longitude: -87.791602, distance: 0),
    Station(name: "Oakton-Skokie", type: .yellow, id: 41680, latitude: 42.02624348, longitude: -87.74722084, distance: 0),
    Station(name: "Paulina", type: .brown, id: 41310, latitude: 41.943623, longitude: -87.670907, distance: 0),
    Station(name: "Polk", type: .pink, id: 41030, latitude: 41.871551, longitude: -87.66953, distance: 0),
    Station(name: "Pulaski", type: .blue, id: 40920, latitude: 41.873797, longitude: -87.725663, distance: 0),
    Station(name: "Pulaski", type: .green, id: 40030, latitude: 41.885412, longitude: -87.725404, distance: 0),
    Station(name: "Pulaski", type: .orange, id: 40960, latitude: 41.799756, longitude: -87.724493, distance: 0),
    Station(name: "Pulaski", type: .pink, id: 40150, latitude: 41.853732, longitude: -87.724311, distance: 0),
    Station(name: "Quincy", type: .orangepurplepinkbrown, id: 40040, latitude: 41.878723, longitude: -87.63374, distance: 0),
    Station(name: "Racine", type: .blue, id: 40470, latitude: 41.87592, longitude: -87.659458, distance: 0),
    Station(name: "Ridgeland", type: .green, id: 40610, latitude: 41.887159, longitude: -87.783661, distance: 0),
    Station(name: "Rockwell", type: .brown, id: 41010, latitude: 41.966115, longitude: -87.6941, distance: 0),
    Station(name: "Roosevelt", type: .redorangegreen, id: 41400, latitude: 41.867405, longitude: -87.62659, distance: 0),
    Station(name: "Rosemont", type: .blue, id: 40820, latitude: 41.983507, longitude: -87.859388, distance: 0),
    Station(name: "Sedgwick", type: .brownpurple, id: 40800, latitude: 41.910409, longitude: -87.639302, distance: 0),
    Station(name: "Sheridan", type: .red, id: 40080, latitude: 41.953775, longitude: -87.654929, distance: 0),
    Station(name: "South Boulevard", type: .purple, id: 40840, latitude: 42.027612, longitude: -87.678329, distance: 0),
    Station(name: "Southport", type: .brown, id: 40360, latitude: 41.943744, longitude: -87.663619, distance: 0),
    Station(name: "Sox-35th", type: .red, id: 40190, latitude: 41.831191, longitude: -87.630636, distance: 0),
    Station(name: "State/Lake", type: .orangegreenpinkpurplebrown, id: 40260, latitude: 41.88574, longitude: -87.627835, distance: 0),
    Station(name: "Throndale", type: .red, id: 40880, latitude: 41.990259, longitude: -87.659076, distance: 0),
    Station(name: "UIC-Halsted", type: .blue, id: 40370, latitude: 41.875474, longitude: -87.649707, distance: 0),
    Station(name: "Washington", type: .blue, id: 40350, latitude: 41.883164, longitude: -87.62944, distance: 0),
    Station(name: "Washington/Wabash", type: .orangegreenpinkpurplebrown, id: 41700, latitude: 41.88322, longitude: -87.626189, distance: 0),
    Station(name: "Washington/Wells", type: .orangepurplepinkbrown, id: 40730, latitude: 41.882695, longitude: -87.63378, distance: 0),
    Station(name: "Wellington", type: .brownpurple, id: 41210, latitude: 41.936033, longitude: -87.653266, distance: 0),
    Station(name: "Western (O'Hare)", type: .blue, id: 40670, latitude: 41.916157, longitude: -87.687364, distance: 0),
    Station(name: "Western (Forest Park)", type: .blue, id: 40220, latitude: 41.875478, longitude: -87.688436, distance: 0),
    Station(name: "Western", type: .brown, id: 41480, latitude: 41.966163, longitude: -87.688502, distance: 0),
    Station(name: "Western", type: .orange, id: 40310, latitude: 41.804546, longitude: -87.684019, distance: 0),
    Station(name: "Western", type: .pink, id: 40740, latitude: 41.854225, longitude: -87.685129, distance: 0),
    Station(name: "Wilson", type: .redpurple, id: 40540, latitude: 41.964273, longitude: -87.657588, distance: 0)
]



class Station {
    
    enum `Type`: String {
        case red = "red"
        case blue = "blue"
        case brown = "brown"
        case purple = "purple"
        case orange = "orange"
        case green = "green"
        case yellow = "yellow"
        case pink = "pink"
        case greenpink = "greenpink"
        case redyellowpurple = "redyellowpurple"
        case redpurple = "redpurple"
        case redpurplebrown = "redpurplebrown"
        case redorangegreen = "redorangegreen"
        case brownpurple = "brownpurple"
        case orangepurplepinkbrown = "orangepurplepinkbrown"
        case orangegreenbluepinkpurplebrown = "orangegreenbluepinkpurplebrown"
        case orangegreenpinkpurplebrown = "orangegreenpinkpurplebrown"
    }
    
    var name: String
    var type: Type
    var id: Int
    var latitude: Double
    var longitude: Double
    var distance: Double

    
    init(name: String, type: Type, id: Int, latitude: Double, longitude: Double, distance: Double) {
        self.name = name
        self.type = type
        self.id = id
        self.latitude = latitude
        self.longitude = longitude
        self.distance = distance
        
    }
    
}


//This feeds dummy data into the estimated arrivals table. In reality the CTA requests should go here

var arrivals = [
    Arrival(direction: "Inbound", due: 2),
    Arrival(direction: "Outbound", due: 5),
    Arrival(direction: "Inbound", due: 9),
    Arrival(direction: "Outbound", due: 12),
    Arrival(direction: "Inbound", due: 21)
]

class Arrival {
    enum `Type`: String {
        case arrival = "arrival"
    }
        var direction: String
        var due: Int
    
    init(direction: String, due: Int){
        self.direction = direction
        self.due = due
    }
}
