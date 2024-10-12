Class {
	#name : #Snaffle,
	#superclass : #Object,
	#instVars : [
		'data'
	],
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

{ #category : #accessing }
Snaffle >> data [
	^ data
]

{ #category : #accessing }
Snaffle >> data: anObject [
	data := anObject
]

{ #category : #'as yet unclassified' }
Snaffle >> gtViewDataFor: aView [
	<gtView>
	self hasData ifFalse: [ ^ aView ].

	^ aView list
		title: 'Data';
		items: [ 1 to: 100 ]
]

{ #category : #'as yet unclassified' }
Snaffle >> hasData [
	^ data notNil
]
