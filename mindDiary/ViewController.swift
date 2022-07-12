//
//  ViewController.swift
//  mindDiary
//
//  Created by 신승아 on 2022/07/11.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var appTitle: UILabel!
    
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
    
    var resultNumber: [Int] = [0,0,0,0,0,0,0,0,0]
    var keyWord: [String] = ["사랑해","좋아해","당황해","속상해","우울해","심심해","행복해","화가나","슬퍼"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleDesign()
        button1.tag = 0
        button2.tag = 1
        button3.tag = 2
        button4.tag = 3
        button5.tag = 4
        button6.tag = 5
        button7.tag = 6
        button8.tag = 7
        button9.tag = 8
    }
    
    func titleDesign() {
        appTitle.font = .systemFont(ofSize: 20)
        appTitle.textColor = .black
    }
    
    func showAlertController() {
        // 1. 흰 바탕 : UIAlertController
        let alert = UIAlertController(title: "알림", message: "오늘의 감정 일기를 저장하시겠습니까?", preferredStyle: .alert)
        
        // 2. 버튼
        let ok = UIAlertAction(title: "네", style: .destructive, handler: nil)
        let cancel = UIAlertAction(title: "아니오", style: .cancel, handler: nil)

        // 3. 흰 바탕에 버튼 추가 (이 순서대로 추가됨)
        alert.addAction(cancel)
        alert.addAction(ok)
    
        
        // 4. present
        // completion 은 내부적으로 정보 얻을 때
        present(alert, animated: true, completion: nil)
    }
    
    func resultLable(_ labelName: UILabel, buttonName: UIButton) {
        labelName.text = #"\#(keyWord[buttonName.tag]) \#(resultNumber[buttonName.tag])"#
        showAlertController()
    }
    
    @IBAction func buttonClicked(_ sender: UIButton) {
        resultNumber[sender.tag] += 1
        resultLable(Result1, buttonName: button1)
    }
    
    @IBAction func buttonClicked1(_ sender: UIButton) {
        resultNumber[sender.tag] += 1
        resultLable(Result2, buttonName: button2)
    }
    
    @IBAction func buttonClicked2(_ sender: UIButton) {
        resultNumber[sender.tag] += 1
        resultLable(Result3, buttonName: button3)
    }
    
    @IBAction func buttonClicked3(_ sender: UIButton) {
        resultNumber[sender.tag] += 1
        resultLable(Result4, buttonName: button4)
    }
    
    @IBAction func buttonClicked4(_ sender: UIButton) {
        resultNumber[sender.tag] += 1
        resultLable(Result5, buttonName: button5)
    }
    
    @IBAction func buttonClicked5(_ sender: UIButton) {
        resultNumber[sender.tag] += 1
        resultLable(Result6, buttonName: button6)
    }
    
    @IBAction func buttonClicked6(_ sender: UIButton) {
        resultNumber[sender.tag] += 1
        resultLable(Result7, buttonName: button7)
    }
    
    @IBAction func buttonClicked7(_ sender: UIButton) {
        resultNumber[sender.tag] += 1
        resultLable(Result8, buttonName: button8)
    }
    
    @IBAction func buttonClicked8(_ sender: UIButton) {
        resultNumber[sender.tag] += 1
        resultLable(Result9, buttonName: button9)
    }
    
}

