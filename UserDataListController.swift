//
//  UserDataListController.swift
//  MockProject
//
//  Created by Sharvani, Karrepu on 16/12/22.
//

import Foundation
import UIKit
class UserDataListController: UIViewController,UITableViewDataSource,UITableViewDelegate{
    
    @IBOutlet weak var tableView: UITableView!
    var viewModel: UserDataViewModel?
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel = UserDataViewModel()
        viewModel?.getUserDataList(completion: { result in
            switch result{
            case .success:
                DispatchQueue.main.async {
                    self.tableView.reloadData()
                }
            case .failure:
                print("check API call ")
            }
        })
        setup()
    }
    func setup() {
        let nib = UINib(nibName: "UserDataViewDemoCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "userDataViewDemoCell")
        tableView.delegate = self
        tableView.dataSource = self
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        self.viewModel?.numberOfRows() ?? 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "userDataViewDemoCell") as? UserDataViewDemoCell {

            guard let userdata = viewModel?.userDataList?[indexPath.row] else {
                return UITableViewCell()
            }

          

            cell.configureWith(userdata: userdata)
            return cell
        }
        return UITableViewCell()
       
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        self.viewModel?.numberOfSections() ?? 1
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
}
