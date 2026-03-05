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
    
    var recipeName: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        switch(recipeName) {
        case "soup":
            recipeLabel.text = "Creamy Potato Soup"
            recipeImage.image = UIImage(named: "soup")
            recipeText.text = "TODO: Add recipe here"
            break
        case "salad":
            recipeLabel.text = "Granny Salad"
            recipeImage.image = UIImage(named: "salad")
            recipeText.text = "TODO: Add recipe here"
            break
        case "cookie":
            recipeLabel.text = "Peanut Butter Cookies"
            recipeImage.image = UIImage(named: "cookies")
            recipeText.text = "Ingredients:\n- 1 cup peanut butter\n- 1 cup white suger\n- 1 large egg\n\nInstructions:\n1. Preheat oven to 325°F\n2. In a mixing bowl, combine peanut butter, sugar, and egg until mixture is even\n3. Roll dough into 1\" balls and place onto a nonstick baking sheet\n4. Use a fork to press cross-hatches into the top of each cookie\n5. Bake for 10-12 minutes and let cool"
        default:
            break
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
