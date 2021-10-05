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
  }
}

