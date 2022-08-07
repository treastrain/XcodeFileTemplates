//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created ___FULLUSERNAME___ on ___DATE___.
//

import SwiftUI

struct ___VARIABLE_productName:identifier___View<Presenter: ___VARIABLE_productName:identifier___PresenterProtocol>: Sendable {
    @StateObject private var object: ___VARIABLE_productName:identifier___Object
    private let presenter: Presenter

    init(object: ___VARIABLE_productName:identifier___Object, presenter: Presenter) {
        _object = .init(wrappedValue: object)
        self.presenter = presenter
    }
}

extension ___VARIABLE_productName:identifier___View: View {
    var body: some View {
        Text(object.text)
            .onAppear(perform: presenter.action)
    }
}

extension ___VARIABLE_productName:identifier___View where Presenter == ___VARIABLE_productName:identifier___Presenter<___VARIABLE_productName:identifier___Interactor> {
    init() {
        let object = ___VARIABLE_productName:identifier___Object()
        let interactor = ___VARIABLE_productName:identifier___Interactor()
        let presenter = ___VARIABLE_productName:identifier___Presenter(object: object, interactor: interactor)
        self.init(object: object, presenter: presenter)
    }
}
