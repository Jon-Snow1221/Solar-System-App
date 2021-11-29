//
//  Planet.swift
//  SolarSystem
//
//  Created by Jonathan Llewellyn on 11/3/21.
//

import Foundation

class Planet {
    
    ///Property of the Planet object that will hold a String (name of the planet)
    let planetName: String
    ///Property of the Day object that will hold a String name (image of planet)
    let planetImageName: String
    let planetDiameter: Int         // property of planet object that holds diameter as Int
    let planetDayLength: Float      // property of planet object that holds day length as Float
    let maxMillionKMsFromSun: Float // property of planet object that holds measurement for how far from sun planet is as Float
    
    /**
     Initilizes a Planet Object
     --this memberwise initializer will take in the various values and will set them to the properties of a Planet object
     **/
    
    init(planetName: String, planetImageName: String, planetDiameter: Int, planetDayLength: Float, maxMillionKMsFromSun: Float) {
        self.planetName = planetName
        self.planetImageName = planetImageName
        self.planetDiameter = planetDiameter
        self.planetDayLength = planetDayLength
        self.maxMillionKMsFromSun = maxMillionKMsFromSun
    }
    
} // End of Class
