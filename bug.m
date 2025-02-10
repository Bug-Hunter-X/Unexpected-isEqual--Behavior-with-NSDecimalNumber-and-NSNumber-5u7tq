In Objective-C, a common yet subtle error arises when dealing with `NSDecimalNumber` and its interaction with `NSNumber`.  Specifically, when you attempt to directly compare an `NSDecimalNumber` to an `NSNumber` using the `isEqual:` method, the result might be unexpected and incorrect.  This is because `isEqual:` performs a pointer comparison, not a value comparison, when dealing with different object types.

For example:

```objectivec
NSDecimalNumber *decimalNumber = [NSDecimalNumber decimalNumberWithString:@