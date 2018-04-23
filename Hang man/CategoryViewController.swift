//
//  CategoryViewController.swift
//  Hang man
//
//
//  Created by Andy on 12/29/16.
//  Copyright © 2016 Andy Phan. All rights reserved.
//

import UIKit

/**
* CategoryViewController provides the logical behind each 
* button on the category scene. 
* For each action, it simply send the category selection to the PlayViewController class
*/

class CategoryViewController : UIViewController{
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        let playViewCategory: PlayViewController = segue.destinationViewController as! PlayViewController
        if segue.identifier == "technology" {
            playViewCategory.categorySelection = "technology"
        }else if segue.identifier == "jedi" {
            playViewCategory.categorySelection = "jedi"
        }else if segue.identifier == "months" {
            playViewCategory.categorySelection = "months"
        }else if segue.identifier == "animal" {
            playViewCategory.categorySelection = "animal"
        }else if segue.identifier == "country" {
            playViewCategory.categorySelection = "country"
        }else {
            playViewCategory.categorySelection = "sport"
        }
    }
}
