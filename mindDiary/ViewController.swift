//
//  ViewController.swift
//  mindDiary
//
//  Created by 신승아 on 2022/07/11.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var clearButton: UIButton!
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
    
    enum keyWord: String {
        case love = "사랑해"
        case like = "좋아해"
        case embarassed = "당황해"
        case sad = "속상해"
        case blue = "우울해"
        case bord = "심심해"
        case cloudnine = "행복해"
        case mad = "화가나"
        case tear = "슬퍼"
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleDesign()
        clearButtonDesign()
        Result1.text = "\(keyWord.love.rawValue) \(UserDefaults.standard.integer(forKey: "one"))"
        Result2.text = "\(keyWord.like.rawValue) \(UserDefaults.standard.integer(forKey: "two"))"
        Result3.text = "\(keyWord.embarassed.rawValue) \(UserDefaults.standard.integer(forKey: "three"))"
        Result4.text = "\(keyWord.sad.rawValue) \(UserDefaults.standard.integer(forKey: "four"))"
        Result5.text = "\(keyWord.blue.rawValue) \(UserDefaults.standard.integer(forKey: "five"))"
        Result6.text = "\(keyWord.bord.rawValue) \(UserDefaults.standard.integer(forKey: "six"))"
        Result7.text = "\(keyWord.cloudnine.rawValue) \(UserDefaults.standard.integer(forKey: "seven"))"
        Result8.text = "\(keyWord.mad.rawValue) \(UserDefaults.standard.integer(forKey: "eight"))"
        Result9.text = "\(keyWord.tear.rawValue) \(UserDefaults.standard.integer(forKey: "nine"))"
    }
    
    func clearButtonDesign() {
        clearButton.setTitle("기록 지우기", for: .normal)
        clearButton.backgroundColor = .darkGray
        clearButton.setTitleColor(.white, for: .normal)
    }
    func titleDesign() {
        
        appTitle.font = .systemFont(ofSize: 20)
        appTitle.textColor = .black
    }
    
    func showAlertController() {
        // 1. 흰 바탕 : UIAlertController
        let alert = UIAlertController(title: "알림", message: "감정일기가 저장되었습니다.", preferredStyle: .alert)
        
        // 2. 버튼
        let ok = UIAlertAction(title: "확인", style: .destructive, handler: nil)

        // 3. 흰 바탕에 버튼 추가 (이 순서대로 추가됨)
        alert.addAction(ok)
    
        
        // 4. present
        // completion 은 내부적으로 정보 얻을 때
        present(alert, animated: true, completion: nil)
    }
    
    @IBAction func buttonClicked(_ sender: UIButton) {
        // 기존 데이터값 가져오기
        let firstValue = UserDefaults.standard.integer(forKey: "one")
        // 감정 + 1
        let firstupdateValue = firstValue + 1
        
        // 감정 + 1
        // 새로운 값 저장
        UserDefaults.standard.set(firstupdateValue,forKey: "one")
        // 새로운 값 레이블에 보이기
        Result1.text = "\(keyWord.love.rawValue) \(UserDefaults.standard.integer(forKey: "one"))"
        showAlertController()
    }
    
    @IBAction func buttonClicked1(_ sender: UIButton) {
        // 기존 데이터값 가져오기
        let SecondValue = UserDefaults.standard.integer(forKey: "two")
        // 감정 + 1
        let SecondupdateValue = SecondValue + 1
        // 새로운 값 저장
        UserDefaults.standard.set(SecondupdateValue,forKey: "two")
        // 새로운 값 레이블에 보이기
        Result2.text = "\(keyWord.like.rawValue) \(UserDefaults.standard.integer(forKey: "two"))"
        showAlertController()
        
    }
    
    @IBAction func buttonClicked2(_ sender: UIButton) {
        // 기존 데이터값 가져오기
        let ThirdValue = UserDefaults.standard.integer(forKey: "three")
        // 감정 + 1
        let ThirdupdateValue = ThirdValue + 1
        // 새로운 값 저장
        UserDefaults.standard.set(ThirdupdateValue,forKey: "three")
        // 새로운 값 레이블에 보이기
        Result3.text = "\(keyWord.embarassed.rawValue) \(UserDefaults.standard.integer(forKey: "three"))"
        showAlertController()
        
    }
    
    @IBAction func buttonClicked3(_ sender: UIButton) {
        // 기존 데이터값 가져오기
        let ForthValue = UserDefaults.standard.integer(forKey: "four")
        // 감정 + 1
        let ForthupdateValue = ForthValue + 1
        // 새로운 값 저장
        UserDefaults.standard.set(ForthupdateValue,forKey: "four")
        // 새로운 값 레이블에 보이기
        Result4.text = "\(keyWord.sad.rawValue) \(UserDefaults.standard.integer(forKey: "four"))"
        showAlertController()
     
    }
    
    @IBAction func buttonClicked4(_ sender: UIButton) {
        let FifthValue = UserDefaults.standard.integer(forKey: "five")
        // 감정 + 1
        let FifthupdateValue = FifthValue + 1
        // 새로운 값 저장
        UserDefaults.standard.set(FifthupdateValue,forKey: "five")
        // 새로운 값 레이블에 보이기
        Result5.text = "\(keyWord.blue.rawValue) \(UserDefaults.standard.integer(forKey: "five"))"
        showAlertController()
    

    }
    
    @IBAction func buttonClicked5(_ sender: UIButton) {
        let SixthValue = UserDefaults.standard.integer(forKey: "six")
        // 감정 + 1
        let SixthupdateValue = SixthValue + 1
        // 새로운 값 저장
        UserDefaults.standard.set(SixthupdateValue,forKey: "six")
        // 새로운 값 레이블에 보이기
        Result6.text = "\(keyWord.bord.rawValue) \(UserDefaults.standard.integer(forKey: "six"))"
        showAlertController()

    }
    
    @IBAction func buttonClicked6(_ sender: UIButton) {
        let SeventhValue = UserDefaults.standard.integer(forKey: "seven")
        // 감정 + 1
        let SeventhupdateValue = SeventhValue + 1
        // 새로운 값 저장
        UserDefaults.standard.set(SeventhupdateValue,forKey: "seven")
        // 새로운 값 레이블에 보이기
        Result7.text = "\(keyWord.cloudnine.rawValue) \(UserDefaults.standard.integer(forKey: "seven"))"
        showAlertController()
    }
    
    @IBAction func buttonClicked7(_ sender: UIButton) {
        let EighthValue = UserDefaults.standard.integer(forKey: "eight")
        // 감정 + 1
        let EighthupdateValue = EighthValue + 1
        // 새로운 값 저장
        UserDefaults.standard.set(EighthupdateValue,forKey: "eight")
        // 새로운 값 레이블에 보이기
        Result8.text = "\(keyWord.mad.rawValue) \(UserDefaults.standard.integer(forKey: "eight"))"
        showAlertController()
    }
    
    @IBAction func buttonClicked8(_ sender: UIButton) {
        let NinethValue = UserDefaults.standard.integer(forKey: "nine")
        // 감정 + 1
        let NinethupdateValue = NinethValue + 1
        // 새로운 값 저장
        UserDefaults.standard.set(NinethupdateValue,forKey: "nine")
        // 새로운 값 레이블에 보이기
        Result9.text = "\(keyWord.tear.rawValue) \(UserDefaults.standard.integer(forKey: "nine"))"
        showAlertController()
    }
    
    func ClearResult(_ LabelName:UILabel, textResult: String) {
        LabelName.text = textResult
    }
    // 버튼 누르고 앱 재실행하면 기록 초기화
    @IBAction func dataClear(_ sender: UIButton) {
        for key in UserDefaults.standard.dictionaryRepresentation().keys {
                    UserDefaults.standard.removeObject(forKey: key.description)
                }
        ClearResult(Result1, textResult: keyWord.love.rawValue)
        ClearResult(Result2, textResult: keyWord.like.rawValue)
        ClearResult(Result3, textResult: keyWord.embarassed.rawValue)
        ClearResult(Result4, textResult: keyWord.sad.rawValue)
        ClearResult(Result5, textResult: keyWord.blue.rawValue)
        ClearResult(Result6, textResult: keyWord.bord.rawValue)
        ClearResult(Result7, textResult: keyWord.cloudnine.rawValue)
        ClearResult(Result8, textResult: keyWord.mad.rawValue)
        ClearResult(Result9, textResult: keyWord.tear.rawValue)
    }
    
    
}

