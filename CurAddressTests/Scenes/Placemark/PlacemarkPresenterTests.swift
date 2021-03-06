//
//  PlacemarkPresenterTests.swift
//  CurrentAddress
//
//  Created by vitor.ferrazvarela on 07/05/20.
//  Copyright (c) 2020 ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

@testable import CurAddress
import XCTest

// MARK: Test doubles
class PlacemarkDisplayLoginSpy: PlacemarkDisplayLogic {
    var displayPhysicalAddressCalled = false
    
    func displayPhysicalAddress(viewModel: Placemark.ShowPhysicalAddress.ViewModel) {
        displayPhysicalAddressCalled = true
    }
    
    
}
class PlacemarkPresenterTests: XCTestCase
{
  // MARK: Subject under test
  
  var sut: PlacemarkPresenter!
  
  // MARK: Test lifecycle
  
  override func setUp()
  {
    super.setUp()
    setupPlacemarkPresenter()
  }
  
  override func tearDown()
  {
    super.tearDown()
  }
  
  // MARK: Test setup
  
  func setupPlacemarkPresenter()
  {
    sut = PlacemarkPresenter()
  }
  
  // MARK: Test doubles

  // MARK: Tests
    func testPresentShowPhysicalAddress() {
        // Given
        let spy = PlacemarkDisplayLoginSpy()
        sut.viewController = spy
        let placemark = CurAddressTestHelpers.placemark
        let response = Placemark.ShowPhysicalAddress.Response(placemark: placemark)
        
        // When
        sut.presentPhysicalAddress(response: response)
        
        //Then
        XCTAssertTrue(spy.displayPhysicalAddressCalled, "presentPhysicalAddress(response:) should ask the view controller to display the result")
    }

}
