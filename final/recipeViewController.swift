//
//  recipeViewController.swift
//  final
//
//  Created by SWUCOMPUTER on 2017. 12. 24..
//  Copyright © 2017년 SWUCOMPUTER. All rights reserved.
//

import UIKit
import CoreData

class recipeViewController: UIViewController {
    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var recipeText: UITextView!
    
    var detailRecipe:NSManagedObject?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if let recipe=detailRecipe{
            nameLabel.text=(recipe.value(forKey:"foodName") as? String)!+" 레시피"
            recipeText.text=recipe.value(forKey: "recipe") as? String
    }

    func didReceiveMemoryWarning() {
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
}
