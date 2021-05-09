//
//  ViewController.swift
//  emojinolTest
//
//  Created by Mercedes Moore on 5/9/21.
//

import UIKit

class ViewController: UIViewController {
    
    let emojis = ["😃": "happy", "🥰": "lovey", "😬": "nervous", "😭": "sad", "😐": "ok", "🤬": "angry"]
    let customMessages = ["happy": ["woohoo! keep those good vibes", "good vibes all around", "nothing but smiles here!", "i'm glad that you're glad", "dance party !!!"], "lovey": ["ooh lala!", "who's the special crush???", "simp nation", "awww!!", "how cute !"], "nervous": ["deep breaths. you've got this!", "take action with what you can control and accept the things you cannot", "this too shall pass", "all is well", "everything will be ok in the end, and if it is not ok, it is not the end"], "sad": ["cry it out! it's ok", "take care of yourself today", "your feelings are valid; allow yourself to feel them", "sometimes it gets harder before it gets easier, but it will get better"], "ok": ["glad you're doing ok!", "let's spice things up today! do something fun!", "try a smile", "try something new today", "enjoy yourself and let loose"], "angry": ["deep breaths!", "it's ok to feel upset, just don't make any rash decisions", "take some time to yourself, then come back and try to sort this out", "rant it out!", "scream it out!"]]
    
    
    @IBAction func showMessage(sender:UIButton) {
        let selectedEmotion = (sender.titleLabel?.text)!
        let options = customMessages[emojis[selectedEmotion]!]!
        let num = Int.random(in: 0...5)
        let emojiMessage = options[num]
        
        
        
        let alertController = UIAlertController()
        alertController.addAction(UIAlertAction(title: emojiMessage, style: UIAlertAction.Style.default, handler: nil))
        present(alertController, animated: true, completion: nil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

