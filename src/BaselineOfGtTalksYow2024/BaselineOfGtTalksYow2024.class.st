Class {
	#name : #BaselineOfGtTalksYow2024,
	#superclass : #BaselineOf,
	#category : #BaselineOfGtTalksYow2024
}

{ #category : #loading }
BaselineOfGtTalksYow2024 class >> loadDependencies [
	BaselineOfGtTalks loadLepiter.
	AWSCardDemo initializeDownload
]

{ #category : #baselines }
BaselineOfGtTalksYow2024 >> baseline: spec [
	<baseline>
	spec
		for: #common
		do: [ spec
				baseline: 'GToolkit4Cobol'
				with: [ spec repository: 'github://feenkcom/gt4cobol:main/src' ].
			spec
				baseline: 'GtTalks'
				with: [ spec repository: 'github://onierstrasz/gt-talks:main/src' ].
			spec package: 'GtTalksYow2024' ]
]
