Class {
	#name : #GtTalksHomeSection,
	#superclass : #GtHomeMultiCardSection,
	#category : #'GtTalks-Sections'
}

{ #category : #accessing }
GtTalksHomeSection >> batBernCard [
	<gtSectionCard>
	<gtExample>
	^ GtHomeCard page
		title: 'BATbern50 talk';
		description: 'Presentations as Gt slideshows';
		databaseName: 'onierstrasz/gt-talks/lepiter';
		pageName: 'BATbern50 talk';
		priority: 20;
		assertInvariant;
		yourself
]

{ #category : #accessing }
GtTalksHomeSection >> sectionTitle [
	^ 'Oscar''s GT Talks'
]

{ #category : #accessing }
GtTalksHomeSection >> tocCard [
	<gtSectionCard>
	<gtExample>
	^ GtHomeCard page
		title: 'Oscar''s Gt Talks';
		description: 'Presentations as Gt slideshows';
		databaseName: 'onierstrasz/gt-talks/lepiter';
		pageName: 'Gt Talks TOC';
		priority: 10;
		assertInvariant;
		yourself
]

{ #category : #accessing }
GtTalksHomeSection >> vissoftCard [
	<gtSectionCard>
	<gtExample>
	^ GtHomeCard page
		title: 'VISSOFT Talk';
		description: 'Presentations as Gt slideshows';
		databaseName: 'onierstrasz/gt-talks/lepiter';
		pageName: 'VISSOFT Talk';
		priority: 20;
		assertInvariant;
		yourself
]
