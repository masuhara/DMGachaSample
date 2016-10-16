//
//  ViewController.swift
//  Gacha
//
//  Created by Masuhara on 2016/10/15.
//  Copyright © 2016年 Masuhara. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // 変数の宣言
    var number = 0
    @IBOutlet weak var monsterImageView: UIImageView!
    @IBOutlet weak var gachaButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 初期設定
        monsterImageView.image = nil
        gachaButton.layer.cornerRadius = gachaButton.bounds.height / 2
        gachaButton.layer.masksToBounds = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func tapGachaButton() {
        
        // ガチャのアルゴリズム
        number = Int(arc4random_uniform(100))
        if number < 60 {
            monsterImageView.image = UIImage(named: "kamakiri@2x.png")
        } else if number >= 60 && number < 80 {
            monsterImageView.image = UIImage(named: "man@2x.png")
        } else {
            monsterImageView.image = UIImage(named: "woman@2x.png")
        }
        
        // アニメーション
        monsterImageView.alpha = 0.0
        UIView.animate(withDuration: 1.0) { 
            self.monsterImageView.alpha = 1.0
        }
    }
}

