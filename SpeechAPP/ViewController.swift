//
//  ViewController.swift
//  SpeechAPP
//
//  Created by 井関竜太郎 on 2021/01/10.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, AVSpeechSynthesizerDelegate{
    
    @IBOutlet weak var speech: UITextField!
    @IBOutlet weak var Button: UIButton!
    
    /** SpeechSynthesizerクラス */
    var talker = AVSpeechSynthesizer()
    let speechService = SpeechService()
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }
    
    
    
    @IBAction func set(_ sender: Any) {
        //    speechService.say("生殺与奪の権を他人に握らせるな")
    speechService.say("だから僕は待って待って未来を待って立ってずっと生きてるって感じてたかったからだから君を待って待って未来は待って待ってきっと巡り合った僕らは奇跡なんだどれだけ話せばわかってくれる？don't you think every timeあの空を染めてけ!!")
       // speechService.say("")
        }
    
    @IBAction func Button(_ sender: UIButton) {
        
        guard let text = speech.text else {
            return
        }
        // 話す内容をセット
        let utterance = AVSpeechUtterance(string: text)
        self.talker.delegate = self
        // 話す速度を設定（0.0〜1.0）
        utterance.rate = AVSpeechUtteranceMinimumSpeechRate
        // 声の高さを設定（0.5〜2.0）
        utterance.pitchMultiplier = 1.8
        // 言語を日本に設定
        utterance.voice = AVSpeechSynthesisVoice(language: "ja-JP")
        // 実行
        self.talker.speak(utterance)
    }
    
    
    
    
}

