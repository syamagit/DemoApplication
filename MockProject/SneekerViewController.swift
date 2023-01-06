//
//  SneekerViewController.swift
//  MockProject
//
//  Created by Sharvani, Karrepu on 06/01/23.
//

import UIKit

class SneekerViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func click(_ sender: UIBarButtonItem) {
        dismiss(animated: true, completion: nil)
    }
    

    
    @IBAction func dismissButton(_ sender: UIBarButtonItem) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func moveToThird(_ sender: Any) {
        let vc = ThirdViewController()
        vc.view.backgroundColor = .systemRed
        navigationController?.pushViewController(vc, animated: true)
    }
    
}
