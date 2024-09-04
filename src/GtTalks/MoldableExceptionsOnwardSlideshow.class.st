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


'>
	^ aSlide titleWithFooters
		setPriority;
		titleWithFormat: (self asTitle: 'Moldable Exceptions');
		newFooterWithFormat: (self asBigText: 'andrei.chis@feenk.com');
		newFooterWithFormat: (self asBigText: 'tudor.girba@feenk.com');
		newFooterWithFormat: (self asBigText: 'oscar.nierstrasz@feenk.com') underline
]
