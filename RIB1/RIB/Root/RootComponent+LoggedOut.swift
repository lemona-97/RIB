//
//  RootComponent+LoggedOut.swift
//  RIB
//
//  Created by wooseob on 2023/07/05.
//

import RIBs

/// The dependencies needed from the parent scope of Root to provide for the LoggedOut scope.
// TODO: Update RootDependency protocol to inherit this protocol.
protocol RootDependencyLoggedOut: Dependency {

    // TODO: Declare dependencies needed from the parent scope of Root to provide dependencies
    // for the LoggedOut scope.
}

extension RootComponent: LoggedOutDependency {

    // TODO: Implement properties to provide for LoggedOut scope.
}



protocol LoggedOutDependency {}

protocol LoggedOutListener {}

protocol LoggedOutBuildable {
    func build(withListener: LoggedOutListener) -> ViewableRouting
}

class LoggedOutInteractor: Interactor {}

class LoggedOutViewController: UIViewController, ViewControllable {
    override func viewDidLoad() {
        self.uiviewController.view.backgroundColor = .blue
    }
}

class LoggedOutBuilder: LoggedOutBuildable {
    init(dependency: Any) {}
    func build(withListener: LoggedOutListener) -> ViewableRouting {
        return ViewableRouter<Interactable, ViewControllable>(interactor: LoggedOutInteractor(), viewController: LoggedOutViewController())
    }
}
