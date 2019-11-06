//
//  DefinitionViewController.swift
//  SwiftVocabulary
//
//  Created by Lambda_School_Loaner_219 on 11/4/19.
//  Copyright © 2019 Lambda_School_Loaner_219. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {

    
    @IBOutlet weak var definitionText: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        update()
        

        }
        

        
    
    
 var vocabWord: VocabularyWord?
func update(){
    guard let word = vocabWord else {return}
    definitionText.text = word.definition
    } }
