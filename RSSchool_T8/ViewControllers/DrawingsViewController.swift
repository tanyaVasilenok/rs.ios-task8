//
//  DrawingsViewController.swift
//  RSSchool_T8
//
//  Created by Таня Василёнок on 18.07.21.
//

import UIKit

class DrawingsViewController: UIViewController {

    var planetButton: UIButton?
    var headButton: UIButton?
    var treeButton: UIButton?
    var landscapeButton: UIButton?
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        self.view.backgroundColor = .white;
        
        self.planetButton = UIButton.init(frame: CGRect(x: 88, y: 114, width: 200, height: 40))
        self.headButton = UIButton.init(frame: CGRect(x: 88, y: 169, width: 200, height: 40))
        self.treeButton = UIButton.init(frame: CGRect(x: 88, y: 224, width: 200, height: 40))
        self.landscapeButton = UIButton.init(frame: CGRect(x: 88, y: 279, width: 200, height: 40))
        
        self.planetButton?.setTitle("Planet", for: .normal)
        self.headButton?.setTitle("Head", for: .normal)
        self.treeButton?.setTitle("Tree", for: .normal)
        self.landscapeButton?.setTitle("Landscape", for: .normal)
        
    
        self.setDefaultStylesForButtons(button: planetButton!)
        self.setDefaultStylesForButtons(button: headButton!)
        self.setDefaultStylesForButtons(button: treeButton!)
        self.setDefaultStylesForButtons(button: landscapeButton!)
        
        self.view.addSubview(planetButton!)
        self.view.addSubview(headButton!)
        self.view.addSubview(treeButton!)
        self.view.addSubview(landscapeButton!)

        self.navigationItem.title = "Drawings"
        self.navigationItem.backBarButtonItem?.setTitleTextAttributes([NSAttributedString.Key.foregroundColor : UIColor.red, NSAttributedString.Key.font : "Montserrat-Regular"], for: .normal)
            
            
    }
    
    
    func setDefaultStylesForButtons(button: UIButton) {
        button.backgroundColor = UIColor.white;
        button.layer.cornerRadius = 10.0;
        button.layer.shadowColor = UIColor.black.cgColor;
        button.layer.shadowOpacity = 0.25;
        button.layer.shadowRadius = 2.0;
        button.layer.shadowOffset = CGSize(width: 0, height: 0)
        button.titleLabel!.font = UIFont(name: "Montserrat-Medium", size: 18)
        button.titleEdgeInsets = UIEdgeInsets(top: 70.0, left: 9.0, bottom: 70.0, right: 9.0);
        button.setTitleColor(.customLightGreenForButtonTitle(), for: .normal)
    }

}
