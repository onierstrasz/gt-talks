Class {
	#name : #MoldableExceptionsOnwardSlideshow,
	#superclass : #PrioritySlideshow,
	#category : #'GtTalks-Slideshows'
}

{ #category : #slides }
MoldableExceptionsOnwardSlideshow >> comparison: aSlide [
	<gtSlide>
	<text:
'# TODO

self assert: Snaffle foo = Snaffle bar

'>
	^ aSlide headingAndCode
		setPriority;
		heading: 'The trouble with generic debuggers';
		"addTextSnippet: 'Text snippet';"
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
MoldableExceptionsOnwardSlideshow >> debuggingSpecifications: aSlide [
	<gtSlide>
	<text:
'TODO

SKIP THIS?

Placeholder'>
	^ aSlide headingAndCode
		setPriority;
		heading: 'Heading';
		addTextSnippet: 'Text snippet';
		addCodeSnippet: '"Code to evaluate."
3+4.'
]

{ #category : #page }
MoldableExceptionsOnwardSlideshow >> examplesPage [
	<lePage>
	<gtExample>
	<noTest>
	^ (LePage named: 'More examples')
	addSnippet: (LeTextSnippet new
			string: '# Ludo';
			addSnippet: (LeTextSnippet new
					string: 'Ludo game playing errors offer debugging views.';
					yourself);
			addSnippet: (LePharoSnippet new
					code: 'GtLudoRecordingGameExamples new bEntersAndPlaysWithAahead
	moveTokenNamed: ''B'';
	yourself.';
					yourself);
			addSnippet: (LePharoSnippet new
					code: 'GtLudoRecordingGameExamples new bEntersAndPlaysWithAahead
	roll: 6;
	moveTokenNamed: ''B'';
	yourself.';
					yourself);
			yourself);
	addSnippet: (LeTextSnippet new
			string: '# SPL';
			addSnippet: (LeTextSnippet new
					string: 'SPL is a simple programming language for a Compiler Construction course.';
					yourself);
			addSnippet: (LeTextSnippet new
					string: '##Execution errors';
					addSnippet: (LePharoSnippet new
							code: 'SPL contextFor: ''3/0;''';
							yourself);
					addSnippet: (LePharoSnippet new
							code: 'SPL contextFor: ''x+0;''';
							yourself);
					yourself);
			addSnippet: (LeTextSnippet new
					string: '## Parsing errors';
					addSnippet: (LePharoSnippet new
							code: 'SPL contextFor: ''3+4.''';
							yourself);
					yourself);
			yourself);
	addSnippet: (LeTextSnippet new
			string: '# Lepiter duplicated pages';
			addSnippet: (LeTextSnippet new
					string: 'We show a view of the two pages and can add actions for fixing and continuing ';
					yourself);
			addSnippet: (LeTextSnippet new
					string: 'See {{gtClass:name=LeDuplicatePageIdError}} raised in {{gtMethod:name=LeDatabase>>#setPage:}}';
					yourself);
			addSnippet: (LePharoSnippet new
					code: 'page1 := LePage named: ''A Duplicate Page''.
page2 := LePage named: ''A Duplicate Page''.
db := (LeDatabase new).
db addPage: page1.
db addPage: page2.';
					yourself);
			addSnippet: (LeTextSnippet new
					string: 'Currently no action is available ....';
					yourself);
			yourself);
	addSnippet: (LeTextSnippet new
			string: '# Collector errors';
			addSnippet: (LeTextSnippet new
					string: 'Collector errors for extensions ({{gtClass:name=GtPhlowViewsCollectorSameViewError}}) indicate that the wrong view/action/search was returned; we can have other several cases for this.';
					yourself);
			addSnippet: (LePharoSnippet new
					code: 'viewBuilder := GtPhlowView empty. 
viewBuilder
	basicOn: GtPhlowViewWithErrorExamples new 
	perform: #gtViewWithReturningSameViewFor:
	withArguments: {viewBuilder}.';
					yourself);
			addSnippet: (LeTextSnippet new
					string: 'In this case the exception is raised when the wrong kind of object is returned. There are many similar situations. It could be a type error, or also an object in the wrong state.';
					yourself);
			yourself);
	yourself
]

{ #category : #slides }
MoldableExceptionsOnwardSlideshow >> examplesPage: aSlide [
	<gtSlide>
	<text:
'TO DO

'>
	^ aSlide lepiterPage
		setPriority;
		startPage: (self db pageNamed: 'More examples')
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
MoldableExceptionsOnwardSlideshow >> moldableDevelopment: aSlide [
	<gtSlide>
	<text:
'## Moldable development in a nutshell

Moldable development is a methodology that makes a system explainable by extending it with numerous custom tools that answer specific questions about the system and its underlying domain concepts.'>
	^ aSlide paragraph
		setPriority;
		subtitleWithFormat: (self asSubtitle: 'Moldable development');
		paragraphWithFormat: (self
				asText: 
'

extends a system with ') , (self asText: 'custom analysis tools') italic , (self asText: ' that answer questions about its inner workings, and make it ') , (self asText: 'explainable') italic, (self asText: '.
')
]

{ #category : #slides }
MoldableExceptionsOnwardSlideshow >> moldableInspector: aSlide [
	<gtSlide>
	<text:
'## TODO -- Moldable Inspector

Old text:
## Explainable Ludo

Here we see an object inspector on a live instance of the Ludo game we saw earlier. The difference is that in addition to interacting with it, we can also explore it to understand how it works.

The usual inspector view of objects is the *Raw* view which only shows the state of the object''s instance variables. Instead we have molded the inspector to show us several custom views that explain various aspects of the game.

We can see the state of the Players, the individual Squares, and the history of the Moves.

We can furthermore dive into a particular move, and see further custom views that explain what happened. We can even step through the moves to obtain a kind of animation of the history of the game.

Each custom tool consists of a short method that informs the inspector, or another IDE tool of the extension.'>
<demo: 
'- Show the Raw view
- Show the views one by one
- Dive into the moves
- Step through the moves
- Show the code of the Moves custom view
'>
	^ aSlide labelAndElement
		setPriority;
		newFadedText: 'An explainable Ludo game';
		element: [ (GtPager
				createWrappedOn: (GtInspector forObject: GtLudoRecordingGameExamples new gameShowingAllMoves6))
				maximized ]
]

{ #category : #slides }
MoldableExceptionsOnwardSlideshow >> moldableTools: aSlide [
	<gtSlide>
	<text:
'TODO

Placeholder'>
	^ aSlide paragraph
		setPriority;
		subtitleWithFormat: (self asSubtitle: 'Moldable tools');
		paragraphWithFormat: (self
				asText: 
'
... TODO explain how moldable tools are open to extensions
')
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
		
		comparison:
		comparisonMolded:
		fileError:
		tooManyRedirects:
		
		moldableDevelopment:
		moldableTools:
		moldableInspector:
		
		specifyingViews:
		specifyingActions:
		
		debuggingSpecifications:
		
		summarySlide:
		
		placeholder:
		examplesPage:
	)
]

{ #category : #slides }
MoldableExceptionsOnwardSlideshow >> specifyingActions: aSlide [
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
MoldableExceptionsOnwardSlideshow >> specifyingViews: aSlide [
	<gtSlide>
	<text:
'TODO

Placeholder'>
	^ aSlide headingAndCode
		setPriority;
		heading: 'Specifying views';
		addTextSnippet: 'Text snippet';
		addCodeSnippet: '"Code to evaluate."
3+4.'
]

{ #category : #slides }
MoldableExceptionsOnwardSlideshow >> summarySlide: aSlide [
	<gtSlide>
	<text:
'TODO

Placeholder'>
| slideSelectors |
	slideSelectors := #(title: moldableDevelopment:).
	^ aSlide labelAndElement
		setPriority;
		newFadedText: 'A summary slide';
		element: [ self summaryElementFor: slideSelectors ]
]

{ #category : #slides }
MoldableExceptionsOnwardSlideshow >> title: aSlide [
	<gtSlide>
	<text:
'# Moldable Exceptions

Hello. My name is Oscar Nierstrasz.

Today I''d like to tell you about *Moldable Exceptions*, which is to say, how you can adapt your debugging tools to your application domain, and make debugging a more pleasant experience.'>

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
