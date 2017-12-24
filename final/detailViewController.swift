//
//  detailViewController.swift
//  final
//
//  Created by SWUCOMPUTER on 2017. 12. 24..
//  Copyright © 2017년 SWUCOMPUTER. All rights reserved.
//

import UIKit
import CoreData

class detailViewController: UIViewController {

    @IBOutlet var textName: UITextField!
    @IBOutlet var textNum: UITextField!
    @IBOutlet var textMemo: UITextView!
    
    var detailFood:NSManagedObject?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if let food = detailFood{
            textName.text=food.value(forKey:"name") as? String
            textNum.text=food.value(forKey:"num") as? String
            textMemo.text=food.value(forKey:"memo") as? String
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
