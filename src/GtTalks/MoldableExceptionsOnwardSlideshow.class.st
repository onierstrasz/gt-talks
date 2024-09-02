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
	<text: 'TODO # Moldable Exceptions

FIX THIS LAYOUT

'>
	^ aSlide titleWithCenteredTexts
		setPriority;
		titleWithFormat: (self asTitle: 'Moldable Exceptions');
		newTextWithFormat: (self asBigText: 'andrei.chis@feenk.com');
		newTextWithFormat: (self asBigText: 'tudor.girba@feenk.com');
		newTextWithFormat: (self asBigText: 'oscar.nierstrasz@feenk.com') underline
]
