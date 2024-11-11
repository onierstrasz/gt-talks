Class {
	#name : #BaselineOfGtTalksYow2024,
	#superclass : #BaselineOf,
	#category : #BaselineOfGtTalksYow2024
}

{ #category : #loading }
BaselineOfGtTalksYow2024 class >> loadDependencies [
	self loadGt4Cobol
]

{ #category : #loading }
BaselineOfGtTalksYow2024 class >> loadGt4Cobol [
	Metacello new
		repository: 'github://feenkcom/gt4cobol:main/src';
		baseline: 'GToolkit4Cobol';
		load.
	#BaselineOfGToolkit4Cobol asClass loadLepiter
]

{ #category : #baselines }
BaselineOfGtTalksYow2024 >> baseline: spec [
	<baseline>
	spec for: #common do: [ spec package: 'GtTalksYow2024' ]
]
