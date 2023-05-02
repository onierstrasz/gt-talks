Extension { #name : #GtHome }

{ #category : #'*GtTalks' }
GtHome >> gtTalksSection [
	<gtHomeSection>
	^ GtHomeStartPageSection new 
		title: 'Oscar''s Gt Talks';
		description: 'Presentations as Gt slideshows';
		databaseName: 'onierstrasz/gt-talks/lepiter';
		startPageName: 'Gt Talks TOC';
		priority: 6
]
