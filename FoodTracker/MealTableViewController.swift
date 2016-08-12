//
//  MealTableViewController.swift
//  FoodTracker
//
//  Created by Admin on 12.08.16.
//  Copyright © 2016 house. All rights reserved.
//

import UIKit

class MealTableViewController: UITableViewController {
    
    //MARK: Properties
    var meals = [Meal]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadSampleMeals()
    }
    
    func loadSampleMeals() {
        let photo1 = UIImage(named: "meal1")
        let meal1 = Meal(name: "Cherry", photo: photo1, rating: 5)!
        
        let photo2 = UIImage(named: "meal2")
        let meal2 = Meal(name: "Rat", photo: photo2, rating: 4)!
        
        let photo3 = UIImage(named: "meal3")
        let meal3 = Meal(name: "Shark", photo: photo3, rating: 4)!
        
        meals += [meal1, meal2, meal3]
        
    }
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return meals.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cellIdentifier = "MealTableViewCell"
        let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath: indexPath) as! MealTableViewCell
        let meal = meals[indexPath.row]
        
        cell.nameLabel.text = meal.name
        cell.photoImageView.image = meal.photo
        cell.ratingControl.rating = meal.rating
        
        return cell
    }
    
    

}
