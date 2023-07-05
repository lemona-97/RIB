//
//  AppComponent.swift
//  RIB
//
//  Created by wooseob on 2023/07/05.
//

import RIBs

class AppComponent: Component<EmptyDependency>, RootDependency {

    init() {
        super.init(dependency: EmptyComponent())
    }
}
