Class {
	#name : #BaselineOfGtTalksMonash,
	#superclass : #BaselineOf,
	#category : #BaselineOfGtTalksMonash
}

{ #category : #'as yet unclassified' }
BaselineOfGtTalksMonash class >> loadDependencies [
	BaselineOfGtTalks loadLepiter.
	AWSCardDemo initializeDownload.
	#BaselineOfGt4AtProto asClass loadLepiter.
	#BaselineOfGt4Llm asClass loadAllLepiterDatabases
]

{ #category : #baselines }
BaselineOfGtTalksMonash >> baseline: spec [
	<baseline>
	spec
		for: #common
		do: [ spec
				baseline: 'Gt4AtProto'
				with: [ spec
						baseline: 'GToolkit4Cobol'
						with: [ spec repository: 'github://feenkcom/gt4cobol:main/src' ].
					spec repository: 'github://feenkcom/gt4atproto:main/src' ].
			spec
				baseline: 'Gt4Llm'
				with: [ spec repository: 'github://feenkcom/gt4llm:main/src' ].
			spec
				baseline: 'GtTalks'
				with: [ spec repository: 'github://onierstrasz/gt-talks:main/src' ].
			spec package: 'GtTalksMonash' ]
]
