//
//  OrderViewController.swift
//  middeProject01
//
//  Created by SWUCOMPUTER on 14/04/2019.
//  Copyright © 2019 SWUCOMPUTER. All rights reserved.
//

import UIKit

class OrderViewController: UIViewController {
    
    @IBOutlet var infoLabel: UILabel!
    var info: String!
    
    @IBOutlet var foodImageView: UIImageView!
    
    let careImage = UIImage(named: "care.jpg")
    let galchiImage = UIImage(named: "galchi.jpg")
    let gogoImage = UIImage(named: "gogo.jpg")
    let kkongchiImage = UIImage(named: "kkongchi.jpg")
    let porkgalbiImage = UIImage(named: "porkgalbi.jpg")
    let sogalbiImage = UIImage(named: "sogalbi.jpg")
    let failImage = UIImage(named: "fail.jpg")
    

    override func viewDidLoad() {
        //started = false
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    
        if let contentString = info {
            infoLabel.text = contentString
            if infoLabel.text == "실패"{
                foodImageView.image = failImage
            }
            else if infoLabel.text == "카레 성공"{
                foodImageView.image = careImage
            }
            else if infoLabel.text == "돼지갈비 성공"{
                foodImageView.image = porkgalbiImage
            }
            else if infoLabel.text == "소갈비 성공"{
                foodImageView.image = sogalbiImage
            }
            else if infoLabel.text == "꽁치찌개 성공"{
                foodImageView.image = kkongchiImage
            }
            else if infoLabel.text == "김치찌개 성공"{
                foodImageView.image = gogoImage
            }
            else if infoLabel.text == "갈치조림 성공"{
                foodImageView.image = galchiImage
            }
        }
    
    
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
