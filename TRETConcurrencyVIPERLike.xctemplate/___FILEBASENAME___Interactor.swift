//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created ___FULLUSERNAME___ on ___DATE___.
//

import Foundation

protocol ___VARIABLE_productName:identifier___InteractorProtocol: Sendable {
    func text() async -> String
}

actor ___VARIABLE_productName:identifier___Interactor: ___VARIABLE_productName:identifier___InteractorProtocol {
    func text() async -> String {
        try? await Task.sleep(nanoseconds: 2 * NSEC_PER_SEC)
        return "from the future!"
    }
}
