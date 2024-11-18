Class {
	#name : #Yow,
	#superclass : #Object,
	#category : #'GtTalksYow2024-Demo'
}

{ #category : #demos }
Yow class >> computedString [
	^ GtExampleComparisonExceptionWithDebuggingViews new computedStringForTest
]

{ #category : #demos }
Yow class >> debuggingExample [
	self assert: Yow expectedStringForTest equals: Yow computedStringForTest
]

{ #category : #demos }
Yow class >> expectedString [
	^ GtExampleComparisonExceptionWithDebuggingViews new expectedStringForTest
]
