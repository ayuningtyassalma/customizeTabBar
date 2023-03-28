//
//  ViewController.swift
//  customizeTabBar
//
//  Created by Phincon on 28/03/23.
//

import UIKit

class ViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // instance
        let productList = ProductListController()
        let profile = ProfileUserViewController()
        //set title
        productList.title = "All Products"
        profile.title = "Profile"
        // assign vc to tabBar
        self.setViewControllers([productList, profile], animated: false)
        //make images to array in list
        guard let itemsOfImages = self.tabBar.items else{return}
        let icons = ["list.bullet", "person.circle"]
        for icon in 0...1{
            itemsOfImages[icon].image = UIImage(systemName: icons[icon])
        }
        
        self.tabBar.backgroundColor = .white
        self.tabBar.tintColor = .purple

    }
    
 
 
   


}

class ProductListController : UIViewController{
    private lazy var tableView : UITableView = {
       let tableview = UITableView()
        tableview.translatesAutoresizingMaskIntoConstraints = false
        tableview.backgroundColor = .clear
        tableview.rowHeight = UITableView.automaticDimension
        tableview.separatorStyle = .none
        tableview.register(ProductListTableViewCell.self, forCellReuseIdentifier: "ProductListTableViewCell")
        return tableview
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpTable()
       
    }
    
    
}

private extension ProductListController{
    func setUpTable(){
        tableView.dataSource = self
        
        self.view.addSubview(tableView)
        
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor),
            tableView.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor),
            tableView.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor)
        ])
        
    }
}

extension ProductListController : UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 7
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: ProductListTableViewCell.identifier, for: indexPath) as! ProductListTableViewCell
        cell.setUpTabelCell()
        return cell
    }
    
}

class ProfileUserViewController: UIViewController{
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .gray
        
    }
    
}
