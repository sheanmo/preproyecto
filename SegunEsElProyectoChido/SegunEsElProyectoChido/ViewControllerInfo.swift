//
//  ViewControllerInfo.swift
//  SegunEsElProyectoChido
//
//  Created by Sheryl Anaya on 5/23/19.
//  Copyright © 2019 Sheryl Anaya. All rights reserved.
//

import UIKit

class ViewControllerInfo: UIViewController {
    var infor : Info = Info(trimester: "Primer Trimestre", week: "Semana 1", image: UIImage(named: "error (1)")!, description: "lorem ipsum jhsuehfubgudfg")
    
    @IBOutlet weak var trim: UILabel!
    
    @IBOutlet weak var wee: UILabel!
    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var desc: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        trim.text = infor.trimester
        wee.text = infor.week
        img.image = infor.image
        desc.text = infor.description
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
