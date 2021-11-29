//
//  PlanetListTableViewController.swift
//  SolarSystem
//
//  Created by Jonathan Llewellyn on 11/3/21.
//

import UIKit

class PlanetListTableViewController: UITableViewController {

    //MARK: -- Lifecycles
    override func viewDidLoad() {
        super.viewDidLoad()


    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       
        return PlanetController.planets.count
    }

   
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "planetCell", for: indexPath)

        let planet = PlanetController.planets[indexPath.row]
        
        cell.textLabel?.text = planet.planetName
        cell.imageView?.image = UIImage(named: planet.planetImageName)
        
        
        return cell
    }
    

   
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // IIDOO
        // Indentifier, IndexPath, Destination, Object to Send, Object to Receive
        
        // Identifier -- Make sure we are on the right segue
        if segue.identifier == "toDetailVC" {
            
            // IndexPath -- get the indexPath of the selected cell
            // Destination -- give the segue a blueprint for how to interpret the data at the destination
            guard let indexPath = tableView.indexPathForSelectedRow,
                  let destination = segue.destination as? PlanetDetailViewController else { return }
            
            // Object to Send -- the object we are sending from the SOT that corresponds to the selected indexPath
            let planetToSend = PlanetController.planets[indexPath.row]
            
            // Object to receive -- tell the data where to land
            destination.planet = planetToSend
        }
    }

}
