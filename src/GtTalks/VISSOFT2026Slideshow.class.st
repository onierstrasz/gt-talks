Class {
	#name : 'VISSOFT2026Slideshow',
	#superclass : 'PrioritySlideshow',
	#category : 'GtTalks-Slideshows',
	#package : 'GtTalks',
	#tag : 'Slideshows'
}

{ #category : 'acccessing' }
VISSOFT2026Slideshow >> slidePriorities [
	<gtExample>
	<return: #Array>
	^ #(
		title:
		)	
]

{ #category : 'slides' }
VISSOFT2026Slideshow >> title: aSlide [
	<gtSlide>
<text: '#VISSOFT 2026

Towards Actionable Visualization: Ten Years Later, What Generative AI Changes and What It Cannot.
'>
	^ (aSlide titleWithFooters)
		setPriority;
		titleWithFormat: (self asTitle: 'Towards Actionable Visualization:');
		subtitleWithFormat: (self asSubtitle: 'Ten Years Later, What Generative AI Changes and What It Cannot');
		newFooterWithFormat: (self asBigText: 'Leonel Merino');
		newFooterWithFormat: (self asBigText: 'Mohammad Ghafari');
		newFooterWithFormat: (self asBigText: 'Oscar Nierstrasz') underline
]
