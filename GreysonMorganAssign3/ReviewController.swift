//
//  ReviewController.swift
//  GreysonMorganAssign3
//
//  Created by Morgan, Ashley F. on 3/4/26.
//

import UIKit

class ReviewController: UIViewController {
    @IBAction func reviewButtonTapped(_ sender: UIButton) {
        if let star = sender.title(for: .normal) {
            switch(star) {
            case "Poor":
                break
            default:
                break
            }
        }
    }
    @IBAction func submitButtonTapped(_ sender: Any) {
    }
    
    @IBOutlet weak var reviewLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
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
