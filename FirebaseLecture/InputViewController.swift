//
//  InputViewController.swift
//  FirebaseLecture
//
//  Created by Sakai Aoi on 2021/02/14.
//

import UIKit
import FirebaseFirestore

class InputViewController: UIViewController {
    
    @IBOutlet var courseTextField: UITextField!
    @IBOutlet var nameTextField: UITextField!
    @IBOutlet var nicknameTextField: UITextField!
    @IBOutlet var selfIntroductionTextField: UITextField!
    @IBOutlet var termTextField: UITextField!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func save(){
        let firestore = Firestore.firestore()
        firestore.collection("users").addDocument(data: [
            "name": nameTextField.text!,
            "course": courseTextField.text!,
            "nickname": nicknameTextField.text!,
            "self_introduction": selfIntroductionTextField.text!,
            "term": termTextField.text!
        ])
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
