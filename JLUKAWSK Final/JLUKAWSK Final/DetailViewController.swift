//
//  DetailViewController.swift
//  JLUKAWSK Final
//
//  Created by Jake Lukawski on 3/15/20.
//  Copyright © 2020 Jake Lukawski. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class TableViewCell: UITableViewCell {
    @IBOutlet weak var trainETALabel: UILabel!
}

class DetailViewController: UIViewController, MKMapViewDelegate, UITableViewDelegate, UITableViewDataSource {
    let locationManager = CLLocationManager()
    @IBOutlet weak var mapView: MKMapView!
    @IBOutlet weak var stationNameLabel: UILabel!
    @IBOutlet weak var walkingETALabel: UILabel!
    
    var station: Station?
    var data = Root()

    let dateFormatter = DateFormatter()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.distanceFilter = kCLDistanceFilterNone

        mapView.delegate = self
        mapView.showsUserLocation = true
        
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss"
        dateFormatter.timeZone = TimeZone.current
        dateFormatter.locale = Locale.current
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        let datadecoder = DataDecoder(mapid: station!.id).arrivalData!
        self.data = datadecoder
        if let s = station {
            
            print(s.latitude)
            //Pin on map
            let annotation = MKPointAnnotation()
            annotation.coordinate = CLLocationCoordinate2D(latitude: s.latitude, longitude: s.longitude)
            mapView.addAnnotation(annotation)
            annotation.title = s.name
            
            //Zoom into area
            //let region = MKCoordinateRegion(center: annotation.coordinate, latitudinalMeters: 200, longitudinalMeters: 200)
           // mapView.setRegion(region, animated: true)
            
            //station label
            stationNameLabel.text = s.name
            if s.type == .red{stationNameLabel.textColor = UIColor(red: 227/256, green: 55/256, blue: 25/256, alpha: 1.0)}
            if s.type == .blue{stationNameLabel.textColor = UIColor(red: 0, green: 157/256, blue: 220/256, alpha: 1.0)}
            if s.type == .brown{stationNameLabel.textColor = UIColor(red: 118/256, green: 66/256, blue: 0, alpha: 1.0)}
            if s.type == .yellow{stationNameLabel.textColor = UIColor(red: 255/256, green: 232/256, blue: 0, alpha: 1.0)}
            if s.type == .purple{stationNameLabel.textColor = UIColor(red: 73/256, green: 47/256, blue: 146/256, alpha: 1.0)}
            if s.type == .orange{stationNameLabel.textColor = UIColor(red: 244/256, green: 120/256, blue: 54/256, alpha: 1.0)}
            if s.type == .green{stationNameLabel.textColor = UIColor(red: 0, green: 169/256, blue: 79/256, alpha: 1.0)}
            if s.type == .pink{stationNameLabel.textColor = UIColor(red: 243/256, green: 139/256, blue: 185/256, alpha: 1.0)}
            self.mapThis(destination: CLLocationCoordinate2D(latitude: s.latitude, longitude: s.longitude))
        }
    }
    
    func mapThis(destination: CLLocationCoordinate2D){
        let source = (locationManager.location?.coordinate)!
        let sourcePlacemark = MKPlacemark(coordinate: source)
        let destinationPlacemark = MKPlacemark(coordinate: destination)
        let sourceItem = MKMapItem(placemark: sourcePlacemark)
        let destinationItem = MKMapItem(placemark: destinationPlacemark)
        let destinationRequest = MKDirections.Request()
        destinationRequest.source = sourceItem
        destinationRequest.destination = destinationItem
        destinationRequest.transportType = .walking
        destinationRequest.requestsAlternateRoutes = false
        
        let directions = MKDirections(request: destinationRequest)
        directions.calculate{ (response,error) in
            guard let response = response else{
                if let error = error{
                    print("Error retrieving directions: ", error)
                }
                return
            }
            let route = response.routes[0]
            self.walkingETALabel.text = String(Int(route.expectedTravelTime)/60) + " minute walk"
            self.mapView.addOverlay(route.polyline)
            self.mapView.setVisibleMapRect(route.polyline.boundingMapRect, animated: false)
            self.mapView.setVisibleMapRect(self.mapView.visibleMapRect, edgePadding: UIEdgeInsets(top: 40.0, left: 20.0, bottom: 30, right: 20.0), animated: true)
        }
    }
    
    func mapView(_ mapView: MKMapView, rendererFor overlay: MKOverlay) -> MKOverlayRenderer {
        let render = MKPolylineRenderer(overlay: overlay as! MKPolyline)
        render.strokeColor = .blue
        render.lineWidth = 4.0
        return render
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        //return the number of sections
        return 1
    }

     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //return the number of rows
        return data!.ctatt.eta.count
    }

    
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "arrival", for: indexPath) as! TableViewCell
        
        cell.textLabel?.text = data!.ctatt.eta[indexPath.row].destinationName
        if data!.ctatt.eta[indexPath.row].route == "Red"{cell.textLabel?.textColor = UIColor(red: 227/256, green: 55/256, blue: 25/256, alpha: 1.0)}
        if data!.ctatt.eta[indexPath.row].route == "Blue"{cell.textLabel?.textColor = UIColor(red: 0, green: 157/256, blue: 220/256, alpha: 1.0)}
        if data!.ctatt.eta[indexPath.row].route == "Brn"{cell.textLabel?.textColor = UIColor(red: 118/256, green: 66/256, blue: 0, alpha: 1.0)}
        if data!.ctatt.eta[indexPath.row].route == "Y"{cell.textLabel?.textColor = UIColor(red: 255/256, green: 232/256, blue: 0, alpha: 1.0)}
        if data!.ctatt.eta[indexPath.row].route == "P"{cell.textLabel?.textColor = UIColor(red: 73/256, green: 47/256, blue: 146/256, alpha: 1.0)}
        if data!.ctatt.eta[indexPath.row].route == "Org"{cell.textLabel?.textColor = UIColor(red: 244/256, green: 120/256, blue: 54/256, alpha: 1.0)}
        if data!.ctatt.eta[indexPath.row].route == "G"{cell.textLabel?.textColor = UIColor(red: 0, green: 169/256, blue: 79/256, alpha: 1.0)}
        if data!.ctatt.eta[indexPath.row].route == "Pink"{cell.textLabel?.textColor = UIColor(red: 243/256, green: 139/256, blue: 185/256, alpha: 1.0)}
        
        let currentTime = dateFormatter.date(from: data!.ctatt.timestamp)
        let predictedArrival = dateFormatter.date(from: data!.ctatt.eta[indexPath.row].predictedArrivalTime)
        
        let diffComponents = Calendar.current.dateComponents([.minute], from: currentTime!, to: predictedArrival!)
        let minutes = diffComponents.minute
        
        if (minutes! <= 0){
            cell.trainETALabel.text = "DUE"
        }
        else{
            cell.trainETALabel.text = "\(minutes ?? 0) minutes"
        }
        
        return cell
        
    }
}
