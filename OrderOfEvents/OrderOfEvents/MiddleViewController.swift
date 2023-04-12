//
//  MiddleViewController.swift
//  OrderOfEvents
//
//  Created by Christian Hernandez on 4/11/23.
//

import UIKit

class MiddleViewController: UIViewController {

   
    @IBOutlet weak var middleLabel: UILabel!
    
    var eventNumber: Int = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addEvent(from: "ViewDidLoad")

    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        addEvent(from: "ViewWillAppear")
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated); addEvent(from: "ViewDidAppear")
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated); addEvent(from: "ViewWillDisappear")
    }
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated); addEvent(from: "viewDidDisappear")
    }
        func addEvent(from: String){
            if let existingText = middleLabel.text {
                middleLabel.text = "\(existingText) Event Number \(eventNumber) was \(from)"
                eventNumber += 1
            }
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


