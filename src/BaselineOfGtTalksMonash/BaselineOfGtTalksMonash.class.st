Class {
	#name : #BaselineOfGtTalksMonash,
	#superclass : #BaselineOf,
	#category : #BaselineOfGtTalksMonash
}

{ #category : #'as yet unclassified' }
BaselineOfGtTalksMonash class >> loadDependencies [
	BaselineOfGtTalks loadLepiter.
	"AWSCardDemo initializeDownload"
]

{ #category : #baselines }
BaselineOfGtTalksMonash >> baseline: spec [
	<baseline>
	spec
		for: #common
		do: [ spec
				baseline: 'Gt4AtProto'
				with: [ spec repository: 'github://feenkcom/gt4atproto:main/src' ].
			spec
				baseline: 'Gt4Llm'
				with: [ spec repository: 'github://feenkcom/gt4llm:main/src' ].
			spec package: 'GtTalksMonash' ]
]
