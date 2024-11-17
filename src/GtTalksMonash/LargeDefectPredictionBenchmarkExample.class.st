Class {
	#name : #LargeDefectPredictionBenchmarkExample,
	#superclass : #Object,
	#category : #'GtTalksMonash-DefectPrediction'
}

{ #category : #example }
LargeDefectPredictionBenchmarkExample >> folder [
	<gtExample>
	| folder |
	folder := 'LargeDefectPredictionBenchmark' asFileReference.
	^ folder
]

{ #category : #example }
LargeDefectPredictionBenchmarkExample >> folderDeleted [
	<gtExample>
	<noTest>
	| folder |
	folder := 'LargeDefectPredictionBenchmark' asFileReference.
	folder ensureDeleteAll.
	self assert: folder exists not.
	^ folder
]

{ #category : #example }
LargeDefectPredictionBenchmarkExample >> lucene230CSV [
	<gtExample>
	| csv |
	csv := self repoFolder / 'JIRA-defect-dataset/lucene-2.3.0.csv'.
	self assert: csv contents lines size equals: 806.
	^ csv
]

{ #category : #example }
LargeDefectPredictionBenchmarkExample >> lucene230Dataset [
	<gtExample>
	| json dataset |
	json := (CSV2JSON for: self lucene230CSV contents) json jsonObject.
	dataset := DefectDataset for: json.
	self assert: dataset size equals: 805.
	^ dataset
]

{ #category : #example }
LargeDefectPredictionBenchmarkExample >> luceneDatasets [
	<gtExample>
	| lucene |
	lucene := (LargeDefectPredictionBenchmarkExample new repoFolder
			/ 'JIRA-defect-dataset' allChildrenMatching: 'lucene*.csv')
			collect: [ :f | DefectDataset forFile: f ].
	self assert: lucene size equals: 4.
	^ lucene
]

{ #category : #example }
LargeDefectPredictionBenchmarkExample >> repoFolder [
	<gtExample>
	| repoFolder repo repository |
	repoFolder := self folder.
	repoFolder exists
		ifFalse: [ repo := 'git@github.com:awsm-research/Large-Defect-Prediction-Benchmark.git'.
			repository := IceRepositoryCreator fromUrl: repo to: repoFolder ].
	self assert: repoFolder exists.
	^ repoFolder
]
