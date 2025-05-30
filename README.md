# ✅ Swift Result Type Explained with Real Examples

This project covers the use of Swift’s powerful built-in `Result` type, which helps in handling success and failure in a cleaner and more controlled way. Whether you're new to Swift or preparing for iOS interviews, this guide gives you a practical and beginner-friendly overview — including real-world use cases.

---

## 📌 What is `Result` in Swift?

`Result` is an enum introduced in Swift to simplify error handling. It allows a function to return either a success or a failure with a clear and structured approach.

```swift
Result<Success, Failure: Error>
````

It has two cases:

* `.success(value)` – when the task is completed successfully
* `.failure(error)` – when something goes wrong

---

## 🚀 Why Use `Result`?

* ✅ Eliminates ambiguity from optional values
* ✅ Forces developers to handle errors explicitly
* ✅ Reduces complex `if-else` and `do-catch` chains
* ✅ Makes async code and API handling easier
* ✅ Supports better testing and cleaner architecture

---

## 🔰 Basic Example

```swift
func divide(_ a: Int, _ b: Int) -> Result<Int, Error> {
    if b == 0 {
        return .failure(NSError(domain: "", code: 0, userInfo: [NSLocalizedDescriptionKey: "Cannot divide by zero"]))
    } else {
        return .success(a / b)
    }
}
```

### ✅ Usage:

```swift
let result = divide(10, 2)

switch result {
case .success(let value):
    print("Result: \(value)")
case .failure(let error):
    print("Error: \(error)")
}
```

---

## 🌍 Real-World Use Case: API Response

```swift
struct User {
    let name: String
}

func fetchUser(completion: (Result<User, Error>) -> Void) {
    // Simulating a network success
    let user = User(name: "Pushpendra")
    completion(.success(user))
}
```

### ✅ Handling the response:

```swift
fetchUser { result in
    switch result {
    case .success(let user):
        print("User: \(user.name)")
    case .failure(let error):
        print("Error: \(error.localizedDescription)")
    }
}
```

---

## 🔄 Bonus: Using Custom Error Type

You can define your own error types using an enum that conforms to `Error`.

```swift
enum LoginError: Error {
    case invalidEmail
    case wrongPassword
}

func login(email: String, password: String) -> Result<String, LoginError> {
    guard email.contains("@") else {
        return .failure(.invalidEmail)
    }
    guard password == "1234" else {
        return .failure(.wrongPassword)
    }
    return .success("Login Successful!")
}
```

### ✅ Handling login result:

```swift
let loginResult = login(email: "user@domain.com", password: "1234")

switch loginResult {
case .success(let message):
    print(message)
case .failure(let error):
    switch error {
    case .invalidEmail:
        print("Email is invalid.")
    case .wrongPassword:
        print("Incorrect password.")
    }
}
```

---

## 📽 YouTube Video

🎬 Learn the concept visually in this video:
🔗 **[Watch Now](https://youtube.com/@SainiPushpendra)**

---

## 🤝 Book a 1:1 iOS Consultation

If you're facing issues with Swift logic, testing, or app development — let’s solve them together:
📅 **Book here:** [https://topmate.io/pushpendra\_saini](https://topmate.io/pushpendra_saini)

---

## 📎 Tags

`#SwiftProgramming` `#iOSDevelopment` `#SwiftTips` `#SwiftResultType` `#CleanCode` `#MobileAppDev` `#SwiftUI` `#PushpendraKumar`


> “Expect failure. Handle it cleanly.”
> — Pushpendra Kumar
