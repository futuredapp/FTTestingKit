![Title](documentation/FTTestingKit.svg)

# FTTestingKit

![Cocoapods](https://img.shields.io/cocoapods/v/FTTestingKit)
![Cocoapods platforms](https://img.shields.io/cocoapods/p/FTTestingKit)
![Cocoapods](https://img.shields.io/cocoapods/l/FTTestingKit)
![Bitrise](https://img.shields.io/bitrise/f8e8740dfdd3c6a2?token=_ejKL14TVCB_KLWT4-wDxw)

A set of helpers for simple creation of mockups, random values and testing of asynchronous code.

## Installation

When using Swift package manager add this line
to your dependencies or install using Xcode 11 or newer:

```swift
.package(url: "https://github.com/futuredapp/FTTestingKit.git", from: "0.5.0")
```

When using CocoaPods add following line to your `Podfile`:

```ruby
pod 'FTTestingKit', '~> 0.5'
```

When using `PromiseKit` you can use either `FTTestingKitPromiseKit`
target for testing promises or add subspec to your `Podfile`:

```ruby
pod 'FTTestingKit', '~> 0.5', subspecs: ['PromiseKit']
```

## Features

Main features of this library are generating mockups,
random values, arrays and asynchronous testing.

### Mockups

For simple repeated execution the library offers Ruby-like extension on `Int` type. This is helpful in measurement tests.

```swift
10.times {
    doSomething()
}
10.times(doSomething)
```

This extension can create arrays too:

```swift
10.times {
    Int.random()
}
10.times(String.random)
```

The framework extends some basic types (`Date`, `String`)
with random generation similar to `Int`.
All these types conform to `Mockup` protocol
which formally describes this functionality.

```swift
Date.random()
String.random()
Int.random(count: 10)
```

### Expectations

The framework extends `XCTestCase` with simple methods to call transactional asynchronous test like this:

```swift
expect(within: 0.5) { reply in
    DispatchQueue.main.asyncAfter(deadline: .now() + 0.05) {
        reply(.success)
    }
}
```

Extension for `PromiseKit` builds on this and offers testing promises using so-called belief in promise method:

```swift
believe(for: 0.5, in: someFunctionReturningPromise())
```

## Author

Matěj Kašpar Jirásek, <matej.jirasek@futured.app>

## License

FTTestingKit is available under the MIT license. See the [LICENSE file](LICENSE) for more info.
