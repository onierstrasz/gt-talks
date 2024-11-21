"
Simple demo of moldable exceptions within the moldable debugger.
"
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
	self assert: Yow expectedString equals: Yow computedString
]

{ #category : #demos }
Yow class >> expectedString [
	^ GtExampleComparisonExceptionWithDebuggingViews new expectedStringForTest
]
