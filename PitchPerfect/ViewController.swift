//
//  ViewController.swift
//  PitchPerfect
//
//  Created by 骆鹏霄 on 27/10/2017.
//  Copyright © 2017 骆鹏霄. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // Code -> UI :IBOutlet
    @IBOutlet weak var recordingLabel: UILabel!
    @IBOutlet weak var recordButton: UIButton!
    @IBOutlet weak var stopRecordingButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        stopRecordingButton.isEnabled = false
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // Target Action press control pull to viewController:UI->Code:IBAction
    @IBAction func recordAudio(_ sender: Any) {
        print("record button pressed.")
        recordingLabel.text = "Recoding in progress..."
        stopRecordingButton.isEnabled = true
        recordButton.isEnabled = false
    }
    
    @IBAction func stopRecording(_ sender: Any) {
        print("stop recording button pressed.")
        recordButton.isEnabled = true
        stopRecordingButton.isEnabled = false
        recordingLabel.text = "Tap to Record"
    }
    
}

