//
//  SesacViewController.swift
//  mindDiary
//
//  Created by 신승아 on 2022/07/12.
//

import UIKit

class SesacViewController:

    UIViewController {
    
    var emotionFirst = 0
    var emotionArray = [0,0]
    
    @IBOutlet weak var firstButton: UIButton!
    @IBOutlet weak var emotionFirstLabel: UILabel!
    @IBOutlet weak var emotionSecondLabel: UILabel!
    
    @IBOutlet weak var secondButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // 화면에 표시되는 거만 따로 빼준 거
        emotionFirstLabel.text = setUserNickname()
        firstButton.tag = 0
        secondButton.tag = 1
        
    }
    
    
    func setUserNickname() -> String{
        let nickname = ["고래밥" , "칙촉" , "격투가"]
        let select = nickname.randomElement()!
        
        return "저는 \(select)입니다"
    }

    @IBAction func emotionFirstButtonClicked(_ sender: UIButton) {
        
        emotionArray[sender.tag] += 1
        emotionFirstLabel.text = "\(emotionArray[0])"
        showAlertController()
    }
    
    func showAlertController() {
        // 1. 흰 바탕 : UIAlertController
        let alert = UIAlertController(title: "타이틀", message: "여기는 메시지가 들어갑니다", preferredStyle: .alert)
        
        // 2. 버튼
        let ok = UIAlertAction(title: "확인", style: .destructive, handler: nil)
        let cancel = UIAlertAction(title: "취소버튼입니다", style: .cancel, handler: nil)
        let web = UIAlertAction(title: "새 창으로 열기", style: .default, handler: nil)
        let copy = UIAlertAction(title: "복사하기", style: .default, handler: nil)
        
        // 3. 흰 바탕에 버튼 추가 (이 순서대로 추가됨)
        alert.addAction(copy)
        alert.addAction(web)
        alert.addAction(cancel)
        alert.addAction(ok)
        
        // 4. present
        // completion 은 내부적으로 정보 얻을 때
        present(alert, animated: true, completion: nil)
    }
    
}
