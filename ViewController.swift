//
//  ViewController.swift
//  Assignment Fwd & bwd
//
//  Created by Mac on 01/01/17.
// Forward and Backward Data Passing with Multiple Labels & Text Fields

import UIKit

class ViewController: UIViewController,BackDataPassingProtocol{
   


    
    
    @IBOutlet weak var dataTextField1OnFirstViewController: UITextField!
    
    @IBOutlet weak var dataLabel1OnFirstViewController: UILabel!
    
    @IBOutlet weak var dataTextField2OnFirstViewController: UITextField!
    
    @IBOutlet weak var dataTextField3OnFirstViewcontroller: UITextField!
    
    @IBOutlet weak var datalabel3OnFirstViewController: UILabel!
    
    @IBOutlet weak var datalabel2OnFirstViewController: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.dataTextField1OnFirstViewController.text = ""
        self.dataTextField2OnFirstViewController.text = ""
        self.dataTextField3OnFirstViewcontroller.text = ""
        
        // Do any additional setup after loading the view.
    }

    @IBAction func btnToNavigateOnSecondViewController(_ sender: Any) {
        let secondViewController = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController")as! SecondViewController
        
        let dataToBePassed1 = self.dataTextField1OnFirstViewController.text
        let dataToBePassed2 = self.dataTextField2OnFirstViewController.text
        let dataToBePassed3 = self.dataTextField3OnFirstViewcontroller.text
        
        
        secondViewController.dataFromFirstViewController1 = dataToBePassed1
        secondViewController.dataFromFirstViewController2 = dataToBePassed2
        secondViewController.dataFromFirstViewController3 = dataToBePassed3
       
        
        secondViewController.delegateSVC = self
       
        
        
        self.navigationController?.pushViewController(secondViewController, animated: true)
    }
    
    
    
    func passDataToFirstViewController1(textToPass1: String) {
        self.dataLabel1OnFirstViewController.text = textToPass1
    }
    
    func passDataToFirstViewController2(textToPass2: String) {
        self.datalabel2OnFirstViewController.text = textToPass2
    }
    
    func passdataToFirstViewController3(textToPass3: String) {
        self.datalabel3OnFirstViewController.text = textToPass3
    }
    
    }


