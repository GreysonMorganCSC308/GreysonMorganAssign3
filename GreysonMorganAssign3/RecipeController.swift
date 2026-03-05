//
//  RecipeController.swift
//  GreysonMorganAssign3
//
//  Created by Morgan, Ashley F. on 3/4/26.
//

import UIKit

class RecipeController: UIViewController {

    @IBOutlet weak var recipeText: UITextView!
    @IBOutlet weak var recipeImage: UIImageView!
    @IBOutlet weak var recipeLabel: UILabel!
    
    var recipeTextTemp: String?
    var recipeImageTemp: UIImage?
    var recipeLabelTemp: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        recipeText.text = recipeTextTemp
        recipeImage.image = recipeImageTemp
        recipeLabel.text = recipeLabelTemp
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
