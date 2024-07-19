Class {
	#name : #HuaweiGTSlideshow,
	#superclass : #PrioritySlideshow,
	#category : #'GtTalks-Slideshows'
}

{ #category : #slides }
HuaweiGTSlideshow >> edd: aSlide [
	<gtSlide>
	<text:
'TODO

# Placeholder
'>
	^ aSlide paragraph
		setPriority;
		subtitleWithFormat: (self asSubtitle: 'Example-Driven Development');
		paragraphWithFormat: (self
				asText: 
'Paragraph body.
Possibly over multiple lines.
')
]

{ #category : #slides }
HuaweiGTSlideshow >> examples: aSlide [
	<gtSlide>
	<text:
'TODO

# Placeholder
'>
	^ aSlide paragraph
		setPriority;
		subtitleWithFormat: (self asSubtitle: 'Example = Test + Factory');
		paragraphWithFormat: (self
				asText: 
'Paragraph body.
Possibly over multiple lines.
')
]

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
HuaweiGTSlideshow >> gt: aSlide [
	<gtSlide>
	<text:
'TODO

# Placeholder
'>
	^ aSlide paragraph
		setPriority;
		subtitleWithFormat: (self asSubtitle: 'GT — an open-source platform for building explainable systems');
		paragraphWithFormat: (self
				asText: 
'Paragraph body.
Possibly over multiple lines.
')
]

{ #category : #slides }
HuaweiGTSlideshow >> lepiter: aSlide [
	<gtSlide>
	<text:
'TODO

# Placeholder
'>

	^ aSlide lepiterPage
		setPriority;
		pageNamed: 'Lepiter' from: 'Glamorous Toolkit Book';
		yourself
]

{ #category : #slides }
HuaweiGTSlideshow >> moldableDevelopment: aSlide [
	<gtSlide>
	<text:
'TODO

# Placeholder
'>
	^ aSlide paragraph
		setPriority;
		subtitleWithFormat: (self asSubtitle: 'Moldable development');
		paragraphWithFormat: (self
				asText: 
'Paragraph body.
Possibly over multiple lines.
')
]

{ #category : #slides }
HuaweiGTSlideshow >> moldableInspector: aSlide [
	<gtSlide>
	<text:
'TODO

# Placeholder
'>
	^ aSlide paragraph
		setPriority;
		subtitleWithFormat: (self asSubtitle: 'Moldable Inspector');
		paragraphWithFormat: (self
				asText: 
'Paragraph body.
Possibly over multiple lines.
')
]

{ #category : #slides }
HuaweiGTSlideshow >> moldableTools: aSlide [
	<gtSlide>
	<text:
'TODO

# Placeholder
'>
	^ aSlide paragraph
		setPriority;
		subtitleWithFormat: (self asSubtitle: 'Moldable tools');
		paragraphWithFormat: (self
				asText: 
'Paragraph body.
Possibly over multiple lines.
')
]

{ #category : #slides }
HuaweiGTSlideshow >> opaqueSystems: aSlide [
	<gtSlide>
	<text:
'TODO

# Placeholder
'>
	^ aSlide paragraph
		setPriority;
		subtitleWithFormat: (self asSubtitle: 'Opaque Systems');
		paragraphWithFormat: (self
				asText: 
'Paragraph body.
Possibly over multiple lines.
')
]

{ #category : #slides }
HuaweiGTSlideshow >> otherTools: aSlide [
	<gtSlide>
	<text:
'TODO

# Placeholder
'>
	^ aSlide paragraph
		setPriority;
		subtitleWithFormat: (self asSubtitle: 'Other tools');
		paragraphWithFormat: (self
				asText: 
'Paragraph body.
Possibly over multiple lines.
')
]

{ #category : #slides }
HuaweiGTSlideshow >> placeholder: aSlide [
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
HuaweiGTSlideshow >> slidePriorities [
	<gtExample>
	^ #( 
		title:
		
		explainingExplainableSystems:
			opaqueSystems:
			moldableDevelopment:
		
		gt:
		
		edd:
			troubleWithTests:
		
		summarySlide:
		
		placeholder:
	)
]

{ #category : #slides }
HuaweiGTSlideshow >> title: aSlide [
	<gtSlide>
	<text: '# Explainable systems

As agreed, I''d like to give you a quick overview of what we mean by “Explainable Systems”, introduce to you the Glamorous Toolkit, a platform for developing explainable systems with the help of moldable tools, and explain how examples serve as a bridge between traditional tests and live documentation within explainable systems.'>
	^ aSlide titleWithFooter
		setPriority;
		titleBottomPadding: 20;
		subtitleBottomPadding: 40;
		titleWithFormat: (self asTitle: 'Explainable Systems');
		subtitleWithFormat: (self asBigText: 'Huawei Bern — 2024-07-23');
		footerWithFormat: (self asBigText: 'oscar.nierstrasz@feenk.com')
]

{ #category : #slides }
HuaweiGTSlideshow >> troubleWithTests: aSlide [
	<gtSlide>
	<text:
'TODO

# Placeholder
'>
	^ aSlide paragraph
		setPriority;
		subtitleWithFormat: (self asSubtitle: 'The trouble with Tests');
		paragraphWithFormat: (self
				asText: 
'Paragraph body.
Possibly over multiple lines.
')
]
