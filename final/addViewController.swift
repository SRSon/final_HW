//
//  addViewController.swift
//  final
//
//  Created by SWUCOMPUTER on 2017. 12. 24..
//  Copyright © 2017년 SWUCOMPUTER. All rights reserved.
//

import UIKit
import CoreData

class addViewController: UIViewController,UITextFieldDelegate,UIPickerViewDelegate,UIPickerViewDataSource {

    @IBOutlet var addPicker: UIPickerView!
    @IBOutlet var numText: UITextField!
    @IBOutlet var memoText: UITextView!
    
    let ingreArray:Array<String>=["계란","김치","참치캔","감자"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return ingreArray.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return ingreArray[row]
    }
    
    func getContext() -> NSManagedObjectContext{
        let appDelegate=UIApplication.shared.delegate as! AppDelegate
        return appDelegate.persistentContainer.viewContext
    }
    
    @IBAction func savePressed(_ sender: UIBarButtonItem) {
        let context=getContext()
        let entity=NSEntityDescription.entity(forEntityName: "My", in:context)
        let object=NSManagedObject(entity:entity!,insertInto:context)
        
        let ingredient:String=ingreArray[self.addPicker.selectedRow(inComponent: 0)]
        
        object.setValue(ingredient, forKey: "name")
        object.setValue(numText.text, forKey: "num")
        object.setValue(memoText.text, forKey: "memo")
        
        do{
            try context.save()
            print("saved!")
        }catch let error as NSError{
            print("Could not save \(error), \(error.userInfo)")
        }
        self.navigationController?.popViewController(animated: true)
    }

}
