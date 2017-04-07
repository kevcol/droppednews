//
//  AudioViewController.swift
//  TVCTest
//
//  Created by Kevin Colligan on 3/2/17.
//  Copyright © 2017 Kevin Colligan. All rights reserved.
//

import UIKit
import AVFoundation

class AudioVC: UIViewController {
   
    var audioPlayer = AVAudioPlayer()
    var mp3: String!

    
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var mainImage: UIImageView!
    @IBOutlet weak var headline: UILabel!
    @IBOutlet weak var timestamp: UILabel!
    @IBOutlet weak var body: UITextView!
    
    //@IBOutlet weak var pauseButton: UIButton!
    @IBOutlet weak var playButton: UIButton!
    @IBOutlet weak var fwdButton: UIButton!
    
    private var _contentItem: ContentItem!
    
    var contentItem: ContentItem {
        
        get {
            return _contentItem
            
        } set {
            _contentItem = newValue
        }
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mainImage.image = contentItem.mainImage
        headline.text = contentItem.headline
        timestamp.text = contentItem.timestamp
        body.text = contentItem.body
        mp3 = contentItem.audioName
        
      
        do {
            
            audioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: mp3, ofType: "mp3")!))
            audioPlayer.prepareToPlay()
          
          // slider
          slider.maximumValue = Float(TimeInterval(audioPlayer.duration))
          
          _ = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(AudioVC.updateSlider), userInfo: nil, repeats: true)
          
          

          
            let audioSession = AVAudioSession.sharedInstance()
            
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
    

   
    @IBAction func Play(_ sender: Any) {
      
      if !audioPlayer.isPlaying {
        audioPlayer.play()
        playButton.setImage(UIImage(named:"pause.png"),for:UIControlState.normal)
        
      } else {
        
        audioPlayer.pause()
        playButton.setImage(UIImage(named:"play.png"),for:UIControlState.normal)

        
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
  
  
  @IBAction func scrubAudio(_ sender: UISlider) {
    
    audioPlayer.stop()
    audioPlayer.currentTime = TimeInterval(slider.value)
    audioPlayer.prepareToPlay()
    audioPlayer.play()
  }
  
//  func updateSlider() {
//    
//    slider.value = Float(audioPlayer.currentTime)
//   print("SCRUB")
//  }
  
  func updateSlider() {
    
    slider.value = Float(audioPlayer.currentTime)
  
    
  }

  
    
  
  
  }
    
  




























