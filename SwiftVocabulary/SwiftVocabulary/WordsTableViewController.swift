//
//  WordsTableViewController.swift
//  SwiftVocabulary
//
//  Created by Lambda_School_Loaner_219 on 11/4/19.
//  Copyright © 2019 Lambda_School_Loaner_219. All rights reserved.
//

import UIKit

class WordsTableViewController: UITableViewController {
    var vocabWords: [VocabularyWord] = [VocabularyWord(word:"Hello", definition:"Filler def") ]
   
    
  

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source



    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return vocabWords.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WordCell", for: indexPath)

        // Configure the cell...
        let word = vocabWords[indexPath.row]
        cell.textLabel?.text = word.word 
        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for forSegue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if forSegue.identifier == "ShowDefinitionSegue"{
            guard let indexPath = tableView.indexPathForSelectedRow else {return}
            
            let codeWord = vocabWords[indexPath.row]
            
            guard let definitionVC = forSegue.destination as? DefinitionViewController else { return }
            definitionVC.vocabWord = codeWord
            
           
        }
      
    }
    

}


/*       override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "ViewDefinition" {
        
            guard let indexPath = tableView.indexPathForSelectedRow else { return }

            let vocabWord = vocabController.vocabWords[indexPath.row]
            
            guard let definitionVC = segue.destination as? DefinitionViewController else { return }
            
            definitionVC.vocabWord = vocabWord
        }
    }
    
    let vocabController = VocabularyController()
}

               */
