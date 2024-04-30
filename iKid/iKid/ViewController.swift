//
//  ViewController.swift
//  iKid
//
//  Created by Ricwxiao on 2024/4/28.
//

import UIKit

//class customTabBar : UITabBarController {
//    
//    public var currentTab : Int?
//    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        print("custom tab bar works")
//        currentTab = tabBar.selectedItem?.tag
//        currentTab = tabBar.selectedItem
//        print(tabBar.selectedItem?.tag)
//        print(selectedViewController!)
//    }
//}

class ViewController: UIViewController, UITabBarControllerDelegate {
    
//    @IBOutlet weak var goodJokeText: UILabel!
//    @IBOutlet weak var punJokeText: UILabel!
//    @IBOutlet weak var dadJokeText: UILabel!
    
//    @IBOutlet weak var goodJokeButton: UIButton!
    
//    var currentTab : Int = 0
//    
//    
//    let goodJoke = ("Good joke question", "Good joke answer")
//    let punJoke = ("Pun joke question", "Pun joke answer")
//    let dadJoke = ("Dad joke question", "Dad joke answer")
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        renderJokeTexts()
        
        if let tabBarController = self.tabBarController {
            tabBarController.delegate = self
        }
    }
    
    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
//        currentTab = tabBarController.selectedIndex
//        renderJokeTexts()
    }
    
//    func renderJokeTexts() {
//        switch currentTab {
//        case 0:
//            goodJokeText?.text = goodJoke.0
//        case 1:
//            punJokeText?.text = punJoke.0
//        case 2:
//            dadJokeText?.text = dadJoke.0
//        default:
//            goodJokeText?.text = "Seems like an error occured"
//        }
//    }
    
    @IBAction func goodJokeNext(_ sender: Any) {
        performSegue(withIdentifier: "showGoodJokeAnswer", sender: nil)
    }
    
    @IBAction func punJokeNext(_ sender: Any) {
        performSegue(withIdentifier: "showPunJokeAnswer", sender: nil)
    }
    
    @IBAction func dadJokeNext(_ sender: Any) {
        performSegue(withIdentifier: "showDadJokeAnswer", sender: nil)
    }
    
}
