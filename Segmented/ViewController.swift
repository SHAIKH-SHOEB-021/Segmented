//
//  ViewController.swift
//  Segmented
//
//  Created by shoeb on 06/01/23.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let mySegmentedControl = UISegmentedControl (items: ["One","Two","Three"])
        mySegmentedControl.translatesAutoresizingMaskIntoConstraints = false
        mySegmentedControl.selectedSegmentIndex = 0
        mySegmentedControl.tintColor = UIColor.yellow
        mySegmentedControl.backgroundColor = UIColor.systemBlue
        mySegmentedControl.addTarget(self, action: #selector(self.segmentedValueChanged(_:)), for: .valueChanged)
        view.addSubview(mySegmentedControl)
        NSLayoutConstraint.activate([
            mySegmentedControl.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            mySegmentedControl.topAnchor.constraint(equalTo: view.topAnchor, constant: 20),
            mySegmentedControl.trailingAnchor.constraint(equalTo: view.trailingAnchor)
            //mySegmentedControl.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
    
    @objc func segmentedValueChanged(_ sender:UISegmentedControl!)
    {
        print("Selected Segment Index is : \(sender.selectedSegmentIndex)")
        
    }
    
    
}

