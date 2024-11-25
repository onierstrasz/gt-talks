Class {
	#name : #GtTalksHomeSection,
	#superclass : #GtHomeMultiCardSection,
	#category : #'GtTalks-Sections'
}

{ #category : #pageCard }
GtTalksHomeSection >> batBernCard [
	"<gtSectionCard>"
	<gtExample>
	^ GtHomeCard page
		title: 'BATbern50 talk';
		description: 'Presentations as Gt slideshows';
		databaseName: 'GT Talks';
		pageName: 'BATbern50 talk (2023)';
		setPriority;
		assertInvariant;
		yourself
]

{ #category : #priorities }
GtTalksHomeSection >> cardPriorities [
	<gtExample>
	^ #(
		tocCard
		
		yowCard
		yowSlideshowCard
		
		monashCard
		monashSlideshowCard

		eddLiveSlideshowCard
		moldableExceptionsSlideshowCard
		
		eddCard
		huaweiCard
		batBernCard
		vissoftCard
				)
]

{ #category : #pageCard }
GtTalksHomeSection >> eddCard [
	"<gtSectionCard>"
	<gtExample>
	^ GtHomeCard page
		title: 'EDD talk Zurich (2024)';
		description: 'Presentations as Gt slideshows';
		databaseName: 'GT Talks';
		pageName: 'EDD talk Zurich (2024)';
		setPriority;
		assertInvariant;
		yourself
]

{ #category : #slideshowCard }
GtTalksHomeSection >> eddLiveSlideshowCard [
	"<gtSectionCard>"
	<gtExample>
	^ GtHomeCard slideshow
		title: 'EDD Live Slideshow';
		description: 'EDD Live (2024) presentation';
		setPriority;
		slideshowClassSymbol: #EDDLiveSlideshow
			baseLineName: 'GtTalks'
			repo: 'github://onierstrasz/gt-talks:main/src'
			loadLepiterBaseline: #BaselineOfGtTalks;
		yourself
]

{ #category : #pageCard }
GtTalksHomeSection >> huaweiCard [
	"<gtSectionCard>"
	<gtExample>
	^ GtHomeCard page
		title: 'Huawei Meeting';
		description: 'Huawei Explainable Systems presentation (2024)';
		databaseName: 'GT Talks';
		pageName: 'Huawei GT overview';
		setPriority;
		assertInvariant;
		yourself
]

{ #category : #slideshowCard }
GtTalksHomeSection >> moldableExceptionsSlideshowCard [
	"<gtSectionCard>"
	<gtExample>
	^ GtHomeCard slideshow
		title: 'Moldable Exceptions Slideshow';
		description: 'Moldable Exceptions Onward! (2024) presentation';
		setPriority;
		slideshowClassSymbol: #MoldableExceptionsOnwardSlideshow
			baseLineName: 'GtTalks'
			repo: 'github://onierstrasz/gt-talks:main/src'
			loadLepiterBaseline: #BaselineOfGtTalks;
		yourself
]

{ #category : #pageCard }
GtTalksHomeSection >> monashCard [
	<gtSectionCard>
	<gtExample>
	^ GtHomeCard page
		title: 'Monash talk';
		description: 'Notebook for Monash GT 4 Research talk';
		databaseName: 'GT Talks';
		pageName: 'Monash talk';
		setPriority;
		assertInvariant;
		yourself
]

{ #category : #slideshowCard }
GtTalksHomeSection >> monashSlideshowCard [
	<gtSectionCard>
	<gtExample>
	^ GtHomeCard slideshow
		title: 'Monash Slideshow';
		description: 'Monash GT4Research presentation';
		setPriority;
		slideshowClassSymbol: #Gt4Research
			baseLineName: 'GtTalksMonash'
			repo: 'github://onierstrasz/gt-talks:main/src'
			loadLepiterBaseline: #BaselineOfGtTalksMonash;
		yourself
]

{ #category : #accessing }
GtTalksHomeSection >> sectionTitle [
	^ 'Oscar''s GT Talks'
]

{ #category : #pageCard }
GtTalksHomeSection >> tocCard [
	<gtSectionCard>
	<gtExample>
	^ GtHomeCard page
		title: 'Oscar''s Gt Talks';
		description: 'Presentations as Gt slideshows';
		databaseName: 'GT Talks';
		pageName: 'Gt Talks TOC';
		setPriority;
		assertInvariant;
		yourself
]

{ #category : #pageCard }
GtTalksHomeSection >> vissoftCard [
	"NB: Moved to a separate repo"
	"<gtSectionCard>"
	<gtExample>
	^ GtHomeCard page
		title: 'VISSOFT Talk';
		description: 'Presentations as Gt slideshows';
		databaseName: 'GT Talks';
		pageName: 'VISSOFT 2022';
		setPriority;
		assertInvariant;
		yourself
]

{ #category : #pageCard }
GtTalksHomeSection >> yowCard [
	<gtSectionCard>
	<gtExample>
	^ GtHomeCard page
		title: 'Yow MD in Practice';
		description: 'Notebook for Yow! presentation';
		databaseName: 'GT Talks';
		pageName: 'Moldable Development in Practice — Yow! (2024)';
		setPriority;
		assertInvariant;
		yourself
]

{ #category : #slideshowCard }
GtTalksHomeSection >> yowSlideshowCard [
	<gtSectionCard>
	<gtExample>
	^ GtHomeCard slideshow
		title: 'Yow! Slideshow';
		description: 'Yow! (2024) presentation';
		setPriority;
		slideshowClassSymbol: #MDInPracticeYow2024
			baseLineName: 'GtTalksYow2024'
			repo: 'github://onierstrasz/gt-talks:main/src'
			loadLepiterBaseline: #BaselineOfGtTalksYow2024;
		yourself
]
