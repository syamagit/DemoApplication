//
//  UserDataListController.swift
//  MockProject
//
//  Created by Sharvani, Karrepu on 16/12/22.
//

import Foundation
import UIKit
class UserDataListController: UIViewController{
    var viewModel: UserDataViewModel?
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel = UserDataViewModel()
        viewModel?.getUserDataList(completion: { result in
            switch result{
            case .success:
                print("api data retrieved successfully")
            case .failure:
                print("check API call ")
            }
        })
    }
}
