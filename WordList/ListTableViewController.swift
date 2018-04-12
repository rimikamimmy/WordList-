//
//  ListTableViewController.swift
//  WordList
//
//  Created by Rimika Inoguchi on 2018/04/12.
//  Copyright © 2018年 Rimika Inoguchi. All rights reserved.
//

import UIKit

class ListTableViewController: UITableViewController {
    
    var wordArray: [Dictionary<String, String>] = []
    
    let saveData = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(UINib(nibName: "ListTableViewCell", bundle: nil),
                           
                           forCellReuseIdentifier: "cell")
    }

override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(true)
    if saveData.array(forKey: "WORD") != nil{
        wordArray = saveData.array(forKey: "WORD") as! [Dictionary<String, String>]
    }
    tableView.reloadData()
}

    
    
override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
}

// MARK: - Table view data source

override func numberOfSections(in tableView: UITableView) -> Int {
    // #warning Incomplete implementation, return the number of sections
    return 1
}

override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    // #warning Incomplete implementation, return the number of rows
    return wordArray.count
}

override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath)
    ->UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
            as! ListTableViewCell
        
        let nowIndexPathDictionary = wordArray[indexPath.row]
        
        cell.englishLabel.text = nowIndexPathDictionary["english"]
        cell.japaneseLabel.text = nowIndexPathDictionary["japanese"]
        
        return cell
        
}
}
