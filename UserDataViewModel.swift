//
//  userDataViewModel.swift
//  MockProject
//
//  Created by Sharvani, Karrepu on 16/12/22.
//

import Foundation
enum Result{
    case success
    case failure
}
protocol UserDataViewModelProtocol
{
    func numberOfRows() -> Int
    func numberOfSections() -> Int
    func getUserDataList(completion : @escaping (Result) -> ())
    var  userDataList: [UserData]? { get set }
}
class UserDataViewModel : UserDataViewModelProtocol {
    var userDataList: [UserData]?
    func getUserDataList(completion: @escaping (Result) -> ()) {
        apiService.apiToGetUserData{ userDataList in
            self.userDataList = userDataList
            completion(.success)
        }
    }
    
    func numberOfRows() -> Int {
        return self.userDataList?.count ?? 1
    }
    
    func numberOfSections() -> Int {
        return 1
    }
    
    public var apiService : APIService!
    
  
    
    init() {
        apiService = APIService()
    }
}
