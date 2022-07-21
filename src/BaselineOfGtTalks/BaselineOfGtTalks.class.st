Class {
	#name : #BaselineOfGtTalks,
	#superclass : #BaselineOf,
	#category : #BaselineOfGtTalks
}

{ #category : #accessing }
BaselineOfGtTalks >> baseline: spec [
	<baseline>
	spec for: #common do: [ spec package: 'GtTalks' ]
]
