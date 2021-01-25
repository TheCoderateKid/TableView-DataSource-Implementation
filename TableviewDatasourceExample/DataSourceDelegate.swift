//
//  DataSourceDelegate.swift
//  TableviewDatasourceExample
//
//  Created by Chris Linder on 1/25/21.
//

import Foundation

protocol DataSourceDelegate {
    func didSelectCell(indexPath: IndexPath)
}
