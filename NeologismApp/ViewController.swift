//
//  ViewController.swift
//  NeologismApp
//
//  Created by KEEN on 2021/10/05.
//

import UIKit

class ViewController: UIViewController {

  // MARK: UI
  @IBOutlet weak var searchView: UIView!
  
  @IBOutlet weak var tagOneButotn: UIButton!
  @IBOutlet weak var tagTwoButotn: UIButton!
  @IBOutlet weak var tagThreeButotn: UIButton!
  @IBOutlet weak var tagFourButotn: UIButton!
  
  @IBOutlet weak var resultLabel: UILabel!
  @IBOutlet weak var textField: UITextField!
  // MARK: Properties
  let newWords: [String: String] = ["킹받네": "엄청 열 받네", "삼귀자": "사귀기 전 단계인 썸 단계"]
  
  // MARK: View Life-Cycle
  override func viewDidLoad() {
    super.viewDidLoad()
    viewConfigure()
    tagConfigure([tagOneButotn, tagTwoButotn, tagThreeButotn, tagFourButotn])
  }
  
  // MARK: Configure
  func viewConfigure() {
    searchView.layer.borderColor = UIColor.black.cgColor
    searchView.layer.borderWidth = CGFloat(2)
  }
  
  func tagConfigure(_ buttons: [UIButton]) {
    for b in buttons {
      b.layer.borderColor = UIColor.black.cgColor
      b.layer.borderWidth = CGFloat(1)
      b.layer.cornerRadius = CGFloat(8)
    }
  }

  // MARK: Action
  @IBAction func onSearch(_ sender: UIButton) {
    let key = textField.text ?? ""
    
    if let exsistValue = newWords[key] {
      resultLabel.text = exsistValue
    } else {
      resultLabel.text = "일치하는 신조어가 없습니다."
    }
  }
}

