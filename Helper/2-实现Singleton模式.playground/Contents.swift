//2.实现Singleton模式

import UIKit
import Foundation

class SingletonOne {
    static let shareSingleton = SingletonOne()
}

SingletonOne.shareSingleton
