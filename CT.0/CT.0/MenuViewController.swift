//
//  MenuViewController.swift
//  CT.0
//
//  Created by Nathan Maglasang on 10/5/2024.
//

import UIKit

class MenuViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //wtrprogress.transform = CGAffineTransformMakeRotation(Double.pi/(-2));
        //clrprogress.transform = CGAffineTransformMakeRotation(Double.pi/(-2));
        //clrprogress.transform = clrprogress.transform.scaledBy(x: 1, y: 15)
        //wtrprogress.transform = wtrprogress.transform.scaledBy(x: 1, y: 15)
       // graphimage.transform = CGAffineTransformMakeRotation(Double.pi/(-2));
        // Do any additional setup after loading the view.
    }
  //  @IBOutlet weak var graphimage: UIImageView!
    //@IBOutlet weak var clrprogress: UIProgressView!
    //@IBOutlet weak var wtrprogress: UIProgressView!
    @IBOutlet weak var switchToNewStoryboard: UIButton!
    
    @IBAction func switchToNewStoryboard(_ sender: UIButton) {
        // Load the new storyboard
        let storyboard = UIStoryboard(name: "Tracker", bundle: nil)
        
        // Instantiate the initial view controller from the new storyboard
        let newViewController = storyboard.instantiateInitialViewController()
        
        // Present the new view controller
        if let newViewController = newViewController {
            present(newViewController, animated: true, completion: nil)
        }
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
