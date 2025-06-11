//
//  ViewController.swift
//  Echoes
//
//  Created by Yavuz on 05/06/2025.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var storyBrain = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        choice1Button.titleLabel?.numberOfLines = 0
            choice1Button.titleLabel?.lineBreakMode = .byWordWrapping
            choice1Button.titleLabel?.textAlignment = .center

            choice2Button.titleLabel?.numberOfLines = 0
            choice2Button.titleLabel?.lineBreakMode = .byWordWrapping
            choice2Button.titleLabel?.textAlignment = .center
        
        updateUI()
        
    }

    
    @IBAction func choiceMade(_ sender: UIButton) {
        storyBrain.nextStory(userChoice: sender.currentTitle!)
        
        updateUI()
    }
    
    func updateUI() {
        storyLabel.text = storyBrain.getStoryTitle()
        choice1Button.setTitle(storyBrain.getChoice1(), for: .normal)
        choice2Button.setTitle(storyBrain.getChoice2(), for: .normal)
    }
    
    

    
}

