Class {
	#name : #Monash2024,
	#superclass : #PrioritySlideshow,
	#category : #'GtTalksMonash-Slideshow'
}

{ #category : #slides }
Monash2024 >> placeholder: aSlide [
	<gtSlide>
	<text:
'TODO

# Placeholder
'>
	^ aSlide paragraph
		setPriority;
		subtitleWithFormat: (self asSubtitle: 'Outline');
		paragraphWithFormat: (self
				asText: 
'Paragraph body.
Possibly over multiple lines.
')
]

{ #category : #accessing }
Monash2024 >> slidePriorities [
	"Instead of manually setting priorities, just list the slides in order here."
	<gtExample>
	^ #( 
		title:
		summarySlide:
		placeHolder:
	)
]

{ #category : #slides }
Monash2024 >> title: aSlide [
	<gtSlide>
	<text:
'***TODO***

# TITLE

Hello. My name is Oscar Nierstrasz.

'>

	^ aSlide titleWithFooters
		setPriority;
		titleBottomPadding: 20;
		subtitleBottomPadding: 40;
		titleWithFormat: (self asTitle: 'TITLE');
		subtitleWithFormat: (self asSubtitle: 'SUBTITLE');
		newFooterWithFormat: (self asBigText: 'oscar.nierstrasz@feenk.com')
]
