"
Slideshow for the VISSOFT 2022 Keynote.

```
VissoftSlideshow show
```

"
Class {
	#name : #Vissoft2022Slideshow,
	#superclass : #PrioritySlideshow,
	#category : #GtTalks
}

{ #category : #accessing }
Vissoft2022Slideshow class >> show [
	"Implement this here just so we can run it directly from the Coder."
	super show
]

{ #category : #accessing }
Vissoft2022Slideshow >> coda: aSlide [
	<gtSlide>
	^ (aSlide textAndElement)
		elementWeight: 0.5;
		priority: (self priorityFor: #coda:);
		newTextWithFormat: 
			(self asHeader: 'Conclusion

'),
			(self asBigText: 'Custom views and examples are used not only to analyze foreign systems, but are heavily used within GT itself') ,
			(self asText: '


Blue classes and packages contain at least one custom view.
Green ones have at least one example..');
		element: [ GtTour new treemapWithViewsAndExamples  ]
]

{ #category : #accessing }
Vissoft2022Slideshow >> codaPage: aSlide [
	"<gtSlide>
	NOT USED "
	^ aSlide lepiterPage
		  priority: (self priorityFor: #coda:);
		  pageNamed: 'Coda' from: self myLepiterDB
]

{ #category : #accessing }
Vissoft2022Slideshow >> documentingRules: aSlide [
	<gtSlide>
	^ aSlide lepiterPage
		  priority: (self priorityFor: #documentingRules:);
		  pageNamed: 'Documenting the rules' from: self myLepiterDB
]

{ #category : #accessing }
Vissoft2022Slideshow >> download: aSlide [
	<gtSlide>
	^ aSlide title
		priority: (self priorityFor: #download:);
		titleWithFormat: (self asSubtitle: 'Try it yourself ...');
		titleBottomPadding: 60;
		subtitleWithFormat: (self
				asBigText: '

https://gtoolkit.com
')
]

{ #category : #accessing }
Vissoft2022Slideshow >> exampleHeading: aSlide [
	<gtSlide>
	^ (aSlide paragraph)
		priority: (self priorityFor: #exampleHeading:);
		subtitleWithFormat: (self asSubtitle: 'Examples');
		paragraphWithFormat:
				(self
						asBigText:
							'
Tests should return example objects that can be used to compose further tests as well as documentation.
') italic
]

{ #category : #accessing }
Vissoft2022Slideshow >> examples: aSlide [
	<gtSlide>
	^ aSlide lepiterPage
		  priority: (self priorityFor: #examples:);
		  pageNamed: 'Examples' from: self myLepiterDB
]

{ #category : #accessing }
Vissoft2022Slideshow >> exploringRuby: aSlide [
	<gtSlide>
	^ aSlide lepiterPage
		  priority: (self priorityFor: #exploringRuby:);
		  pageNamed: 'Exploring Ruby code' from: self myLepiterDB
]

{ #category : #accessing }
Vissoft2022Slideshow >> exploringViews: aSlide [
	<gtSlide>
	^ aSlide lepiterPage
		  priority: (self priorityFor: #exploringViews:);
		  pageNamed: 'Exploring custom views' from: self myLepiterDB
]

{ #category : #accessing }
Vissoft2022Slideshow >> inspectingLudo: aSlide [
	<gtSlide>
	^ aSlide lepiterPage
		  priority: (self priorityFor: #inspectingLudo:);
		  pageNamed: 'Inspecting the Ludo game' from: self myLepiterDB
]

{ #category : #accessing }
Vissoft2022Slideshow >> inspectorHeading: aSlide [
	<gtSlide>
	
	^ (aSlide paragraph)
		priority: (self priorityFor: #inspectorHeading:);
		subtitleWithFormat: (self asSubtitle: 'The Inspector');
		paragraphWithFormat:
				(self
						asBigText:
							'
Use an object inspector rather than a text editor to put live objects rather than code at the center of the IDE.
') italic
]

{ #category : #accessing }
Vissoft2022Slideshow >> lepiter: aSlide [
	<gtSlide>
	^ aSlide lepiterPage
		  priority: (self priorityFor: #lepiter:);
		  pageNamed: 'Lepiter' from: self myLepiterDB
]

{ #category : #accessing }
Vissoft2022Slideshow >> lepiterHeading: aSlide [
	<gtSlide>
	
	^ (aSlide paragraph)
		priority: (self priorityFor: #lepiterHeading:);
		subtitleWithFormat: (self asSubtitle: 'Lepiter');
		paragraphWithFormat:
				(self
						asBigText:
							'
Use a live notebook to author and explore narratives that connect live objects and code.
') italic
]

{ #category : #accessing }
Vissoft2022Slideshow >> ludoIntro: aSlide [
	<gtSlide>
	
	^ (aSlide textAndElement)
		elementWeight: 0.5;
		priority: (self priorityFor: #ludoIntro:);
		newTextWithFormat: (self asHeader: 'Explaining the Ludo game') bold,
			(self asText: '

The Ludo game was a (Java) programming exercise for 1st year students.

We can play this version of the game, but we cannot talk to it.');
		element: [ GtLudoGame new asElement asScalableElement ]
]

{ #category : #accessing }
Vissoft2022Slideshow >> millerColumns: aSlide [
	<gtSlide>
	^ aSlide lepiterPage
		  priority: (self priorityFor: #millerColumns:);
		  pageNamed: 'Miller columns' from: self myLepiterDB
]

{ #category : #accessing }
Vissoft2022Slideshow >> moldableHeading: aSlide [
	<gtSlide>
	
	^ (aSlide paragraph)
		priority: (self priorityFor: #moldableHeading:);
		subtitleWithFormat: (self asSubtitle: 'Moldable Views');
		paragraphWithFormat:
				(self
						asBigText:
							'
Use custom views to answer domain-specific questions about objects.
') italic
]

{ #category : #accessing }
Vissoft2022Slideshow >> moldableViews: aSlide [
	<gtSlide>
	^ aSlide lepiterPage
		  priority: (self priorityFor: #moldableViews:);
		  pageNamed: 'Moldable views' from: self myLepiterDB
]

{ #category : #accessing }
Vissoft2022Slideshow >> myLepiterDB [
	^ 'onierstrasz/gt-talks/lepiter'
]

{ #category : #accessing }
Vissoft2022Slideshow >> part1: aSlide [
	<gtSlide>
	
	^ (aSlide paragraph)
		priority: (self priorityFor: #part1:);
		subtitleWithFormat: (self asSubtitle: 'Part I');
		paragraphWithFormat:
				(self
						asBigText:
							'
Explaining the Ludo game.
')
]

{ #category : #accessing }
Vissoft2022Slideshow >> part2: aSlide [
	<gtSlide>
	
	^ (aSlide paragraph)
		priority: (self priorityFor: #part2:);
		subtitleWithFormat: (self asSubtitle: 'Part II');
		paragraphWithFormat:
				(self
						asBigText:
							'
Make systems explainable by shifting the focus in the IDE from editing source code to exploring live objects, source code, and narratives that link them.
') italic
]

{ #category : #accessing }
Vissoft2022Slideshow >> part3: aSlide [
	<gtSlide>
	
	^ (aSlide paragraph)
		priority: (self priorityFor: #part3:);
		subtitleWithFormat: (self asSubtitle: 'Conclusion');
		paragraphWithFormat:
				(self
						asBigText:
							'

Systems become explainable by linking code and examples within live documentation.
') italic
]

{ #category : #accessing }
Vissoft2022Slideshow >> queryingObjects: aSlide [
	<gtSlide>
	^ aSlide lepiterPage
		  priority: (self priorityFor: #queryingObjects:);
		  pageNamed: 'Querying objects' from: self myLepiterDB
]

{ #category : #accessing }
Vissoft2022Slideshow >> scriptingAScenario: aSlide [
	<gtSlide>
	^ aSlide lepiterPage
		  priority: (self priorityFor: #scriptingAScenario:);
		  pageNamed: 'Scripting a scenario' from: self myLepiterDB
]

{ #category : #accessing }
Vissoft2022Slideshow >> slidePriorities [
	"Instead of manually setting priorities, just list the slides in order here."
	<gtExample>
	^ #( 
		#titleSlide:
		part1:
			ludoIntro:
			inspectingLudo:
			scriptingAScenario:
			exploringViews:
			trackingState:
			documentingRules:
			summary:
		part2:
			inspectorHeading:
				millerColumns:
				queryingObjects:
				visualizingObjects:
			moldableHeading:
				moldableViews:
				exploringRuby:
			lepiterHeading:
				lepiter:
			exampleHeading:
				examples:
		part3:
			coda:
			download:
		)
]

{ #category : #accessing }
Vissoft2022Slideshow >> summary: aSlide [
	<gtSlide>
	
	^ (aSlide paragraph)
		priority: (self priorityFor: #summary:);
		subtitleWithFormat: (self asSubtitle: 'The story so far ...');
		paragraphWithFormat:
				(self
						asBigText:
							'

— The '), (self asBigText: 'Object Inspector') italic, (self asBigText: ' lets you explore live objects with custom views

— '), (self asBigText: 'Lepiter notebooks') italic, (self asBigText: ' enable narratives linking live objects and code

— Test methods return '), (self asBigText: 'live examples') italic 
]

{ #category : #accessing }
Vissoft2022Slideshow >> titleSlide: aSlide [
	<gtSlide>
	^ aSlide title
		priority: (self priorityFor: #titleSlide:);
		titleBottomPadding: 60;
		titleWithFormat: (self asTitle: 'Making systems explainable');
		subtitleWithFormat: (self asBigText: '@onierstrasz — feenk.com')
]

{ #category : #accessing }
Vissoft2022Slideshow >> trackingState: aSlide [
	<gtSlide>
	^ aSlide lepiterPage
		  priority: (self priorityFor: #trackingState:);
		  pageNamed: 'Tracking state' from: self myLepiterDB
]

{ #category : #accessing }
Vissoft2022Slideshow >> visualizingObjects: aSlide [
	<gtSlide>
	^ aSlide lepiterPage
		  priority: (self priorityFor: #visualizingObjects:);
		  pageNamed: 'Visualizing objects' from: self myLepiterDB
]
