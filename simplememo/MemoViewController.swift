//
//  MemoViewController.swift
//  meleecharacter
//
//  Created by 佐藤太郎 on 2020/11/01.
//  Copyright © 2020 佐藤太郎. All rights reserved.
//

import UIKit

class MemoViewController: UIViewController {
    var memo: String?
    @IBOutlet weak var memoTextField: UITextField!
    @IBOutlet weak var saveButton: UIBarButtonItem!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.saveButton.isEnabled = false
        
        if let memo = self.memo {
            self.memoTextField.text = memo
            self.navigationItem.title = "Edit Memo"
        }
        let memo = self.memoTextField.text ?? ""
        self.saveButton.isEnabled = !memo.isEmpty

        // Do any additional setup after loading the view.
    }
    
    @IBAction func nameTextFieldChanged(_ sender: Any) {
        let memo = self.memoTextField.text ?? ""
        self.saveButton.isEnabled = !memo.isEmpty
    }
    
    @IBAction func cancel(_ sender: Any) {
            if self.presentingViewController is UINavigationController{
                self.dismiss(animated: true, completion: nil)
            } else {
                self.navigationController?.popViewController(animated: true)
        }
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let button = sender as? UIBarButtonItem, button === self.saveButton else {
                return
            }
            self.memo = self.memoTextField.text ?? ""
        }

        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
}
    

        

