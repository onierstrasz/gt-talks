Class {
	#name : #Snaffle,
	#superclass : #Object,
	#category : #'GtTalks-Examples'
}

{ #category : #accessing }
Snaffle class >> bar [
	<gtExample>
	^ GtExampleComparisonExceptionWithDebuggingViews new
		computedStringForTest
]

{ #category : #accessing }
Snaffle class >> foo [
	<gtExample>
	^ GtExampleComparisonExceptionWithDebuggingViews new
		expectedStringForTest 
]
