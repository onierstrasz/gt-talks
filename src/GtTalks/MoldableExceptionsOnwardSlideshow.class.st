Class {
	#name : #MoldableExceptionsOnwardSlideshow,
	#superclass : #PrioritySlideshow,
	#category : #'GtTalks-Slideshows'
}

{ #category : #slides }
MoldableExceptionsOnwardSlideshow >> placeholder: aSlide [
	<gtSlide>
	<text:
'TODO

Placeholder'>
	^ aSlide paragraph
		setPriority;
		subtitleWithFormat: (self asSubtitle: 'Placeholder');
		paragraphWithFormat: (self
				asText: 'Paragraph body.
Possibly over multiple lines.
')
]

{ #category : #accessing }
MoldableExceptionsOnwardSlideshow >> slidePriorities [
	"Instead of manually setting priorities, just list the slides in order here."
	<gtExample>
	^ #( 
		title:
		
		
		"summarySlide:"
		
		placeholder:
	)
]

{ #category : #slides }
MoldableExceptionsOnwardSlideshow >> title: aSlide [
	<gtSlide>
	<text:
'TODO # Moldable Exceptions

FIX THIS LAYOUT

'>
	^ aSlide paragraph
		setPriority;
		subtitleWithFormat: (self asTitle: 'Moldable Exceptions');
		paragraphWithFormat: (self asBigText:
'

andrei.chis@feenk.com
tudor.girba@feenk.com
oscar.nierstrasz@feenk.com
')
]
