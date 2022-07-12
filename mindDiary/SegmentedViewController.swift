//
//  SegmentedViewController.swift
//  mindDiary
//
//  Created by 신승아 on 2022/07/12.
//

import UIKit

enum MusicType: Int {
    case all = 0
    case korea = 1
    case other = 2
}

class SegmentedViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        segmentControlValueChanged(segmentedControl)

        
    }
    

    @IBAction func segmentControlValueChanged(_ sender: UISegmentedControl) {
        
        if segmentedControl.selectedSegmentIndex == MusicType.all.rawValue {
            
        } else if segmentedControl.selectedSegmentIndex == MusicType.all.rawValue {
            
        }
        
        
        if segmentedControl.selectedSegmentIndex == 0 {
            resultLabel.text = "첫번째 세그먼트 선택"
        } else if segmentedControl.selectedSegmentIndex == 1 {
            resultLabel.text = "두 번째 세그먼트 선택"
        } else if segmentedControl.selectedSegmentIndex == 2 {
            resultLabel.text = "세 번째 세그먼트 선택"
        }
    }
    

}
