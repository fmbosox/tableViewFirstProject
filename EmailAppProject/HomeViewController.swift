//
//  HomeViewController.swift
//  EmailAppProject
//
//  Created by Felipe Montoya on 10/7/17.
//  Copyright © 2017 Felipe Montoya. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController, UITableViewDataSource{
    
    @IBOutlet weak var tableView: UITableView!
    
    var usersData = UsersData()
    var currentUser: String?
    var unwrappedCurrentUser = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        unwrappedCurrentUser = currentUser!
        print(unwrappedCurrentUser)
        tableView.dataSource = self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "instagramLikeCell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? InstagramLikeTableViewCell
        let arrayOfImages = (usersData.userPost[unwrappedCurrentUser])!
        cell?.userNameLabel.text = currentUser
        cell?.userImage.image = UIImage(named: unwrappedCurrentUser + ".png")
        cell?.instagramImage.image = UIImage(named: arrayOfImages[indexPath.row] )
        cell?.imageDescriptionLabel.text = usersData.imagesPosted[arrayOfImages[indexPath.row]]
        return cell!
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (usersData.userPost[unwrappedCurrentUser]!.count)
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
  

}
