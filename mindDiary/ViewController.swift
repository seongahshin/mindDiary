//
//  ViewController.swift
//  mindDiary
//
//  Created by 신승아 on 2022/07/11.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var Result1: UILabel!
    
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var Result2: UILabel!
    
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var Result3: UILabel!
    
    @IBOutlet weak var button4: UIButton!
    @IBOutlet weak var Result4: UILabel!
    
    @IBOutlet weak var button5: UIButton!
    @IBOutlet weak var Result5: UILabel!
    
    @IBOutlet weak var button6: UIButton!
    @IBOutlet weak var Result6: UILabel!
    
    @IBOutlet weak var button7: UIButton!
    @IBOutlet weak var Result7: UILabel!
    
    @IBOutlet weak var button8: UIButton!
    @IBOutlet weak var Result8: UILabel!
    
    @IBOutlet weak var button9: UIButton!
    @IBOutlet weak var Result9: UILabel!
    
    var result1Number = 0
    var result2Number = 0
    var result3Number = 0
    var result4Number = 0
    var result5Number = 0
    var result6Number = 0
    var result7Number = 0
    var result8Number = 0
    var result9Number = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    

    @IBAction func button1Clicked(_ sender: Any) {
        result1Number += 1
        Result1.text = "사랑해 \(result1Number)"
    }
    
    
    @IBAction func button2Clicked(_ sender: Any) {
        result2Number += 1
        Result2.text = "좋아해 \(result2Number)"
    }
    
    @IBAction func button3Clicked(_ sender: Any) {
        result3Number += 1
        Result3.text = "당황해 \(result3Number)"
    }
    
    @IBAction func button4Clicked(_ sender: Any) {
        result4Number += 1
        Result4.text = "속상해 \(result4Number)"
    }
    
    @IBAction func button5Clicked(_ sender: Any) {
        result5Number += 1
        Result5.text = "우울해 \(result5Number)"
    }
    
    @IBAction func button6Clicked(_ sender: Any) {
        result6Number += 1
        Result6.text = "심심해 \(result6Number)"
    }
    @IBAction func button7Clicked(_ sender: Any) {
        result7Number += 1
        Result7.text = "행복해 \(result7Number)"
    }
    @IBAction func button8Clicked(_ sender: Any) {
        result8Number += 1
        Result8.text = "화가나 \(result8Number)"
    }
    
    @IBAction func button9Clicked(_ sender: Any) {
        result9Number += 1
        Result9.text = "슬퍼 \(result9Number)"
    }
    
    
    
}

