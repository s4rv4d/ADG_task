//
//  RestaurantTableViewController.swift
//  ADG_task
//
//  Created by Sarvad shetty on 1/11/18.
//  Copyright © 2018 Sarvad shetty. All rights reserved.
//

import UIKit

class RestaurantTableViewController: UITableViewController {
    
    var restaurants:[Restaurant] = [ Restaurant(name: "Cafe Deadend", type: "Coffee & Tea Shop", location: "G/F,72 Po Hing Fong, Sheung Wan, Hong Kong", phoneNumber: "232-923423",                   image:"cafedeadend.jpg", isVisited: false),
                                     Restaurant(name: "Homei", type: "Cafe", location: "Shop B, G/F, 22-24A Tai Ping San Street SOHO, Sheung Wan, Hong Kong", phoneNumber: "348-233423", image:"homei.jpg", isVisited: false),
                                     Restaurant(name: "Teakha", type: "Tea House", location: "Shop B, 18 Tai Ping Shan Road SOHO, Sheung Wan, Hong Kong", phoneNumber: "354-243523", image:"teakha.jpg", isVisited: false),
                                     Restaurant(name: "Cafe loisl", type: "Austrian / Causual Drink", location:"Shop B, 20 Tai Ping Shan Road SOHO, Sheung Wan, Hong Kong", phoneNumber: "453-333423", image: "cafeloisl.jpg", isVisited: false),
                                     Restaurant(name: "Petite Oyster", type: "French", location: "24 Tai Ping Shan Road SOHO, Sheung Wan, Hong Kong", phoneNumber: "983-284334", image:
                                        "petiteoyster.jpg", isVisited: false),
                                     Restaurant(name: "For Kee Restaurant", type: "Bakery", location: "Shop J-K., 200 Hollywood Road, SOHO, Sheung Wan, Hong Kong", phoneNumber: "232-434222", image: "forkeerestaurant.jpg", isVisited: false),
                                     Restaurant(name: "Po's Atelier", type: "Bakery", location: "G/F, 62 Po HingFong, Sheung Wan, Hong Kong", phoneNumber: "234-834322", image:
                                        "posatelier.jpg", isVisited: false),
                                     Restaurant(name: "Bourke Street Backery", type: "Chocolate", location: "633 Bourke St Sydney New South Wales 2010 Surry Hills", phoneNumber: "982-434343",image: "bourkestreetbakery.jpg", isVisited: false),
                                     Restaurant(name: "Haigh's Chocolate", type: "Cafe", location: "412-414 George St Sydney New South Wales", phoneNumber: "734-232323", image:
                                        "haighschocolate.jpg", isVisited: false),
                                     Restaurant(name: "Palomino Espresso", type: "American / Seafood", location:"Shop 1 61 York St Sydney New South Wales", phoneNumber: "872-734343", image:"palominoespresso.jpg", isVisited: false),
                                     Restaurant(name: "Upstate", type: "American", location: "95 1st Ave NewYork, NY 10003", phoneNumber: "343-233221", image: "upstate.jpg", isVisited: false),
                                     Restaurant(name: "Traif", type: "American", location: "229 S 4th St Brooklyn, NY 11211", phoneNumber: "985-723623", image: "traif.jpg", isVisited:
                                        false),
                                     Restaurant(name: "Graham Avenue Meats", type: "Breakfast & Brunch",location: "445 Graham Ave Brooklyn, NY 11211", phoneNumber: "455-232345",
                                        image: "grahamavenuemeats.jpg", isVisited: false),
                                     Restaurant(name: "Waffle & Wolf", type: "Coffee & Tea", location: "413 Graham Ave Brooklyn, NY 11211", phoneNumber: "434-232322", image:"wafflewolf.jpg", isVisited: false),
                                     Restaurant(name: "Five Leaves", type: "Coffee & Tea", location: "18 Bedford Ave Brooklyn, NY 11222", phoneNumber: "343-234553", image: "fiveleaves.jpg",isVisited: false),
                                     Restaurant(name: "Cafe Lore", type: "Latin American", location: "Sunset Park 4601 4th Ave Brooklyn, NY 11220", phoneNumber: "342-455433", image:
                                        "cafelore.jpg", isVisited: false),
                                     Restaurant(name: "Confessional", type: "Spanish", location: "308 E 6th St New York, NY 10003", phoneNumber: "643-332323", image: "confessional.jpg",
                                        isVisited: false),
                                     Restaurant(name: "Barrafina", type: "Spanish", location: "54 Frith Street London W1D 4SL United Kingdom", phoneNumber: "542-343434", image:
                                        "barrafina.jpg", isVisited: false),
                                     Restaurant(name: "Donostia", type: "Spanish", location: "10 Seymour Place London W1H 7ND United Kingdom", phoneNumber: "722-232323", image:
                                        "donostia.jpg", isVisited: false),
                                     Restaurant(name: "Royal Oak", type: "British", location: "2 Regency Street London SW1P 4BZ United Kingdom", phoneNumber: "343-988834", image:
                                        "royaloak.jpg", isVisited: false),
                                     Restaurant(name: "Thai Cafe", type: "Thai", location: "22 Charlwood Street London SW1V 2DY Pimlico", phoneNumber: "432-344050", image: "thaicafe.jpg",
                                        isVisited: false)]
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        
         navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
        
        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.estimatedRowHeight = 100.0
    
    }
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.hidesBarsOnSwipe = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return restaurants.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! RestaurantTableViewCell

        // Configure the cell...
        cell.nameLabel.text = restaurants[indexPath.row].name
        cell.thumbnailImageView.image = UIImage(named: restaurants[indexPath.row].image)
        cell.thumbnailImageView.layer.cornerRadius = 30.0
        cell.thumbnailImageView.clipsToBounds = true
        cell.locationLabel.text = restaurants[indexPath.row].location
        cell.typeLabel.text = restaurants[indexPath.row].type
        cell.accessoryType = restaurants[indexPath.row].isVisited == true ? .checkmark : .none

        return cell
    }
    
    //MARK: Tableview delegate methods
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
   /* override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let option = UIAlertController(title: "What do you want to do ?", message: "?", preferredStyle: .actionSheet)
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        option.addAction(cancelAction)
        present(option, animated: true, completion: nil)
        tableView.deselectRow(at: indexPath, animated: true)
        let callAction = UIAlertAction(title: "Call" + "123-100-\(indexPath.row)", style: .default) { (action) in
            let callAlert = UIAlertController(title: "Service unavailable", message: "Please try again later", preferredStyle: .alert)
            let actio = UIAlertAction(title: "Ok", style: .default, handler: nil)
            callAlert.addAction(actio)
            self.present(callAlert, animated: true, completion: nil)
        }
        option.addAction(callAction)
        let iVisited = UIAlertAction(title: "I've visited here", style: .default) { (action) in
            let cell = tableView.cellForRow(at: indexPath)
            self.restaurantVisited[indexPath.row] = !self.restaurantVisited[indexPath.row]
            cell?.accessoryType = self.restaurantVisited[indexPath.row] == true ? .checkmark : .none
            
            
        }
        option.addAction(iVisited)
    }*/
    
