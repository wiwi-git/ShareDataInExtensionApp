//
//  ViewController.swift
//  BundleTest
//
//  Created by 위대연 on 2020/11/05.
//

import UIKit
class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        let giturl = "https://github.com/wiwi-git"
        let shared = SharedUserDefaults()
        shared.setValue(giturl, forKey: .gitUrl)
        guard let sharedUrl = shared.string(forKey: .gitUrl) else { return }
        print("ViewController sharedUrl : \(sharedUrl)")
    }
}
