Class {
	#name : #DefectDatafileGroup,
	#superclass : #Object,
	#traits : 'TGtGroupWithItems',
	#classTraits : 'TGtGroupWithItems classTrait',
	#instVars : [
		'items'
	],
	#category : #'GtTalksMonash-DefectPrediction'
}

{ #category : #accessing }
DefectDatafileGroup >> buggy [
	^ DefectDatafileGroup withAll: (self datafiles select: #hasBug)
]

{ #category : #accessing }
DefectDatafileGroup >> datafiles [
	^ self items
]

{ #category : #utility }
DefectDatafileGroup >> fcaAllProperties [
	^ self fcaforProperties: (self items flatCollect: #fcaProperties) asSet
]

{ #category : #utility }
DefectDatafileGroup >> fcaforProperties: properties [
	| elements |
	elements := self items.

	^ FCAContext
		elements: elements
		properties: properties
		propertyMap: #fcaProperties
]

{ #category : #action }
DefectDatafileGroup >> gtActionBuggyDatafilesFor: anAction [
	"self contentAvailable ifFalse: [ ^ anAction noAction ].
	self missingStatusLinks ifEmpty: [ ^ anAction noAction ]."

	<gtAction>
	^ anAction button
		tooltip: 'Inspect buggy datafiles';
		priority: 20;
		icon: BrGlamorousIcons debug;
		action: [ :element | element phlow spawnObject: self buggy ]
]

{ #category : #view }
DefectDatafileGroup >> gtFCAFor: anAction [
	"self contentAvailable ifFalse: [ ^ anAction noAction ].
	self missingStatusLinks ifEmpty: [ ^ anAction noAction ]."

	<gtAction>
	^ anAction button
		tooltip: 'FCA';
		priority: 30;
		icon: BrGlamorousIcons verticaltree;
		action: [ :element | element phlow spawnObject: self fcaAllProperties ]
]

{ #category : #view }
DefectDatafileGroup >> gtItemsFor: aView [
	<gtView>
	^ aView columnedList
		title: 'Items';
		priority: 50;
		items: [ self items ];
		actionUpdateButtonTooltip: 'Update item list';
		column: 'Index'
			text: [ :eachItem :eachIndex | eachIndex asRopedText foreground: Color gray ]
			width: 45;
		column: 'Item'
			text: [ :eachItem | eachItem gtDisplayText ]
			width: 250;
		column: 'Real bug'
			text: [ :eachItem | eachItem hasRealBug ifTrue: '√' ifFalse: '' ]
			width: 60;
		column: 'Heuristic'
			text: [ :eachItem | eachItem hasHeuristicBug ifTrue: '√' ifFalse: '' ]
			width: 60;
		column: 'LOC'
			text: [ :eachItem | eachItem loc ]
			width: 60;
		column: 'WMC'
			text: [ :eachItem | eachItem wmc ]
			width: 60
]

{ #category : #view }
DefectDatafileGroup >> gtSpotterForFileName: aSearch [
	<gtSearch>
	^ aSearch list
		title: 'Page content';
		priority: 20;
		items: [ self items ];
		itemsLimit: Float infinity;
		itemName: #file;
		sendCategory: [ :aCategory :aStep :thisSearch | DefectDatafileGroup withAll: aCategory items contents ];
		filterBySubstring
]
