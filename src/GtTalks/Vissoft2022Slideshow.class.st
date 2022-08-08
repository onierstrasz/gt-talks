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
Vissoft2022Slideshow >> lepiterDB [
	^ 'onierstrasz/gt-talks/lepiter'
]

{ #category : #accessing }
Vissoft2022Slideshow >> pages [
	"Instead of manually setting priorities, just list the slides in order here."
	<gtExample>
	^ #( 
		titleSlideFor:
		testSlide:
		)
]

{ #category : #accessing }
Vissoft2022Slideshow >> testSlide: aSlide [
	<gtSlide>
	^ aSlide lepiterPage
		  priority: (self priorityFor: #testSlide:);
		  pageNamed: 'Test page' from: self lepiterDB
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
