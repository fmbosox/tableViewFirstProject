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
    var currentUser = String ()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        currentUser = "Matt"
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "instagramLikeCell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? InstagramLikeTableViewCell
        let arrayOfImages = (usersData.userPost[currentUser])!
        cell?.userNameLabel.text = currentUser
        cell?.userImage.image = UIImage(named: currentUser + ".png")
        cell?.instagramImage.image = UIImage(named: arrayOfImages[indexPath.row] )
        cell?.imageDescriptionLabel.text = usersData.imagesPosted[arrayOfImages[indexPath.row]]
        return cell!
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (usersData.userPost[currentUser]?.count)!
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
