Class {
	#name : #HuaweiGTSlideshow,
	#superclass : #PrioritySlideshow,
	#category : #'GtTalks-Slideshows'
}

{ #category : #slides }
HuaweiGTSlideshow >> explainingExplainableSystems: aSlide [
	<gtSlide>
	<text:
'TODO

# Placeholder
'>
	^ aSlide paragraph
		setPriority;
		subtitleWithFormat: (self asSubtitle: 'What are Explainable Systems?');
		paragraphWithFormat: (self
				asText: 
'Paragraph body.
Possibly over multiple lines.
')
]

{ #category : #slides }
HuaweiGTSlideshow >> placeholder: aSlide [
	"<gtSlide>"
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
HuaweiGTSlideshow >> slidePriorities [
	<gtExample>
	^ #( 
		title:
		
		explainingExplainableSystems:
		
		summarySlide:
		
		placeholder:
	)
]

{ #category : #slides }
HuaweiGTSlideshow >> title: aSlide [
	<gtSlide>
	<text:
'TODO

# Placeholder
'>
	^ aSlide title
		setPriority;
		titleBottomPadding: 20;
		titleWithFormat: (self asTitle: 'Explainable Systems');
		subtitleWithFormat: (self asBigText: 'oscar.nierstrasz@feenk.com')
]
