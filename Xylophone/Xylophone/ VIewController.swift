//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer?
    let soundArr = ["note1", "note2", "note3", "note4", "note5", "note6", "note7"]

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func notePressed(_ sender: UIButton) {
        // Each button is tag -> sender.tag
        // Map all buttons to 1 function
        
        let selectedSoundFileName: String = soundArr[sender.tag - 1]        
        playSound(selectedFile: selectedSoundFileName)
    }
    
    func playSound(selectedFile: String) {

        let url = Bundle.main.url(forResource: selectedFile, withExtension: "wav")!
        
        do {
            player = try AVAudioPlayer(contentsOf: url)
            guard let player = player else { return }
            
            player.prepareToPlay()
            player.play()
            
        } catch let error {
            print(error)
        }
    }
}
