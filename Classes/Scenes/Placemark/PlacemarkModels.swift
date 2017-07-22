//
//  PlacemarkModels.swift
//  CurrentAddress
//
//  Created by Raymond Law on 7/20/17.
//  Copyright (c) 2017 ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit
import MapKit

enum Placemark
{
  // MARK: Use cases
  
  enum Something
  {
    struct Request
    {
    }
    struct Response
    {
    }
    struct ViewModel
    {
    }
  }
  
  // MARK: Show physical address
  
  enum ShowPhysicalAddress
  {
    struct Request
    {
    }
    struct Response
    {
      var placemark: MKPlacemark
    }
    struct ViewModel
    {
      var placemark: MKPlacemark
    }
  }
}