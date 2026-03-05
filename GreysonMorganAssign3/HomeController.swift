//
//  ViewController.swift
//  GreysonMorganAssign3
//
//  Created by Morgan, Ashley F. on 3/4/26.
//

import UIKit

class HomeController: UIViewController, ReviewController.HomeDelegate {
    
    
    @IBOutlet weak var reviewButton: UIButton!
    @IBOutlet weak var reviewLabel: UILabel!
    @IBAction func soupButtonTapped(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        if let vc = storyboard.instantiateViewController(withIdentifier: "RecipeController") as? RecipeController {
            present(vc, animated: true)
            vc.recipeImage.image = UIImage(named: "soup")
            vc.recipeLabel.text = "Creamy Potato Soup"
            vc.recipeText.text = "Ingredients:\n- 2 bags frozen Potatoes O'Brien\n- 2 cans cream of celery soup\n- 6 oz shredded cheese\n- 1 package cream cheese\n- 1/4 stick butter\n- 4 oz container sour cream\n\nInstructions:\n1. Put all ingredients into large crock pot\n2. Add water to fill to above ingredients\n3. Cook for 5 hours on high heat\n4. Serve with crackers and sliced cheese"
        }
    }
    @IBAction func cookieButtonTapped(_ sender: Any) {
        performSegue(withIdentifier: "cookieSegue", sender: self)
    }
    
    @IBAction func saladButtonTapped(_ sender: Any) {
        performSegue(withIdentifier: "saladSegue", sender: self)
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
    
    func updateReview(rating: Int) {
        reviewLabel.text = "Your rating: \(rating)/5"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "cookieSegue") {
            let dest = segue.destination as! RecipeController
            dest.recipeLabelTemp = "Peanut Butter Cookies"
            dest.recipeImageTemp = UIImage(named: "cookies")
            dest.recipeTextTemp = "Ingredients:\n- 1 cup peanut butter\n- 1 cup white suger\n- 1 large egg\n\nInstructions:\n1. Preheat oven to 325°F\n2. In a mixing bowl, combine peanut butter, sugar, and egg until mixture is even\n3. Roll dough into 1\" balls and place onto a nonstick baking sheet\n4. Use a fork to press cross-hatches into the top of each cookie\n5. Bake for 10-12 minutes and let cool"
        } else if(segue.identifier == "saladSegue") {
            let dest = segue.destination as! RecipeController
            dest.recipeLabelTemp = "Granny Salad"
            dest.recipeImageTemp = UIImage(named: "salad")
            dest.recipeTextTemp = "Ingredients:\n- 1 can crushed pineapple\n- 2 large cans Mandarin oranges\n- 1 large container small curd cottage cheese\n- 2 small containers cool whip\n- 3 packages orange jello\n\nInstructions:\n1. In a colander, drain the juice from the pineapple and oranges\n2. In a separate bowl, mix the cool whip and jello until fully mixed\n3. Add cottage cheese to cool whip mixture\n4. Add drained pineapple and oranges\n5. Let sit in refrigerator for 8 hours"
        } else if(segue.identifier == "reviewSegue") {
            let dest = segue.destination as! ReviewController
            dest.delegate = self
        }
    }


}

