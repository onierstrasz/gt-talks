Class {
	#name : #MoldableExceptionsOnwardSlideshow,
	#superclass : #PrioritySlideshow,
	#category : #'GtTalks-Slideshows'
}

{ #category : #slides }
MoldableExceptionsOnwardSlideshow >> comparison: aSlide [
	<gtSlide>
	<text:
'TODO

self assert: Snaffle foo = Snaffle bar

'>
	^ aSlide headingAndCode
		setPriority;
		heading: 'Heading';
		addTextSnippet: 'Text snippet';
		addCodeSnippet: 'self assert:
	Snaffle foo = Snaffle bar'
]

{ #category : #slides }
MoldableExceptionsOnwardSlideshow >> comparisonMolded: aSlide [
	<gtSlide>
	<text:
'TODO


self assert: Snaffle foo equals: Snaffle bar

'>
	^ aSlide headingAndCode
		setPriority;
		heading: 'Heading';
		addTextSnippet: 'Text snippet';
		addCodeSnippet: 'self assert: Snaffle foo
	equals: Snaffle bar'
]

{ #category : #slides }
MoldableExceptionsOnwardSlideshow >> debuggersUnloved: aSlide [
	<gtSlide>
	<text:
'TODO

Need an example of code that triggers a debugger but why?
'>
	^ aSlide headingAndCode
		setPriority;
		heading: 'Debuggers are unloved beasts';
		addTextSnippet: 'Text snippet';
		addCodeSnippet: '"Need an example of code that triggers a debugger but why?"
'
]

{ #category : #slides }
MoldableExceptionsOnwardSlideshow >> fileError: aSlide [
	<gtSlide>
	<text:
'TODO

This also has a corrective action'>
	^ aSlide headingAndCode
		setPriority;
		heading: 'Heading';
		addTextSnippet: 'Text snippet';
		addCodeSnippet: '''foo/bar/baz'' asFileReference createDirectory.'
]

{ #category : #slides }
MoldableExceptionsOnwardSlideshow >> moldableTools: aSlide [
	<gtSlide>
	<text:
'TODO

Placeholder'>
	^ aSlide headingAndCode
		setPriority;
		heading: 'Heading';
		addTextSnippet: 'Text snippet';
		addCodeSnippet: '"Code to evaluate."
3+4.'
]

{ #category : #slides }
MoldableExceptionsOnwardSlideshow >> placeholder: aSlide [
	<gtSlide>
	<text:
'TODO

Placeholder'>
	^ aSlide headingAndCode
		setPriority;
		heading: 'Heading';
		addTextSnippet: 'Text snippet';
		addCodeSnippet: '"Code to evaluate."
3+4.'
]

{ #category : #accessing }
MoldableExceptionsOnwardSlideshow >> slidePriorities [
	"Instead of manually setting priorities, just list the slides in order here."
	<gtExample>
	^ #( 
		title:
		
		debuggersUnloved:
		comparison:
		comparisonMolded:
		fileError:
		tooManyRedirects:
		
		moldableTools:
		
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

{ #category : #slides }
MoldableExceptionsOnwardSlideshow >> tooManyRedirects: aSlide [
	<gtSlide>
	<text:
'TODO

Placeholder'>
	^ aSlide headingAndCode
		setPriority;
		heading: 'Heading';
		addTextSnippet: 'Text snippet';
		addCodeSnippet: 'ZnClient new 
	url: ''https://www.gmail.com'';
	maxNumberOfRedirects: 3;
	get'
]
