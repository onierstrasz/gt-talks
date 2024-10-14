Class {
	#name : #FilmCollection,
	#superclass : #Object,
	#instVars : [
		'data'
	],
	#category : #'GtTalks-FilmDemo'
}

{ #category : #private }
FilmCollection >> data [
	^ data
]

{ #category : #private }
FilmCollection >> data: anObject [
	data := anObject
]

{ #category : #accessing }
FilmCollection >> films [
	^ self data collect: [ :each | Film new data: each ]
]

{ #category : #view }
FilmCollection >> gtFilmsFor: aView [
	<gtView>
	^ aView columnedList
		title: 'Films';
		priority: 20;
		actionUpdateButtonTooltip: 'Update item list';
		items: [ self films ];
		column: 'Index'
			text: [ :eachItem :eachIndex | eachIndex asRopedText foreground: Color gray ]
			width: 45;
		column: 'Year'
			text: [ :film | film year ]
			width: 60;
		column: 'Title'
			text: [ :film | film title ];
		column: 'Directors'
			text: [ :film | film directors ]
]

{ #category : #view }
FilmCollection >> gtJsonFor: aView [
	<gtView>
	^ aView forward
		title: 'JSON';
		priority: 40;
		object: [ data asGtJson ];
		view: #gtJsonObjectFor:context:
]
