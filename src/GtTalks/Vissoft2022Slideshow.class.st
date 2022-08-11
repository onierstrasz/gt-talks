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
Vissoft2022Slideshow >> myLepiterDB [
	^ 'onierstrasz/gt-talks/lepiter'
]

{ #category : #accessing }
Vissoft2022Slideshow >> pages [
	"Instead of manually setting priorities, just list the slides in order here."
	<gtExample>
	^ #( 
		titleSlideFor:
		ludoIntro:
		inspectingLudo:
		scriptingASCenario:
		exploringViews:
		)
]

{ #category : #accessing }
Vissoft2022Slideshow >> scriptingASCenario: aSlide [
	<gtSlide>
	^ aSlide lepiterPage
		  priority: (self priorityFor: #scriptingASCenario:);
		  pageNamed: 'Scripting a scenario' from: self myLepiterDB
]

{ #category : #accessing }
Vissoft2022Slideshow >> titleSlideFor: aSlide [
	<gtSlide>
	
	^ (aSlide title)
		priority: (self priorityFor: #titleSlideFor:);
		titleBottomPadding: 30;
		titleWithFormat: (self asTitle: 'Making systems explainable');
		subtitleWithFormat: (self asBigText: '@onierstrasz')
]
