//
//  SingleViewViewController.swift
//  rentHouse
//
//  Created by Rishu Khullar on 2017-11-08.
//  Copyright © 2017 RishuKhullar. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class SingleViewViewController: UIViewController, CLLocationManagerDelegate {
    
    var placeToShow = Place()
    var test = 0
    
    @IBOutlet weak var days: UITextField!
    @IBOutlet weak var myMap: MKMapView!
    @IBOutlet weak var addressPlace: UILabel!
    @IBOutlet weak var pricePlace: UILabel!
    @IBOutlet weak var contact: UILabel!
    var plc = [Place]()
    override func viewDidLoad() {
        super.viewDidLoad()
        print("sdfsdfsdfsd")
        print("sdfsdfsdfsd \(myIndex)")
        addressPlace.text = addressMain[test]
        pricePlace.text = String(priceMain[test])
        contact.text = contactMain[test]
        let address = addressMain[test]
        let geocoder = CLGeocoder()
        geocoder.geocodeAddressString(address) {
            placemarks, error in
            let placemark = placemarks?.first
            let lat = placemark?.location?.coordinate.latitude
            let lang = placemark?.location?.coordinate.longitude
            let span:MKCoordinateSpan = MKCoordinateSpanMake(0.1, 0.1)
            let location:CLLocationCoordinate2D = CLLocationCoordinate2DMake(lat!, lang! )
            let region:MKCoordinateRegion = MKCoordinateRegionMake(location, span)
            self.myMap.setRegion(region, animated: true)
            
            let annotation = MKPointAnnotation()
            annotation.coordinate = location
            annotation.title = addressMain[myIndex]
            annotation.subtitle = "Rent here"
            self.myMap.addAnnotation(annotation)
        }
        
    }
    func displayAlert(Msg: String){
        let alert = UIAlertController(title: "Error", message:Msg, preferredStyle: UIAlertControllerStyle.alert)
        
        // add an action (button)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
        
        // show the alert
        self.present(alert, animated: true, completion: nil)
    }
    
    @IBAction func rentButton(_ sender: Any) {
        let day = days.text
        if(day?.isEmpty)!{
            displayAlert(Msg: "Enter number of days to continue")
        }else{
            
            self.performSegue(withIdentifier: "finalView", sender: self)
        }
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "finalView" {
            let day = days.text
            let final = (Double(day!)! * Double(priceMain[test]))
            let controller = segue.destination as! finalViewViewController
            
            
            
            controller.FinalAmount = final
            
            
        }
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
