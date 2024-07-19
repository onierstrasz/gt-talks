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
		pageName: 'BATbern50 talk (2023)';
		priority: 50;
		assertInvariant;
		yourself
]

{ #category : #accessing }
GtTalksHomeSection >> eddCard [
	<gtSectionCard>
	<gtExample>
	^ GtHomeCard page
		title: 'EDD talk Zurich (2024)';
		description: 'Presentations as Gt slideshows';
		databaseName: 'onierstrasz/gt-talks/lepiter';
		pageName: 'EDD talk Zurich (2024)';
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
		databaseName: 'GT Talks';
		pageName: 'Gt Talks TOC';
		priority: 10;
		assertInvariant;
		yourself
]

{ #category : #accessing }
GtTalksHomeSection >> vissoftCard [
	"NB: Moved to a separate repo"
	"<gtSectionCard>"
	<gtExample>
	^ GtHomeCard page
		title: 'VISSOFT Talk';
		description: 'Presentations as Gt slideshows';
		databaseName: 'onierstrasz/gt-talks/lepiter';
		pageName: 'VISSOFT Talk (2022)';
		priority: 51;
		assertInvariant;
		yourself
]
