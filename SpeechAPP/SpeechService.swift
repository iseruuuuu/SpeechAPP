import UIKit
import AVFoundation

class SpeechService {
    
    private let synthesizer = AVSpeechSynthesizer()
    // 再生速度を設定
    var rate: Float = AVSpeechUtteranceDefaultSpeechRate
    // 言語を英語に設定
    var voice = AVSpeechSynthesisVoice(language: "ja-JP")
    
    func say(_ phrase: String) {
        // 話す内容をセット
        let utterance = AVSpeechUtterance(string: phrase)
        utterance.rate = rate
        utterance.voice = voice
        
        utterance.rate = 0.5; // 読み上げ速度
        utterance.pitchMultiplier = 0.5; // 読み上げる声のピッチ
        utterance.preUtteranceDelay = 0.2; // 読み上げるまでのため
        
        synthesizer.speak(utterance)
    }
    
    func getVoices() {
        
        AVSpeechSynthesisVoice.speechVoices().forEach({ print($0.language) })
    }
}
