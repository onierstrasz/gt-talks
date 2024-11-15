"
An experiment to explore the datasets in this repo:
https://github.com/awsm-research/Large-Defect-Prediction-Benchmark

"
Class {
	#name : #DefectDataset,
	#superclass : #Object,
	#traits : 'TDefectDatafileGroup',
	#classTraits : 'TDefectDatafileGroup classTrait',
	#instVars : [
		'rawData',
		'file'
	],
	#category : #'GtTalksMonash-DefectPrediction'
}

{ #category : #'instance creation' }
DefectDataset class >> for: aDictionaryArray [ 
	^ self new
		rawData: aDictionaryArray;
		yourself
]

{ #category : #'instance creation' }
DefectDataset class >> forFile: aCSVFile [
	| json |
	self assert: aCSVFile exists.
	json := (CSV2JSON for: aCSVFile contents) json jsonObject.
	^ (self for: json)
		file: aCSVFile;
		yourself
]

{ #category : #accessing }
DefectDataset >> file [
	^ file
]

{ #category : #accessing }
DefectDataset >> file: anObject [
	file := anObject
]

{ #category : #accessing }
DefectDataset >> items [
	items
		ifNil: [ items := self rawData collect: [ :d | DefectDatafile for: d ] ].
	^ items
]

{ #category : #printing }
DefectDataset >> printOn: aStream [
	super printOn: aStream.
	self file notNil
		ifTrue: [ aStream
				nextPutAll: ' (';
				nextPutAll: file name;
				nextPutAll: ') [';
				nextPutAll: self items size printString;
				nextPutAll: ' items]' ]
]

{ #category : #accessing }
DefectDataset >> rawData [
	^ rawData
]

{ #category : #initialization }
DefectDataset >> rawData: aDictionaryArray [
	rawData := aDictionaryArray
]
