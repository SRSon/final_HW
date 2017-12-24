//
//  myTableViewController.swift
//  final
//
//  Created by SWUCOMPUTER on 2017. 12. 24..
//  Copyright © 2017년 SWUCOMPUTER. All rights reserved.
//

import UIKit
import CoreData

class myTableViewController: UITableViewController {
    
    var myIngredient:[NSManagedObject]=[]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        self.tableView.contentInset=UIEdgeInsetsMake(20.0, 0.0, 0.0, 0.0)
        num1()
        num2()
        num3()
        num4()
        num5()
        num6()
        num7()
    }
    func num1(){
        let entireContext=getContext()
        let entireEntity=NSEntityDescription.entity(forEntityName: "Entire", in: entireContext)
        
        let entireObject=NSManagedObject(entity: entireEntity!, insertInto: entireContext)
        
        entireObject.setValue("계란",forKey: "ingredientName")
        entireObject.setValue("계란찜", forKey: "foodName")
        entireObject.setValue("1.다시마는 젖은 면 보로 닦은 뒤 찬물에 넣고 서서히 끓인 뒤 다시마는 건져냅니다. 2.계란 4개에 소금을 넣고 7~8분 정도 둔 뒤 숟가락으로 알 끈을 끊어가며 저은 뒤 체에 한번 거릅니다. 3. 계란에 다시마 물 2컵 넣어 섞은 뒤 찜 그릇에 담고 면 보나 랩으로 덮어 감쌉니다. 4. 찜 냄비에 찜 그릇이 반쯤 잠길 정도만 물을 붓고 물이 끓으면 찜 그릇을 넣어 중간 불에서 20분 정도 중탕으로 찝니다.",forKey: "recipe")
        do {
            try entireContext.save()
            print("saved!")
        } catch let error as NSError {
            print("Could not save \(error), \(error.userInfo)")
        }
        
        
        
    }
    
    func num2(){
        let entireContext=getContext()
        let entireEntity=NSEntityDescription.entity(forEntityName: "Entire", in: entireContext)
        
        let entireObject=NSManagedObject(entity: entireEntity!, insertInto: entireContext)
        entireObject.setValue("계란", forKey: "ingredientName")
        entireObject.setValue("계란국", forKey: "foodName")
        entireObject.setValue("1.끓는 물에 멸치를 넣고 국물을 우려낸다. 2.계란, 소금을 넣고 고루 섞이도록 저어준다. 3. 냄비에 멸치를 건저내고 풀어 놓은 계란을 넣는다. 4. 실파를 넣고 소금,후춧가루를 넣고 간을 한다.", forKey: "recipe")
        do {
            try entireContext.save()
            print("saved!")
        } catch let error as NSError {
            print("Could not save \(error), \(error.userInfo)")
        }
        
        
    }
    
    func num3(){
        let entireContext=getContext()
        let entireEntity=NSEntityDescription.entity(forEntityName: "Entire", in: entireContext)
        
        let entireObject=NSManagedObject(entity: entireEntity!, insertInto: entireContext)
        entireObject.setValue("김치", forKey: "ingredientName")
        entireObject.setValue("김치찌개", forKey: "foodName")
        entireObject.setValue("1. 냄비에 물을 붓고 무와 양파를 넣어, 센불에 8분 정도 올려 끓으면, 중불로 낮추어 20분 정도 더 끓이다가 다시마를 넣고 불을 끈다음 5분정도 두었다가 체에 걸러 찌갯국물을 만든다. 2. 냄비를 달구어 참기름을 두르고, 돼지고기를 넣어 중불에서 2분 정도 볶다가, 배추김치를 넣고 2분 정도 더 볶는다. 3. 볶은 돼지고기와 배추김치에 찌갯국물과 고춧가루를 넣고, 센불에 6분 정도 올려 끓으면 중불로 낮추어 30분 정도 더 끓인다. 4. 소금으로 간을 맞추고, 두부와 파,후춧가루를 넣고, 2분 정도 더 끓인다.", forKey: "recipe")
        do {
            try entireContext.save()
            print("saved!")
        } catch let error as NSError {
            print("Could not save \(error), \(error.userInfo)")
        }
        
        
    }
    
    func num4(){
        let entireContext=getContext()
        let entireEntity=NSEntityDescription.entity(forEntityName: "Entire", in: entireContext)
        
        let entireObject=NSManagedObject(entity: entireEntity!, insertInto: entireContext)
        entireObject.setValue("김치", forKey: "ingredientName")
        entireObject.setValue("김치전", forKey: "foodName")
        entireObject.setValue("1. 배추 김치는 속을 털어내고 적당한 크기로 썹니다. 2. 실파는 뿌리를 손질한 후 씻어 한 입 크기로 자르고 홍 고추는 어슷하게 썹니다. 3. 오징어는 채 썰고 홍합은 손질하여 살만 준비합니다. 4. 볼에 밀가루,계란을 넣고 물을 조금씩 부으면서 농도를 조절하고 소금을 넣어 간합니다. 5. 밀가루 물에 배추 김치, 실파, 홍 고추, 오징어, 홍합을 넣어 섞습니다. 6. 달궈진 팬에 기름을 두르고 반죽을 한 국자 떠서 노릇하게 구워냅니다.", forKey: "recipe")
        
        do {
            try entireContext.save()
            print("saved!")
        } catch let error as NSError {
            print("Could not save \(error), \(error.userInfo)")
        }
        
    }
    func num5(){
        let entireContext=getContext()
        let entireEntity=NSEntityDescription.entity(forEntityName: "Entire", in: entireContext)
        
        let entireObject=NSManagedObject(entity: entireEntity!, insertInto: entireContext)
        entireObject.setValue("참치캔", forKey: "ingredientName")
        entireObject.setValue("참치마요덮밥", forKey: "foodName")
        entireObject.setValue("1. 달걀은 소금간을 해서 풀어 주고, 양파는 찬물에 담가놓는다. 2. 기름기 뺀 참치는 마요네즈와 함께 섞어준다. 3. 얇게 부친 달걀지단은 채를 썰고 물기 뺀 양파는 참치마요네즈와 섞어준다. 4. 밥을 준비한 다음 그 위에 달걀지단을 넓게 펴 준 다음 참치마요를 얹어주면 완성", forKey: "recipe")
        
        do {
            try entireContext.save()
            print("saved!")
        } catch let error as NSError {
            print("Could not save \(error), \(error.userInfo)")
        }
        
    }
    func num6(){
        let entireContext=getContext()
        let entireEntity=NSEntityDescription.entity(forEntityName: "Entire", in: entireContext)
        
        let entireObject=NSManagedObject(entity: entireEntity!, insertInto: entireContext)
        entireObject.setValue("감자", forKey: "ingredientName")
        entireObject.setValue("감자전", forKey: "foodName")
        entireObject.setValue("1. 감자는 껍질을 벗기고 강판에 곱게 갈아 앙금을 가라앉힌다. 2. 풋고추와 홍고추는 반을 갈라 씨가 있는 채로 송송 잘게 썬다. 쪽파는 2cm 크기로 썬다. 3. 가라앉힌 감자 앙금의 윗물을 따라내고 남은 앙금에 찹쌀가루와 부침가루를 넣고 버무려 걸쭉한 농도로 반죽을 한 후 소금으로 간을 한다. 4. 3번에 고추채와 쪽파를 넣고 한데 버무려 반죽한다. 5. 팬에 기름을 넉넉하게 두른 후 감자 반죽을 한 숟가락씩 떠서 놓고 앞뒤로 전을 부친다.", forKey: "recipe")
        
        do {
            try entireContext.save()
            print("saved!")
        } catch let error as NSError {
            print("Could not save \(error), \(error.userInfo)")
        }
        
    }
    func num7(){
        let entireContext=getContext()
        let entireEntity=NSEntityDescription.entity(forEntityName: "Entire", in: entireContext)
        
        let entireObject=NSManagedObject(entity: entireEntity!, insertInto: entireContext)
        entireObject.setValue("감자", forKey: "ingredientName")
        entireObject.setValue("감자볶음", forKey: "foodName")
        entireObject.setValue("1. 감자는 필러로 껍질을 벗긴 후 0.5cm 두께로 채썰고 양파도 0.5cm 두께로 채썬다. 대파는 어슷 썬다. 2. 감자는 찬물에 담가 전분기를 제거하고 체에 밭쳐 물기를 뺀다, 3. 달군 팬에 식용유를 두른 후 감자를 넣어 감자가 투명해질 때까지 볶는다. 4. 3번에 양파를 넣고 볶는다. 5. 대파,마늘,양조간장,설탕을 넣고 양념이 졸아들 때까지 볶는다.", forKey: "recipe")
        
        do {
            try entireContext.save()
            print("saved!")
        } catch let error as NSError {
            print("Could not save \(error), \(error.userInfo)")
        }
        
    }




    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source
    
    func getContext() -> NSManagedObjectContext{
        let appDelegate=UIApplication.shared.delegate as! AppDelegate
        return appDelegate.persistentContainer.viewContext
    }

    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        let context=self.getContext()
        let fetchRequest=NSFetchRequest<NSManagedObject>(entityName:"My")
        
        do{
            myIngredient = try context.fetch(fetchRequest)
        } catch let error as NSError{
            print("Could not fetch. \(error),\(error.userInfo)")
        }
        self.tableView.reloadData()
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return myIngredient.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "my Cell", for: indexPath)
        
        let myIng=myIngredient[indexPath.row]
        var display:String=""
        if let nameLabel=myIng.value(forKey: "name") as? String{
            display=nameLabel
        }
        cell.textLabel?.text=display
        return cell
    }
    

    //삭제
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }

    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            let context=getContext()
            context.delete(myIngredient[indexPath.row])
            do{
                try context.save()
                print("deleted!")
            } catch let error as NSError{
                print("Could not delete \(error),\(error.userInfo)")
                
            }
            myIngredient.remove(at: indexPath.row)
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }



    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */


    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if segue.identifier=="toDetail"{
            if let destination=segue.destination as? detailViewController{
                if let selectedIndex=self.tableView.indexPathsForSelectedRows?.first?.row{
                    destination.detailFood=myIngredient[selectedIndex]
                }
            }
            
    }
}
}



