Class {
	#name : #BaselineOfGtTalks,
	#superclass : #BaselineOf,
	#category : #BaselineOfGtTalks
}

{ #category : #accessing }
BaselineOfGtTalks class >> gtDependencyAnalysisPreloadedBaselines [
	^ super gtDependencyAnalysisPreloadedBaselines
		copyWith: BaselineOfGToolkit
]

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
	spec for: #common do: [ spec package: 'GtTalks' ]
]
