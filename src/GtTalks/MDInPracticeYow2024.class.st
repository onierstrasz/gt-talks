Class {
	#name : #MDInPracticeYow2024,
	#superclass : #PrioritySlideshow,
	#category : #'GtTalks-Slide'
}

{ #category : #slides }
MDInPracticeYow2024 >> placeholder: aSlide [
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

{ #category : #'as yet unclassified' }
MDInPracticeYow2024 >> slidePriorities [
	<gtExample>
	^ #( 
		title:
		
		
		placeholder:
	)
]

{ #category : #slides }
MDInPracticeYow2024 >> title: aSlide [
	<gtSlide>
	<text:
'***TODO***

# Moldable Development in Practice — Patterns for Legacy Modernization

Hello. My name is Oscar Nierstrasz.

Today I''d like to tell you about *Moldable Exceptions*, which is to say, how you can adapt your debugging tools to your application domain, and make debugging a more pleasant experience.'>

	^ aSlide titleWithFooters
		setPriority;
		titleBottomPadding: 20;
		subtitleBottomPadding: 40;
		titleWithFormat: (self asTitle: 'Moldable Development in Practice');
		subtitleWithFormat: (self asSubtitle: 'Patterns for Legacy Modernization');
		newFooterWithFormat: (self asBigText: 'oscar.nierstrasz@feenk.com')
]
