Class {
	#name : #MoldableExceptionsOnwardSlideshow,
	#superclass : #PrioritySlideshow,
	#category : #'GtTalks-Slideshows'
}

{ #category : #slides }
MoldableExceptionsOnwardSlideshow >> comparison: aSlide [
	<gtSlide>
	<text:
'# The trouble with generic debuggers

The problem with generic debuggers is that they are all the same. They all show you more or less the same stack-oriented view of the execution context no matter what kind of error is raised.

In this example we assert that two strings are equal, and enter the debugger when they aren''t. The example is not very complex, but the debugger does not really help us to figure out what is wrong.

Even if we dive into the code, we do not immediately see what is wrong.'>

<demo:
'- Evaluate the example.
- Inspect the two subexpressions.
- We do not immediately see what is wrong.'>

^ aSlide headingAndCode
		setPriority;
		heading: 'The trouble with generic debuggers';
		addCodeSnippet: 'self assert:
	Snaffle foo = Snaffle bar'
]

{ #category : #slides }
MoldableExceptionsOnwardSlideshow >> comparisonMolded: aSlide [
	<gtSlide>
	<text:
'# Custom debugger views

If we change the example slightly to use `#assert:equals:` instead of simply `#assert:`, then we know that the error is due to a failed comparison. With this extra knowledge, we can inform the debugger to provide a more informative domain-specific view.

The textual diff shows us exactly where the problem lies.

We can still access the generic debugger view, if we want.'>

<demo:
'- This time we see the detailed comparison.
- Show also the generic view.'>

	^ aSlide headingAndCode
		setPriority;
		heading: 'Custom debugger views';
		addCodeSnippet: 'self assert: Snaffle foo
	equals: Snaffle bar'
]

{ #category : #slides }
MoldableExceptionsOnwardSlideshow >> debuggingSpecifications: aSlide [
	<gtSlide>
	<text:
'# Debugging specifications

*(Skip if time is short.)*

We can also configure customizations in various ways.

In the first example, if we inspect the debugging session, we can see that an *Assertion Failure* specification has been detected, and we can explore its properties. We see in `gtExceptionDebuggerSpecification` that it is enabled only when there are compatible types to compare.

If we inspect the code of the second exception, we see in the method `gtExceptionDebuggerSpecification` that `availableAutomatically` is set to false. This means the generic stack view will be shown by default.

The class `GtMoldableExceptionSpecificDebuggerSpecification` supports a number of such configurations.'>

<demo:
'- Trigger the first debugger
- Inspect the debugging session and shows its properties
- Inspect the AssertionFailure exception and shows its view is the same
- Trigger the second debugger
- Inspect the exception and go to the Meta view
- Show the code for gtExceptionDebuggerSpecification
- Open the `super` code bubble
- Explore the class comment of `GtMoldableExceptionSpecificDebuggerSpecification`'>

	^ aSlide headingAndCode
		setPriority;
		heading: 'Debugging specifications';
		addTextSnippet: '*A conditional debugger view:*';
		addCodeSnippet: 'self assert: Snaffle foo
	equals: Snaffle bar';
		addTextSnippet: '*Suppressing the automatic debugger view:*';
		addCodeSnippet: 'ZnClient new 
	url: ''https://www.gmail.com'';
	maxNumberOfRedirects: 3;
	get'
]

{ #category : #slides }
MoldableExceptionsOnwardSlideshow >> debuggingViews: aSlide [
	<gtSlide>
	<text: '# Debugging views

A nice use case is to catch common errors and offer repairs.

In this example we have an object with an optional view that should only appear if there is data to display. Unfortunately there is an error, and a broken view is shown instead. The problem is that instead of returning the view, it should return an empty view.

The moldable exception not only highlights the error with an explanation, but it even offers a simple refactoring to fix the error. If we apply the refactoring, execution continues and the correct inspecxtor view is returned.'>
	<demo: '- Inspect the first snippet.
- Show the view code.
- Inspect the second snippet.
- Show the proposed refactoring and apply it.'>
	^ aSlide lepiterPage
		setPriority;
		startPage: (self db pageNamed: 'Debugging Views')
]

{ #category : #page }
MoldableExceptionsOnwardSlideshow >> debuggingViewsPage [
	<lePage>
	<gtExample>
	<noTest>
	^ (LePage named: 'Debugging Views')
	addSnippet: (LeTextSnippet new
			string: 'An optional view:';
			yourself);
	addSnippet: (LePharoSnippet new
			code: 'Snaffle new data: (1 to: 10)';
			yourself);
	addSnippet: (LeTextSnippet new
			string: 'A common error:';
			yourself);
	addSnippet: (LePharoSnippet new
			code: 'Snaffle new';
			yourself);
	yourself
]

{ #category : #slides }
MoldableExceptionsOnwardSlideshow >> fileError: aSlide [
	<gtSlide>
	<text:
'# File System Errors

In this example we not only obtain a more informative view showing us what is wrong with our request, highlighting the missing directories in our path, as opposed to the terse message we get in the generic debugger view, but we are also offered corrective actions.
'>

	^ aSlide headingAndCode
		setPriority;
		heading: 'File System Errors';
		addCodeSnippet: '''foo/bar/baz'' asFileReference createDirectory.'
]

{ #category : #page }
MoldableExceptionsOnwardSlideshow >> metricsPage [
	<lePage>
	<gtExample>
	<noTest>
	^ (LePage named: 'Some metrics')
	addSnippet: (LeTextSnippet new
			string: 'These create new debugger views and actions:';
			addSnippet: (LePharoSnippet new
					code: '#gtExceptionView gtPragmas';
					yourself);
			"addSnippet: (LeElementSnippet new
					code: '#gtExceptionView gtPragmas gtMetricsFor: GtPhlowView new';
					codeVisible: false;
					elementHeight: 140;
					codeHeight: 50;
					yourself);"
			addSnippet: (LePharoSnippet new
					code: '(#gtExceptionView gtPragmas contents collect: #methodClass) asSet';
					yourself);
			addSnippet: (LePharoSnippet new
					code: '#gtExceptionAction gtPragmas';
					yourself);
			yourself);
	addSnippet: (LeTextSnippet new
			string: 'These extend the default debugger:';
			addSnippet: (LePharoSnippet new
					code: '#gtContextView gtPragmas';
					yourself);
			addSnippet: (LePharoSnippet new
					code: '#gtContextView: gtPragmas';
					yourself);
			addSnippet: (LePharoSnippet new
					code: '#gtStackAction gtPragmas';
					yourself);
			yourself);
	addSnippet: (LeTextSnippet new
			string: 'Controls what you get when you embed the debugger in the coder (i.e., when an exception is raised within a code snippet).';
			addSnippet: (LePharoSnippet new
					code: '#gtEmbeddedDebuggerView gtPragmas';
					yourself);
			yourself);
	addSnippet: (LeTextSnippet new
			string: '';
			yourself);
	addSnippet: (LeTextSnippet new
			string: '';
			yourself);
	yourself
]

{ #category : #slides }
MoldableExceptionsOnwardSlideshow >> metricsPage: aSlide [
	<gtSlide>
	<text: '... Some metrics for discussion.'>
	^ aSlide lepiterPage
		setPriority;
		startPage: (self db pageNamed: 'Some metrics')
]

{ #category : #slides }
MoldableExceptionsOnwardSlideshow >> moldableDevelopment: aSlide [
	<gtSlide>
	<text:
'# Moldable development in a nutshell

Moldable development is a methodology that makes a system explainable by extending it with numerous custom tools that answer specific questions about the system and its underlying domain concepts.

Moldable development depends on the existence of *moldable tools*, IDE tools that have been opened up to accommodate and enable custom tools within well-defined contexts.

For the moldable debugger, this happens when a specific kind of exception is raised.
'>
	^ aSlide paragraph
		setPriority;
		subtitleWithFormat: (self asSubtitle: 'Moldable development');
		paragraphWithFormat: (self
				asText: 
'

extends a system with ') , (self asText: 'custom analysis tools') italic , (self asText: '
that answer questions about its inner workings, 
and make it ') , (self asText: 'explainable') italic, (self asText: '.

A ') , (self asText: 'moldable tool') italic, (self asText: ' is an IDE tool that has been opened up to accommodate custom tools that are enabled  in a well-defined context (') , (self asText: 'e.g.') italic, (self asText: ', an object, a class).
')
]

{ #category : #slides }
MoldableExceptionsOnwardSlideshow >> moldableInspector: aSlide [
	<gtSlide>
	<text:
'# The Moldable Inspector

The Moldable Inspector is an example of a moldable tool.

Here we see a moldable object inspector on a live instance of a Ludo game.

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
		newFadedText: 'The Moldable Inspector';
		element: [ (GtPager
				createWrappedOn: (GtInspector forObject: GtLudoRecordingGameExamples new gameShowingAllMoves6))
				maximized ]
]

{ #category : #page }
MoldableExceptionsOnwardSlideshow >> moreExamplesPage [
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
					string: '*Execution errors*';
					addSnippet: (LePharoSnippet new
							code: 'SPL contextFor: ''3/0;''';
							yourself);
					addSnippet: (LePharoSnippet new
							code: 'SPL contextFor: ''x+0;''';
							yourself);
					yourself);
			addSnippet: (LeTextSnippet new
					string: '*Parsing errors*';
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
	yourself
]

{ #category : #slides }
MoldableExceptionsOnwardSlideshow >> moreExamplesPage: aSlide [
	<gtSlide>
	<text: '... More examples for discussion.'>
	^ aSlide lepiterPage
		setPriority;
		startPage: (self db pageNamed: 'More examples')
]

{ #category : #slides }
MoldableExceptionsOnwardSlideshow >> pervasiveTools: aSlide [
	<gtSlide>
	<text: '... Custom tools are pervasive

This visualization shows a treemap of packages and classes in the current image.

Blue classes have at least one custom view and green ones have at least one example. This shows that custom tools were  heavily used to build the moldable development environment itself.

Here at the top left we see `BlElement`, the root of the graphical hierarchy.'>
	<demo: '- Click on the top-left class (BlElement)'>
	^ aSlide labelAndElement
		setPriority;
		newFadedText: 'Custom tools are pervasive.';
		element: [ (GtPager createWrappedOn: GtTour new treemapWithViewsAndExamples) maximized ]
]

{ #category : #slides }
MoldableExceptionsOnwardSlideshow >> placeholder: aSlide [
	"<gtSlide>"
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
		moldableInspector:
		
		specifyingViews:
		specifyingActions:
		debuggingViews:
		
		debuggingSpecifications:
		
		summary:

		"placeholder:"
		pervasiveTools:
		moreExamplesPage:
		metricsPage:
	)
]

{ #category : #slides }
MoldableExceptionsOnwardSlideshow >> specifyingActions: aSlide [
	<gtSlide>
	<text:
'# Specifying actions

Custom actions are specified in a similar way, but with a different annotation..

This action actually has two different pragmas since it appears both in the custom view and the stack view.

It''s just a dropdown menu that retries the action with the same debugger.'>

<demo:
'- Trigger the exception
- Show the action code with two pragmas
- Show the action appears in both debugger views'>

	^ aSlide headingAndCode
		setPriority;
		heading: 'Specifying actions';
		addCodeSnippet: 'ZnClient new 
	url: ''https://www.gmail.com'';
	maxNumberOfRedirects: 3;
	get'
]

{ #category : #slides }
MoldableExceptionsOnwardSlideshow >> specifyingViews: aSlide [
	<gtSlide>
	<text:
'# Specifying debugger views

We specifying debugger views in pretty much the same way as inspector views, only  using a different pragma (or annotation).

In this code snippet we start with a live example of a partially played Ludo game, we programatically roll a 6, and attempt to move player B forward.

This raises a domain-specific assertion failure to which we have associated a custom view to explain the problem. In the *Moves* view we clearly see that it is the turn of Player C.

In fact, the view we use is a pre-existing inspector view, so there is essentially no additional cost to reuse it in this context.'>

	^ aSlide headingAndCode
		setPriority;
		heading: 'Specifying debugger views';
		addCodeSnippet: 'GtLudoRecordingGameExamples new
	bEntersAndPlaysWithAahead
		roll: 6;
		moveTokenNamed: ''B'';
		yourself.'
]

{ #category : #slides }
MoldableExceptionsOnwardSlideshow >> summary: aSlide [
	<gtSlide>
	<text:
'# Summary'>

	^ aSlide paragraph
		setPriority;
		subtitleWithFormat: (self asSubtitle: 'Summary');
		paragraphWithFormat: (self
				asText: 
'

• Generic debuggers ') ,(self asText: 'don''t understand your domain') italic,(self asText: '
• Exceptions can trigger '),(self asText: 'custom debugger views') italic,(self asText: '
• Customizing a moldable debugger '),(self asText: 'can be easy') italic,(self asText: '


'),(self asText: 'Read: ') italic,
((self asText: 'tinyurl.com/moldableExceptionsPaper') glamorousCodeFont fontSize: 28),
(self asText: '
Download: ') italic,
((self asText: 'gtoolkit.com') glamorousCodeFont fontSize: 28)
]

{ #category : #slides }
MoldableExceptionsOnwardSlideshow >> summarySlide: aSlide [
	"<gtSlide>"
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
'# Too many URL redirects

This example raises an error when retrieving the content behind a URL if too many redirects occur.

In this case the generic view is the default one, rather than the detailed view of the redirects.

In both cases, however, there is a custom *Retry* action that lets us proceed and retry with a higher threshold of redirects.'>

<demo:
'- Show the views and retry.'>

	^ aSlide headingAndCode
		setPriority;
		heading: 'Too many URL redirects';
		addCodeSnippet: 'ZnClient new 
	url: ''https://www.gmail.com'';
	maxNumberOfRedirects: 3;
	get'
]
