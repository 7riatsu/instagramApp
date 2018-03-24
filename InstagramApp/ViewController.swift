//
//  ViewController.swift
//  InstagramApp
//
//  Created by 成田篤基 on 2018/03/17.
//  Copyright © 2018年 Atsuki Narita. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var myImageView: UIImageView!
    @IBOutlet weak var myScrollView: UIScrollView!
    
    let coverView = UIView()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        coverView.frame = CGRect(x: 0, y: 0, width: myImageView.frame.width, height: myImageView.frame.height)
        
        myImageView.addSubview(coverView)
        
        myScrollView.contentSize = CGSize(width: 730, height: 150)

        setEffectGroup(x: CGFloat(10), action: #selector(ViewController.tappedOriginalBtn(_:)), color: UIColor.clear, text: "Original")
        setEffectGroup(x: CGFloat(100), action: #selector(ViewController.tappedRedBtn(_:)), color: UIColor.red, text: "Red")
        setEffectGroup(x: CGFloat(190), action: #selector(ViewController.tappedGreenBtn(_:)), color: UIColor.green, text: "Green")
        setEffectGroup(x: CGFloat(280), action: #selector(ViewController.tappedBlueBtn(_:)), color: UIColor.blue, text: "Blue")
        setEffectGroup(x: CGFloat(370), action: #selector(ViewController.tappedYellowBtn(_:)), color: UIColor.yellow,  text: "Yellow")
        setEffectGroup(x: CGFloat(460), action: #selector(ViewController.tappedPurpleBtn(_:)), color: UIColor.purple, text: "Purple")
        setEffectGroup(x: CGFloat(550), action: #selector(ViewController.tappedCyanBtn(_:)), color: UIColor.cyan, text: "Cyan")
        setEffectGroup(x: CGFloat(640), action: #selector(ViewController.tappedWhiteBtn(_:)), color: UIColor.white, text: "White")
    }
    
    func setEffectGroup(x: CGFloat, action: Selector, color: UIColor, text: String) {
        let originalBtn = makeButton(x: x, action: action)
        myScrollView.addSubview(originalBtn)
        let originalBtnCoverView = makeButtonCoverView(color: color)
        originalBtn.addSubview(originalBtnCoverView)
        let originalLabel = makeEffectLabel(x: x, text: text)
        myScrollView.addSubview(originalLabel)
    }
    
    func makeEffectLabel(x: CGFloat, text: String) -> UILabel{
        let effectLabel = UILabel()
        effectLabel.frame = CGRect(x: x, y: 110, width: 80, height: 20)
        effectLabel.text = text
        effectLabel.font = UIFont(name: "Helvetica-Light",size: CGFloat(15))
        effectLabel.textAlignment = NSTextAlignment.center
        effectLabel.textColor = UIColor.white
        return effectLabel
    }
    
    func makeButtonCoverView(color: UIColor) -> UIView {
        let buttonCoverView = UIView()
        buttonCoverView.frame = CGRect(x: 0, y: 0, width: 80, height: 80)
        buttonCoverView.backgroundColor = color
        buttonCoverView.alpha = 0.1
        buttonCoverView.isUserInteractionEnabled = false
        return buttonCoverView
    }
    
    func makeButton(x: CGFloat, action: Selector )-> UIButton{
        let button = UIButton()
        button.frame = CGRect(x: x, y: 30, width: 80, height: 80)
        button.addTarget(self, action: action, for: .touchUpInside)
        button.setBackgroundImage(UIImage(named: "cat.png" ), for: UIControlState.normal)
        button.clipsToBounds = true
        button.layer.cornerRadius = 3.0
        return button
    }
    
    @objc func tappedOriginalBtn(_ sender: UIButton){
        print("OriginalButtonがタップされた。")
        coverView.backgroundColor = UIColor.clear
        coverView.alpha = 0.1
    }
    
    @objc func tappedRedBtn(_ sender: UIButton){
        print("RedButtonがタップされた。")
        coverView.backgroundColor = UIColor.red
        coverView.alpha = 0.1
    }
    
    @objc func tappedGreenBtn(_ sender: UIButton){
        print("GreenButtonがタップされた。")
        coverView.backgroundColor = UIColor.green
        coverView.alpha = 0.1
    }
    
    @objc func tappedBlueBtn(_ sender: UIButton){
        print("BlueButtonがタップされた。")
        coverView.backgroundColor = UIColor.blue
        coverView.alpha = 0.1
    }
    
    @objc func tappedYellowBtn(_ sender: UIButton){
        print("YellowButtonがタップされた。")
        coverView.backgroundColor = UIColor.yellow
        coverView.alpha = 0.1
    }
    
    @objc func tappedPurpleBtn(_ sender: UIButton){
        print("PurpleButtonがタップされた。")
        coverView.backgroundColor = UIColor.purple
        coverView.alpha = 0.1
    }
    
    @objc func tappedCyanBtn(_ sender: UIButton){
        print("CyanButtonがタップされた。")
        coverView.backgroundColor = UIColor.cyan
        coverView.alpha = 0.1
    }
    
    @objc func tappedWhiteBtn(_ sender: UIButton){
        print("WhiteButtonがタップされた。")
        coverView.backgroundColor = UIColor.white
        coverView.alpha = 0.1
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

