//
//  ViewController.swift
//  GreysonMorganAssign3
//
//  Created by Morgan, Ashley F. on 3/4/26.
//

import UIKit

class HomeController: UIViewController {

    @IBOutlet weak var reviewButton: UIButton!
    @IBOutlet weak var reviewLabel: UILabel!
    @IBAction func soupButtonTapped(_ sender: Any) {
        performSegue(withIdentifier: "soupSegue", sender: self)
    }
    
    @IBOutlet weak var saladButton: UIButton!
    @IBOutlet weak var soupButton: UIButton!
    @IBOutlet weak var cookieButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        reviewButton.layer.cornerRadius = 12
        soupButton.layer.cornerRadius = 12
        saladButton.layer.cornerRadius = 12
        cookieButton.layer.cornerRadius = 12
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "soupSegue") {
            if let dest = segue.destination as? RecipeController {
                dest.recipeName = "soup"
            }
        } else if(segue.identifier == "saladSegue") {
            if let dest = segue.destination as? RecipeController {
                dest.recipeName = "salad"
            }
        } else if(segue.identifier == "cookieSegue") {
            if let dest = segue.destination as? RecipeController {
                dest.recipeName = "cookie"
            }
        }
    }


}

