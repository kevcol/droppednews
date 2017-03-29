//
//  AudioViewController.swift
//  TVCTest
//
//  Created by Kevin Colligan on 3/2/17.
//  Copyright © 2017 Kevin Colligan. All rights reserved.
//

import UIKit
import AVFoundation

class AudioViewController: UIViewController {
   
    var audioPlayer = AVAudioPlayer()

    @IBOutlet weak var pauseButton: UIButton!
    @IBOutlet weak var playButton: UIButton!
    @IBOutlet weak var fwdButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        do {
            
            audioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "changing-lives_changing-the-world", ofType: "mp3")!))
            audioPlayer.prepareToPlay()
            
            var audioSession = AVAudioSession.sharedInstance()
            
            do {
                try audioSession.setCategory(AVAudioSessionCategoryPlayback)
            }
            
            catch {
                
                print(error)
            }
            
        }
        catch {
            print(error)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func Play(_ sender: Any) {
        audioPlayer.play()
    }
    

    @IBAction func Pause(_ sender: Any) {
        if audioPlayer.isPlaying {
            
            audioPlayer.pause()
        } else {
            
        }
    }
    
    
    @IBAction func rwd15(_ sender: Any) {
        
        let currentTime = audioPlayer.currentTime
        if currentTime < 15.0 {
            
            audioPlayer.currentTime = 0
            audioPlayer.play()
            
        } else {
            
            audioPlayer.currentTime = currentTime - 15
            audioPlayer.play()
        }

    }
    
    @IBAction func fwd15(_ sender: Any) {
        
        let currentTime = audioPlayer.currentTime
        let futureTime = currentTime + 15.0
        
        if futureTime < audioPlayer.duration {
            
            audioPlayer.pause()
            audioPlayer.currentTime = futureTime
            audioPlayer.play()
            print(audioPlayer.currentTime)
            
        } else {
            
            // FEATURE REQUEST
            // FWD button: Flash Red, then fade to gray in final 0:15 of the audio file
        }
    }
    
  

}


