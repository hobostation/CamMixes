//
//  ViewControllerSpring.swift
//  CamMixes
//
//  Created by Robbie James on 08/03/2016.
//  Copyright © 2016 Hobostation. All rights reserved.
//

import UIKit
import AVFoundation


class ViewControllerSpring: UIViewController {
    
    
    
    var musicPlayer: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        
        
        
        
        
        
        
        initAudio()
        
        
        
        // Do any additional setup after loading the view.
    }
    
    
    
    func initAudio() {
        
        let path = NSBundle.mainBundle().pathForResource("CamTymor1-Gwanwyn", ofType: "mp3")!
        
        do {
            
            musicPlayer = try AVAudioPlayer(contentsOfURL: NSURL(string: path)!)
            musicPlayer.prepareToPlay()
            musicPlayer.numberOfLoops = -1
            
            
            
        } catch let err as NSError {
            print(err.debugDescription)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    /*
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    // Get the new view controller using segue.destinationViewController.
    // Pass the selected object to the new view controller.
    }
    */
    
    override func prefersStatusBarHidden() -> Bool {
        return true
    }
    
    
    @IBAction func springPlayPressed(sender: UIButton) {
        
        if musicPlayer.playing {
            
            musicPlayer.stop()
            
            
            // for normal state
            sender.setImage(UIImage(named: "play.png"), forState: UIControlState.Normal)
            
            
        } else {
            musicPlayer.play()
            
            
             
            // for Highlighted state
            sender.setImage(UIImage(named: "Pause.png"), forState: UIControlState.Normal)
        }
    }
    
    
    
}


