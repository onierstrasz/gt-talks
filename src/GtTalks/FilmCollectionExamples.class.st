Class {
	#name : #FilmCollectionExamples,
	#superclass : #Object,
	#category : #'GtTalks-FilmDemo'
}

{ #category : #accessing }
FilmCollectionExamples >> collection [
	<gtExample>
	| collection |
	collection := FilmCollection new data: self json.
	self assert: collection data size equals: 1938.
	self
		assert: (collection films select: 
			[ :film | film year < 1895 
				or: [ film year > Date today year ] ])
				isEmpty.
	^ collection
]

{ #category : #accessing }
FilmCollectionExamples >> csv [
	<gtExample>
	| csv |
	csv := (FileLocator gtResource / 'feenkcom' / 'gtoolkit-demos' / 'data'
			/ 'imdb' / 'Movies.csv') contents.
	self assert: csv lines size equals: 1939.
	^ csv
]

{ #category : #accessing }
FilmCollectionExamples >> json [
	<gtExample>
	| json |
	json := (CSV2JSON for: self csv) jsonObject.
	self assert: json size equals: 1938.
	^ json
]
