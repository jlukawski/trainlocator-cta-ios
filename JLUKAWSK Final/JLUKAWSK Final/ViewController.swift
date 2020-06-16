//
//  ViewController.swift
//  JLUKAWSK Final
//
//  Created by Jake Lukawski on 3/15/20.
//  Copyright © 2020 Jake Lukawski. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, CLLocationManagerDelegate {

    
    var locationManager:CLLocationManager!
    
    @IBOutlet weak var mapView: MKMapView!
    @IBOutlet weak var stationTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        stationTableView.dataSource = self
        stationTableView.delegate = self
        
        
        locationManager = CLLocationManager()
        locationManager.requestWhenInUseAuthorization()
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.distanceFilter = kCLDistanceFilterNone
        locationManager.startUpdatingLocation()
        locationManager.delegate = self
        
        mapView.showsUserLocation = true
        
        //Zoom to Chicago
        let region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 41.8781, longitude: -87.6298), latitudinalMeters: 20000, longitudinalMeters: 20000)
        mapView.setRegion(region, animated: true)
        
    
    }
    
    
        func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
            let userLocation : CLLocation = locations[0] as CLLocation
            print("locations = \(userLocation.coordinate.latitude) \(userLocation.coordinate.longitude)")
            stations.forEach {row in
                row.distance = abs(sqrt(pow(userLocation.coordinate.latitude - row.latitude, 2)) + pow(userLocation.coordinate.longitude - row.longitude, 2))
                       
            }
            stations.sort(by: {$0.distance < $1.distance})
            print("now sorted")
            stationTableView.reloadData()
                        print("now reloaded")
        
    }

    
    

    
    func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return stations.count
    }

    
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let station = stations[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: station.type.rawValue, for: indexPath)

        cell.textLabel?.text = station.name
        
        // Configure the cell...
        return cell
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        
        guard let detailViewController = segue.destination as? DetailViewController else { return }
        guard let cell = sender as? UITableViewCell else { return }
        guard let indexPath = self.stationTableView.indexPath(for: cell) else { return }
        detailViewController.station = stations[indexPath.row]

    }

}



