//
//  ReviewController.swift
//  GreysonMorganAssign3
//
//  Created by Morgan, Ashley F. on 3/4/26.
//

import UIKit

class ReviewController: UIViewController {
    
    weak var delegate : HomeDelegate?
    
    @IBOutlet var starButtons: [UIButton]!
    var rating: Int = 0
    
    @IBAction func reviewButtonTapped(_ sender: UIButton) {
        rating = sender.tag
        guard rating > 0 else {return}
        updateStars(rating: rating)
    }
    
    func updateStars(rating: Int) {
        for(index, button) in starButtons.enumerated() {
            if(index < rating) {
                button.setTitle( "★", for: .normal)
            } else {
                button.setTitle( "☆", for: .normal)
            }
        }
    }
    
    @IBAction func submitButtonTapped(_ sender: Any) {
        guard rating > 0 else {
            let alert = UIAlertController(title: "Wait!", message: "Please select a review first!", preferredStyle: .alert)
            let action = UIAlertAction(title: "OK", style: .default)
            alert.addAction(action)
            present(alert, animated: true)
            return
        }
        reviewLabel.text = "\(rating) / 5"
    }
    
    @IBOutlet weak var reviewLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        updateStars(rating: 0)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        delegate?.updateReview(rating: rating)
    }
    
    protocol HomeDelegate: NSObjectProtocol {
        func updateReview(rating: Int)
    }

}
