//
//  HostVC.swift
//  MockProject
//
//  Created by Sharvani, Karrepu on 05/01/23.
//

import SwiftUI
class HostVC: UIHostingController<Profile>{
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder, rootView: Profile())
    }
}
