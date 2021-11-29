//
//  PlanetDetailViewController.swift
//  SolarSystem
//
//  Created by Jonathan Llewellyn on 11/3/21.
//

import UIKit

class PlanetDetailViewController: UIViewController {

    // MARK: - Outlets
    
    @IBOutlet weak var planetNameLabel: UILabel!
    @IBOutlet weak var planetImageNameLabel: UIImageView!
    @IBOutlet weak var planetDiameterLabel: UILabel!
    @IBOutlet weak var planetMaxDistanceFromSunLabel: UILabel!
    @IBOutlet weak var planetDayLengthLabel: UILabel!
    
    
    
    // MARK: - Properties
    /**
     Optional Planet object -- Landing Pad
     'planet' is a stored property. This Planet object will receive a value only if the 'prepareForSegue' method on our tableViewController is successful.
     */
    var planet: Planet?
    
    // MARK: - Lifecycles
    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()
        // self.navigationController?.navigationBar.backgroundColor = .black
        

    }
    

    // MARK: - Helper Methods
    func updateViews() {
        
        /// Check to make sure *planet* has a value. Create a new constant *planet* that holds the non-optional value
        guard let planet = planet else { return }
        // Set the text properties of our labels using the properties of the planet object
        planetNameLabel.text = planet.planetName
        planetImageNameLabel.image = UIImage(named: planet.planetImageName)
        planetDiameterLabel.text = "\(planet.planetDiameter) km"
        planetMaxDistanceFromSunLabel.text = "\(planet.maxMillionKMsFromSun) 10^6km"
        planetDayLengthLabel.text = "\(planet.planetDayLength) hours"

        
    }

}
