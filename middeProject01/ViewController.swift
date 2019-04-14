//
//  ViewController.swift
//  middeProject01
//
//  Created by SWUCOMPUTER on 13/04/2019.
//  Copyright © 2019 SWUCOMPUTER. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource {
    
    @IBOutlet var labelInfo: UITextField!
    @IBOutlet var pickerMain: UIPickerView!
    @IBOutlet var foodsLabel: UILabel!
    
    var started: Bool!
    var result: String!
   // var resultTest: String! //리절트 테스트
    
    let mainArray: Array<String> = ["돼지고기","소고기","고등어","갈치","꽁치","김치"]
    let mainArray2: Array<String> = ["당근","양파","무","대파","배","감자"]
    
    let subArray: Array<String> = ["마늘","고구마","양배추","브로콜리","사과","토마토"]
    
    let subArray2 :Array<String> = ["된장","고추장","간장","설탕","소금","청주"]
    
    
    @IBAction func start(_ sender: UIButton) {
        started = true
        let foodsArray = ["카레","돼지갈비","소갈비","꽁치찌개","김치찌개","갈치조림"]
        var randomNumber = Int(arc4random_uniform(UInt32(foodsArray.count)))
        foodsLabel.text = foodsArray[randomNumber]
      
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if component == 0{
            return mainArray[row]
        }
        else if  component == 1{
            return mainArray2[row]
        }
        else if  component == 2{
            return subArray[row]
        }
        else if  component == 3 {
            return subArray2[row]
        }
        else {
            return subArray2[row]
        }
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 4
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == 0 {
            return mainArray.count
        }
        else if component == 1 {
            return mainArray2.count
        }
        else if component == 2 {
            return subArray.count
        }
        else if component == 3 {
            return subArray2.count
        }
        else {
            return mainArray.count
        }
    }
    
    
    @IBAction func getValue() {
        if started == true {
            
        let main:String = mainArray[self.pickerMain.selectedRow(inComponent: 0)]
        let main2 :String = mainArray2[self.pickerMain.selectedRow(inComponent: 1)]
        let sub :String = subArray[self.pickerMain.selectedRow(inComponent: 2)]
        let sub2:String = subArray2[self.pickerMain.selectedRow(inComponent: 3 )]
            labelInfo.text = main + "," + main2 + "," + sub + "," + sub2
        
      //  started = false
            if foodsLabel.text == "카레" && main == "돼지고기" && main2 == "당근" && sub == "고구마" && sub2 == "설탕"{
                result = "카레"
               
            }
            else if foodsLabel.text == "돼지갈비" && main == "돼지고기" && main2 == "무" && sub == "마늘" && sub2 == "간장"{
                result = "돼지갈비"
               
            }
            else if foodsLabel.text == "소갈비" && main == "소고기" && main2 == "양파" && sub == "마늘" && sub2 == "간장"{
                result = "소갈비"
             
            }
            
            else if foodsLabel.text == "꽁치찌개" && main == "꽁치" && main2 == "무" && sub == "마늘" && sub2 == "간장"{
                result = "꽁치찌개"
            }
            else if foodsLabel.text == "김치찌개" && main == "김치" && main2 == "양파" && sub == "마늘" && sub2 == "소금"{
                result = "김치찌개"
            }
            
            else if foodsLabel.text == "갈치조림" && main == "갈치" && main2 == "양파" && sub == "마늘" && sub2 == "간장"{
                result = "갈치조림"
            }
            else {
                result = "실패"
            }
            
        
        }
    }
    
    
    
    
    @IBOutlet var resultCheck: UIButton!
    
    //화면전환코드
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        self.started = false
        if segue.identifier == "toOrderView"{
            let destVC = segue.destination as! OrderViewController
            
            //let destination = segue.destination.title
            
           // let button = sender as!UIButton
            //var outString: String = "성공"
            if result == "카레"{
                destVC.info = "카레 성공"
                self.started = false
            }
                
            else if result == "돼지갈비"{
                destVC.info = "돼지갈비 성공"
                self.started = false
                
            }
                
            else if result == "소갈비"{
                destVC.info = "소갈비 성공"
                self.started = false
            }
                
            else if result == "꽁치찌개"{
                destVC.info = "꽁치찌개 성공"
                self.started = false
            }
                
            else if result == "김치찌개"{
                destVC.info = "김치찌개 성공"
                self.started = false
            }
                
            else if result == "갈치조림"{
                destVC.info = "갈치조림 성공"
                self.started = false
                
            }
    
            else if result == "실패"{
                destVC.info = "실패"
                self.started = false
            }
            
            
        }
       // self.started = false
       
    }
    
    //UIPickerView 작동을 위한 메소드 정의
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.started = false
        // Do any additional setup after loading the view.
    }
    

}

