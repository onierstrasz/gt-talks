Class {
	#name : #BATbern50Slideshow,
	#superclass : #PrioritySlideshow,
	#category : #'GtTalks-Slideshows'
}

{ #category : #accessing }
BATbern50Slideshow class >> show [
	"Implement this here just so we can run it directly from the Coder."
	super show
]

{ #category : #pages }
BATbern50Slideshow >> database [
	"All the pages"
	<gtExample>
	<noTest>
	^ self db
]

{ #category : #initialization }
BATbern50Slideshow >> initializeDb [
	"self db addPage: self inspectingLudoPage."
]

{ #category : #accessing }
BATbern50Slideshow >> pictures [
	^ Path * 'onierstrasz' / 'gt-talks' / 'data' / 'images'
]

{ #category : #accessing }
BATbern50Slideshow >> slidePriorities [
	"Instead of manually setting priorities, just list the slides in order here."
	<gtExample>
	^ #( 
		#titleSlide:
		
		)
]

{ #category : #page }
BATbern50Slideshow >> smalltalk80: aSlide [
	"In the late 60s, Alan Kay predicted that in the foreseeable future handheld multimedia computers would become affordable. He called this a “Dynabook”. (The photo shows a mockup, not a real computer.)
He reasoned that such systems would need to be based on object from the ground up, so he set up a lab at the Xerox Palo Alto Research Center (PARC) to develop such a fully object-oriented system, including both software and hardware. They developed the first graphical workstations with windowing system and mouse."

	<gtSlide>
	
	^ (aSlide textAndElement)
		elementWeight: 0.60;
		priority: (self priorityFor: #smalltalk80:);
		newTextWithFormat:
				(self
						asText:
							'Smalltalk was the first purely object-oriented language and environment, with the first interactive, graphical IDE.');
		element:
				[ GtFilePictureLiveSlide new
						fileReference: (GtResourcesUtility resourceAtPath: self pictures / 'ibm2741.png') ]
]

{ #category : #slides }
BATbern50Slideshow >> titleSlide: aSlide [
	<gtSlide>
	^ aSlide titleWithFooter
		priority: (self priorityFor: #titleSlide:);
		titleBottomPadding: 20;
		subtitleBottomPadding: 40;
		titleWithFormat: (self asTitle: 'Mind the gap');
		subtitleWithFormat: (self asSubTitle: '50 years of shortening feedback loops');
		footerWithFormat: (self asBigText: 'oscar.nierstrasz@feenk.com')
]
