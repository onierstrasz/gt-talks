Class {
	#name : #DefectDatafile,
	#superclass : #Object,
	#instVars : [
		'rawData',
		'dict'
	],
	#category : #'GtTalksMonash-DefectPrediction'
}

{ #category : #accessing }
DefectDatafile class >> for: aDictionary [
	^ self new
		rawData: aDictionary;
		yourself
]

{ #category : #accessing }
DefectDatafile >> at: aKey [
	^ self dict at: aKey
]

{ #category : #accessing }
DefectDatafile >> basename [
	^ self file copyAfterLast: $/
]

{ #category : #utility }
DefectDatafile >> cleanDict: aDict [
	"Try to convert strings to reasonable values."

	^ (aDict associations
		collect: [ :assoc | 
			| newKey newValue |
			newKey := self trimQuotes: assoc key.
			assoc value first = $"
				ifTrue: [ assoc value = '"TRUE"'
						ifTrue: [ newValue := true ]
						ifFalse: [ assoc value = '"FALSE"'
								ifTrue: [ newValue := false ]
								ifFalse: [ newValue := self trimQuotes: assoc value ] ] ].
			assoc value first isDigit
				ifTrue: [ newValue := [ assoc value asNumber ] onErrorDo: [ newValue := assoc value ] ].
			newKey -> newValue ]) asDictionary
]

{ #category : #accessing }
DefectDatafile >> dict [
	^ dict
]

{ #category : #accessing }
DefectDatafile >> dict: anObject [
	dict := anObject
]

{ #category : #utility }
DefectDatafile >> fcaProperties [
	"Properties for building a Formal Concept Analysis lattice."

	| properties |
	properties := OrderedCollection new.
	self hasHeuristicBug ifTrue: [ properties add: #hasHeuristicBug ].
	self hasRealBug ifTrue: [ properties add: #hasRealBug ].
	self loc <= (self threshold at: #smallMethod)
		ifTrue: [ properties add: #smallMethod ]
		ifFalse: [ self loc <= (self threshold at: #mediumMethod)
				ifTrue: [ properties add: #mediumMethod ]
				ifFalse: [ properties add: #longMethod ] ].
	self wmc <= (self threshold at: #highWMC)
		ifTrue: [ properties add: #lowWMC ]
		ifFalse: [ properties add: #highWMC ].
	^ properties
]

{ #category : #accessing }
DefectDatafile >> file [
	^ self trimQuotes: (self at: 'File')
]

{ #category : #'as yet unclassified' }
DefectDatafile >> gtDictFor: aView [
	<gtView>
	^ aView forward
		title: 'Items';
		priority: 10;
		object: [ self dict ];
		view: #gtItemsFor:
]

{ #category : #'as yet unclassified' }
DefectDatafile >> gtRawDataFor: aView [
	<gtView>
	^ aView forward
		title: 'Raw data';
		priority: 20;
		object: [ self rawData ];
		view: #gtItemsFor:
]

{ #category : #metric }
DefectDatafile >> hasBug [
	^ self hasRealBug or: [ self hasHeuristicBug ]
]

{ #category : #metric }
DefectDatafile >> hasHeuristicBug [
	^ self at: 'HeuBug'
]

{ #category : #metric }
DefectDatafile >> hasRealBug [
	^ self at: 'RealBug'
]

{ #category : #metric }
DefectDatafile >> loc [
	^ self at: 'CountLineCode'
]

{ #category : #printing }
DefectDatafile >> printOn: aStream [
	"super printOn: aStream.
	aStream
		nextPut: $(;
		nextPutAll: self basename;
		nextPut: $)"

	aStream nextPutAll: self basename
]

{ #category : #accessing }
DefectDatafile >> rawData [
	^ rawData
]

{ #category : #testing }
DefectDatafile >> rawData: aDictionary [
	rawData := aDictionary.
	dict := self cleanDict: aDictionary
]

{ #category : #utility }
DefectDatafile >> threshold [
	"Thresholds for properties"

	^ {
		#smallMethod -> 10.
		#mediumMethod -> 50.
		#highWMC -> 35
	} asDictionary
]

{ #category : #utility }
DefectDatafile >> trimDict: aDict [
	"Replaced by cleanDict:"

	^ (aDict associations collect: [ :a | (self trimQuotes: a key) -> a value ])
		asDictionary
]

{ #category : #utility }
DefectDatafile >> trimQuotes: aString [
	^ aString trimBoth: [ :c | c = $" ]
]

{ #category : #metric }
DefectDatafile >> wmc [
	^ self at: 'SumCyclomatic'
]
