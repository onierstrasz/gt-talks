Class {
	#name : #GtTalksHomeSection,
	#superclass : #GtHomeMultiCardSection,
	#category : #'GtTalks-Sections'
}

{ #category : #accessing }
GtTalksHomeSection >> batBernCard [
	"<gtSectionCard>"
	<gtExample>
	^ GtHomeCard page
		title: 'BATbern50 talk';
		description: 'Presentations as Gt slideshows';
		databaseName: 'GT Talks';
		pageName: 'BATbern50 talk (2023)';
		priority: 50;
		assertInvariant;
		yourself
]

{ #category : #accessing }
GtTalksHomeSection >> eddCard [
	"<gtSectionCard>"
	<gtExample>
	^ GtHomeCard page
		title: 'EDD talk Zurich (2024)';
		description: 'Presentations as Gt slideshows';
		databaseName: 'GT Talks';
		pageName: 'EDD talk Zurich (2024)';
		priority: 20;
		assertInvariant;
		yourself
]

{ #category : #accessing }
GtTalksHomeSection >> eddLiveSlideshowCard [
	"<gtSectionCard>"
	<gtExample>
	^ GtHomeCard slideshow
		title: 'EDD Live Slideshow';
		description: 'EDD Live (2024) presentation';
		priority: 30;
		slideshowClassSymbol: #EDDLiveSlideshow
			baseLineName: 'GtTalks'
			repo: 'github://onierstrasz/gt-talks:main/src'
			loadLepiterBaseline: #BaselineOfGtTalks;
		yourself
]

{ #category : #accessing }
GtTalksHomeSection >> huaweiCard [
	"<gtSectionCard>"
	<gtExample>
	^ GtHomeCard page
		title: 'Huawei Meeting';
		description: 'Huawei Explainable Systems presentation (2024)';
		databaseName: 'GT Talks';
		pageName: 'Huawei GT overview';
		priority: 20;
		assertInvariant;
		yourself
]

{ #category : #accessing }
GtTalksHomeSection >> moldableDevelopmentInPracticeYowSlideshowCard [
	<gtSectionCard>
	<gtExample>
	^ GtHomeCard slideshow
		title: 'MD in Practice (Yow!)';
		description: 'Moldable Development in Practice (Yow!)';
		priority: 20;
		slideshowClassSymbol: #MDInPracticeYow2024
			baseLineName: 'GtTalks'
			repo: 'github://onierstrasz/gt-talks:main/src'
			loadLepiterBaseline: #BaselineOfGtTalks;
		yourself
]

{ #category : #accessing }
GtTalksHomeSection >> moldableExceptionsSlideshowCard [
	"<gtSectionCard>"
	<gtExample>
	^ GtHomeCard slideshow
		title: 'Moldable Exceptions Slideshow';
		description: 'Moldable Exceptions Onward! (2024) presentation';
		priority: 20;
		slideshowClassSymbol: #MoldableExceptionsOnwardSlideshow
			baseLineName: 'GtTalks'
			repo: 'github://onierstrasz/gt-talks:main/src'
			loadLepiterBaseline: #BaselineOfGtTalks;
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
		databaseName: 'GT Talks';
		pageName: 'VISSOFT 2022';
		priority: 51;
		assertInvariant;
		yourself
]
