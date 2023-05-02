Class {
	#name : #BaselineOfGtTalks,
	#superclass : #BaselineOf,
	#category : #BaselineOfGtTalks
}

{ #category : #accessing }
BaselineOfGtTalks class >> loadLepiter [
	| currentProperties |
	currentProperties := LeDatabasesRegistry defaultLogicalDatabase properties.
	currentProperties
		addRegisteredDirectory: FileLocator imageDirectory / 'pharo-local' / 'iceberg' / 'onierstrasz'
				/ 'gt-talks' / 'lepiter'.
	LeDatabasesRegistry default defaultLogicalDatabase reload
]

{ #category : #accessing }
BaselineOfGtTalks >> baseline: spec [
	<baseline>
	spec
		for: #common
		do: [ spec
				baseline: 'GToolkitLudoDemo'
					with: [ spec repository: 'github://feenkcom/gtoolkit-demos:main/src' ];
				baseline: 'GToolkitMoldableDevelopmentDemo'
					with: [ spec repository: 'github://feenkcom/gtoolkit-demos:main/src' ];
				baseline: 'GToolkitDemoSlideshows'
					with: [ spec repository: 'github://feenkcom/gtoolkit-demos:main/src' ];
				baseline: 'GToolkit'
					with: [ spec repository: 'github://feenkcom/gtoolkit:main/src' ].
			spec
				package: 'GtTalks'
				with: [ spec requires: #('GToolkitLudoDemo' 'GToolkitMoldableDevelopmentDemo' 'GToolkitDemoSlideshows' 'GToolkit') ] ]
]
