//
//  ViewController.swift
//  Wordle
//
//  Created by Maksim Zlatkin on 3/28/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var MainStackView: UIStackView!
    @IBOutlet var Keyboard: [UIButton]!
    @IBOutlet var LabelCollection: [UILabel]!
    
    var dictionary : Dictionary = Dictionary()
    
    var currentTag = 0;
    var row = 0;
    var currentWord : String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        for label in LabelCollection {
            label.layer.masksToBounds = true;
            label.layer.cornerRadius = 5;
        }
        
        for button in Keyboard {
            button.layer.cornerRadius = 3;
        }
        
        dictionary.Test()
    }

    @IBAction func KeyPressed(_ sender: UIButton) {
        if sender.titleLabel?.text == "⌫" {
            print(currentTag)
            if (currentTag != 4 || (currentTag == 4 && LabelCollection[to1D()].text == "")){
                previousIndex()
            }
            currentWord = String(currentWord.prefix(currentWord.count - 1))
            print(currentWord)
            LabelCollection[to1D()].text = ""
            return;
        }
        if (sender.titleLabel?.text == "➜") {
            print(currentWord)
            return;
        }
        let title = sender.titleLabel?.text
        currentWord += title!
        LabelCollection[to1D()].text = title!
        nextIndex()
        print("\(title!) \(currentTag)")
    }
    
    func to1D() -> Int {
        return row * 5 + currentTag
    }
    
    func nextIndex() {
        if currentTag != 4 {
            currentTag += 1;
        }
    }
    
    func previousIndex() {
        if currentTag != 0 {
            currentTag -= 1;
        }
    }
    
}

