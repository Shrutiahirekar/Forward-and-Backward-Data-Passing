//
//  SecondViewController.swift
//  Assignment Fwd & bwd
//
//  Created by Mac on 01/01/17.
//

import UIKit
protocol BackDataPassingProtocol{
    func passDataToFirstViewController1(textToPass1 : String)
    func passDataToFirstViewController2(textToPass2 : String)
    func passdataToFirstViewController3(textToPass3 : String)
}

class SecondViewController: UIViewController{
    @IBOutlet weak var dataLabel1OnSecondViewController: UILabel!
    
    @IBOutlet weak var dataTextField1OnSecondViewcontroller: UITextField!
    @IBOutlet weak var dataLabel2OnSecondViewController: UILabel!
    
    @IBOutlet weak var dataLabel3OnSecondViewController: UILabel!
    @IBOutlet weak var dataTextField3OnSecondViewController: UITextField!
    
    
    @IBOutlet weak var dataTextField2OnSecondViewController: UITextField!
    
    
    var dataFromFirstViewController1 : String?
    var dataFromFirstViewController2 : String?
    var dataFromFirstViewController3 : String?
    
    
    var delegateSVC : BackDataPassingProtocol?

    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.dataLabel1OnSecondViewController.text = dataFromFirstViewController1
        self.dataLabel2OnSecondViewController.text = dataFromFirstViewController2
        self.dataLabel3OnSecondViewController.text = dataFromFirstViewController3
        navigationItem.hidesBackButton = true
    }
    @IBAction func btnClickToNavigateOnFirstViewController(_ sender: Any) {
        guard let delegateSVC = delegateSVC else {
            print("Delegate not found")
            return
        }
 
            
    
        let nameRetrivedFromTextField1 = self.dataTextField1OnSecondViewcontroller.text
        let nameRetrivedFromTextField2 = self.dataTextField2OnSecondViewController.text
        let nameRetrivedFromTextField3  = self.dataTextField3OnSecondViewController.text
        
        
        
        delegateSVC.passDataToFirstViewController1(textToPass1: nameRetrivedFromTextField1!)
        
        delegateSVC.passDataToFirstViewController2(textToPass2: nameRetrivedFromTextField2!)
        
        delegateSVC.passdataToFirstViewController3(textToPass3: nameRetrivedFromTextField3!)
        
        
        navigationController?.popViewController(animated: true)
    }
}
