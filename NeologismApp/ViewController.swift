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
  let newWords: [String: String] = [
    "킹받네": "엄청 열 받네",
    "삼귀자": "사귀기 전 단계인 썸 단계",
    "구취": "구독 취소",
    "스세권": "스타벅스 근처 거주지",
    "갑통알": "갑자기 통장을 보니 알바해야 할 것 같다.",
    "만반잘부": "만나서 반가워 잘 부탁해",
    "꾸안꾸": "꾸민듯 안꾸민듯 꾸민 스타일",
    "오저치고": "오늘 저녁 치킨 고?",
    "별다줄": "벌걸 다 줄이네;;",
    "오놀아놈": "오~ 놀 줄 아는 놈인가",
    "자만추": "자연스러운 만남 추구",
    "사바사": "사람 by 사람 (사람마다 다르다)"
  ]
  
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

