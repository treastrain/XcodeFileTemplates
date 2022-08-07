//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created ___FULLUSERNAME___ on ___DATE___.
//

import Foundation

protocol ___VARIABLE_productName:identifier___PresenterProtocol: Sendable {
    func action()
}

final class ___VARIABLE_productName:identifier___Presenter<Interactor: ___VARIABLE_productName:identifier___InteractorProtocol> {
    private let object: ___VARIABLE_productName:identifier___Object
    private let interactor: Interactor

    init(object: ___VARIABLE_productName:identifier___Object, interactor: Interactor) {
        self.object = object
        self.interactor = interactor
    }
}

extension ___VARIABLE_productName:identifier___Presenter: ___VARIABLE_productName:identifier___PresenterProtocol {
    func action() {
        Task {
            let text = await interactor.text()
            await MainActor.run {
                object.text = text
            }
        }
    }
}