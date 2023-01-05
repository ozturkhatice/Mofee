//
//  MainViewController.swift
//  Mofee
//
//  Created by Hatice Öztürk on 4.01.2023.
//

import UIKit

class MainViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {

    @IBOutlet weak var collectionView: UICollectionView!
    
    var moods = [
        Mood(image: UIImage(named: "1")!, description: "Your day is full of love. That's why I suggest you to increase both love and happiness hormones. Mocha coffee beans have a natural chocolate taste. In this way, your day will be even better and this coffee will be good for you."),
        Mood(image: UIImage(named: "2")!, description: "Your day is full of love. That's why I suggest you to increase both love and happiness hormones. Mocha coffee beans have a natural chocolate taste. In this way, your day will be even better and this coffee will be good for you."),
        Mood(image: UIImage(named: "3")!, description: "You seem to be feeling a little miserable yourself today. At such moments, a sweet coffee will be good for the mood. That's why the coffee I chose for you today is Latte. This coffee will be good for you."),
        Mood(image: UIImage(named: "4")!, description: "Your day is full of love. That's why I suggest you to increase both love and happiness hormones. Mocha coffee beans have a natural chocolate taste. In this way, your day will be even better and this coffee will be good for you."),
        Mood(image: UIImage(named: "5")!, description: "You seem to be feeling a little miserable yourself today. At such moments, a sweet coffee will be good for the mood. That's why the coffee I chose for you today is Latte. This coffee will be good for you."),
        Mood(image: UIImage(named: "6")!, description: "You look a little tired today. When we feel exhausted and need an extra boost to come back to ourselves throughout the day, espresso is our go-to.This coffee will be good for you.")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return moods.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! MoodCell
        cell.imageView.image = moods[indexPath.item].image
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let mood = moods[indexPath.item]
     
        let alertController = UIAlertController(title: "", message: mood.description, preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "Ok", style: .default))
        
        self.navigationController?.present(alertController, animated: true)
    }
}
