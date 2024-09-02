"
EDD presentation for Live 2024 workshop.
"
Class {
	#name : #EDDLiveSlideshow,
	#superclass : #PrioritySlideshow,
	#category : #'GtTalks-Slideshows'
}

{ #category : #slides }
EDDLiveSlideshow >> placeholder: aSlide [
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

{ #category : #slides }
EDDLiveSlideshow >> slidePriorities [
	"Instead of manually setting priorities, just list the slides in order here."
	<gtExample>
	^ #( 
		title:
		
		"tddTrouble:

		whatsAnExample:
			memoryExample:
			composingExamples:
			whyExamples:

		modelingPrices:
			moneyClasses:
			moneyExamples:
		
		concretePrice:
			startFromAnObject:
			factoryMethod:
			addingViews:
			extractingExamples:
			addingAssertions:
			priceExamples:
		
		summarySlide:"
		
		placeholder:
	)
]

{ #category : #'as yet unclassified' }
EDDLiveSlideshow >> title: aSlide [
	<gtSlide>
	<text: 'TO DO'>
	^ aSlide titleWithCenteredTexts
		setPriority;
		titleWithFormat: (self asTitle: 'Example-driven development:');
		subtitleWithFormat: (self asSubtitle: 'bridging tests and documentation');
		newTextWithFormat: (self asBigText: 'oscar.nierstrasz@feenk.com') underline;
		newTextWithFormat: (self asBigText: 'andrei.chis@feenk.com');
		newTextWithFormat: (self asBigText: 'tudor.girba@feenk.com')
]
