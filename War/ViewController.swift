//
//  ViewController.swift
//  War
//
//  Created by ilabuser on 7/15/18.
//  Copyright © 2018 Anson Lee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var LeftImageview: UIImageView!
    
    @IBOutlet weak var RightImageview: UIImageView!
    
    @IBOutlet weak var LeftScoreLabel: UILabel!
    
    @IBOutlet weak var RightScoreLabel: UILabel!
    var Leftscore = 0
    var Rightscore = 0
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func dealtapped(_ sender: Any) {
        //Randomize two numbers
        let leftRandomnumber = arc4random_uniform(13) + 2
        let rightRandomnumber = arc4random_uniform(13) + 2
        
        //change the image views
        
        LeftImageview.image = UIImage(named: "card\(leftRandomnumber)")
        RightImageview.image = UIImage(named: "card\(rightRandomnumber)")
        
        //compare the numbers
        
        if leftRandomnumber > rightRandomnumber {
            //update the score
            Leftscore += 1
            //update the label
            LeftScoreLabel.text = String(Leftscore)
            
        }
        else if rightRandomnumber > leftRandomnumber{
            //update the score
            Rightscore += 1
            //update the label
            RightScoreLabel.text = String(Rightscore)
    
            
            
            
        }
        
        else if leftRandomnumber == rightRandomnumber {}
        
        
    
    
    
    
    
    
    }
    
}

