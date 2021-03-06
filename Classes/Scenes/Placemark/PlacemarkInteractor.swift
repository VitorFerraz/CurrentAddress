//
//  PlacemarkInteractor.swift
//  CurrentAddress
//
//  Created by vitor.ferrazvarela on 05/05/20.
//  Copyright (c) 2020 ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit
import MapKit

protocol PlacemarkBusinessLogic
{
    func showPhysicalAddress(request: Placemark.ShowPhysicalAddress.Request)
}

protocol PlacemarkDataStore
{
    //var name: String { get set }
    var placemark: MKPlacemark! { get set }
}

class PlacemarkInteractor: PlacemarkBusinessLogic, PlacemarkDataStore
{
    var presenter: PlacemarkPresentationLogic?
    var worker: PlacemarkWorker?
    var placemark: MKPlacemark!
    
    // MARK: Show Physical Address
    func showPhysicalAddress(request: Placemark.ShowPhysicalAddress.Request) {
        let response = Placemark.ShowPhysicalAddress.Response(placemark: placemark)
        presenter?.presentPhysicalAddress(response: response)
    }
}
