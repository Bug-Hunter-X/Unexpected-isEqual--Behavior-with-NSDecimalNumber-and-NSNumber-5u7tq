# Objective-C: Unexpected isEqual: Behavior with NSDecimalNumber and NSNumber

This repository demonstrates a subtle bug in Objective-C related to comparing `NSDecimalNumber` and `NSNumber` objects using the `isEqual:` method.  The `isEqual:` method performs a pointer comparison instead of a value comparison when the object types differ, leading to incorrect results.

The `bug.m` file contains code that reproduces the issue, while `bugSolution.m` provides a corrected version.  The solution involves using `compare:` to perform a value-based comparison instead of `isEqual:`.  This ensures accurate comparison of numeric values regardless of object type.