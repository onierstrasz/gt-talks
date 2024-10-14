Class {
	#name : #Film,
	#superclass : #Object,
	#instVars : [
		'data'
	],
	#category : #'GtTalks-FilmDemo'
}

{ #category : #private }
Film >> data [
	^ data
]

{ #category : #private }
Film >> data: anObject [
	data := anObject
]

{ #category : #accessing }
Film >> directors [
	^ self data at: 'Directors'
]

{ #category : #view }
Film >> gtFieldsFor: aView [
	<gtView>
	^ aView forward
		title: 'Fields';
		priority: 10;
		object: [ self data ];
		view: #gtItemsFor:
]

{ #category : #printing }
Film >> printOn: aStream [
	aStream nextPutAll: self title
]

{ #category : #accessing }
Film >> title [
	^ self data at: 'Title'
]
