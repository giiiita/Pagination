//
//  Buildable.swift
//  Pagination
//
//  Created by giiiita on 2020/12/20.
//

protocol Buildable { }

extension Buildable {
    func mutating<T>(keyPath: WritableKeyPath<Self, T>, value: T) -> Self {
        var newSelf = self
        newSelf[keyPath: keyPath] = value
        return newSelf
    }
}