//    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
//        if editingStyle == .delete{
//            restaurantVisited.remove(at: indexPath.row)
//            restaurantNames.remove(at: indexPath.row)
//            restaurantTypes.remove(at: indexPath.row)
//            restaurantImages.remove(at: indexPath.row)
//            restaurantLocations.remove(at: indexPath.row)
//        }
//        //tableView.reloadData() or for deletin with animations
//        tableView.deleteRows(at: [indexPath], with: .fade)
//
//    } or
    override func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]? {
        let shareButton = UITableViewRowAction(style: .default, title: "Share") { (action, indexPath) in
            let defaultText = "Just checking in at " + "\(self.restaurants[indexPath.row].name)"
            if let imageToShare = UIImage(named: self.restaurants[indexPath.row].image){
                  let activityController = UIActivityViewController(activityItems: [defaultText,imageToShare], applicationActivities: nil)
                 self.present(activityController, animated: true, completion: nil)
            }
        }
        let deleteAction = UITableViewRowAction(style: .default, title: "Delete") { (action, indexPath) in
            
            self.restaurants.remove(at: indexPath.row)
            self.tableView.deleteRows(at: [indexPath], with: .fade)
        }
        shareButton.backgroundColor = UIColor(displayP3Red: 82.0/255.0, green: 179.0/255.0, blue: 217.0/255.0, alpha: 1.0)
        deleteAction.backgroundColor = UIColor(displayP3Red: 242.0/255.0, green: 38.0/255.0, blue: 19.0/255.0, alpha: 1.0)
        
        return [deleteAction,shareButton]
    }
    
    //MARK: Segue properties
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showDetailSegue"{
            if let indexPath = tableView.indexPathForSelectedRow{
                let destinationVc = segue.destination as! RestaurantDetailViewController
                destinationVc.restaurants = restaurants[indexPath.row]
            }
        }
    }

}
