Class {
	#name : #HuaweiGTSlideshow,
	#superclass : #PrioritySlideshow,
	#category : #'GtTalks-Slideshows'
}

{ #category : #slides }
HuaweiGTSlideshow >> edd: aSlide [
	<gtSlide>
	<text:
'# 3. Example-Driven Development

Example-Driven Development is superficially like Test-Driven Development, where you drive development by constructing tests methods that return example objects.'>
	^ aSlide paragraph
		setPriority;
		subtitleWithFormat: (self asSubtitle: '3. Example-Driven Development');
		paragraphWithFormat: (self
				asText: 
'
resembles TDD, where you drive development by constructing test methods that return example objects.
')
]

{ #category : #slides }
HuaweiGTSlideshow >> examples: aSlide [
	<gtSlide>
	<text:
'## Example = Test + Factory

In a nutshell, an example method is a test that returns the object under test.

This allows tests to be composed, reducing duplication and cascading failures.

A further benefit is that examples can be used in live documentation.

Examples also support an exploratory approach to test-driven development, that we call example-driven development, or EDD.'>
	^ aSlide paragraph
		setPriority;
		subtitleWithFormat: (self asSubtitle: 'Example = Test + Factory');
		paragraphWithFormat: (self
				asText: '

• Example composition reduces:'),(self asText: '
	— code duplication,
	— cascading failures.') italic,( self asText: '
• Examples can be reused in '),(self asText: 'live documentation.') italic,(self asText: '
• EDD is an '),( self asText: 'exploratory approach') italic,( self asText: ' to TDD.
')
]

{ #category : #slides }
HuaweiGTSlideshow >> examplesExplorer: aSlide [
	<gtSlide>
	<text: 
'## Examples explorer

Here we see the examples explorer for the entire GT system.

We can dive in, for example, to see the examples maps for all the gtoolkit demos.

Note that the Examples Explorer is not a separate tool, but simply an object with numerous custom views defined.'>
<demo:
'- Dive into `gtoolkit-demos` and see the example maps.'>
	^ aSlide labelAndElement
		setPriority;
		newFadedText: 'Examples explorer';
		element: [ GtInspector forObject: GtRlGToolkitExamplesExplorer buildForGToolkitProject ]
]

{ #category : #slides }
HuaweiGTSlideshow >> explainableLudo: aSlide [
	<gtSlide>
	<text:
'## Explainable Ludo

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
HuaweiGTSlideshow >> explainableSystems: aSlide [
	<gtSlide>
	<text: '# 1. Explainable Systems

The opposite of an explainable system is an *opaque* one, which makes it hard for you to answer questions about how it works.'>
	^ aSlide paragraph
		setPriority;
		subtitleWithFormat: (self asSubtitle: '1. What are Explainable Systems?');
		paragraphWithFormat: (self
				asText: '

') , (self asText: 'Opaque systems') italic
				, (self asText: ' make it hard for you to understand
how they work.


'), (self asText: 'Explainable systems') italic, (self asText: ' expose their inner workings
so that you can have a conversation with them.')
]

{ #category : #slides }
HuaweiGTSlideshow >> gt: aSlide [
	<gtSlide>
	<text:
'# 2. Glamorous Toolkit

GT is an IDE that supports the creation of explainable systems through *moldable development*. The key idea is to make IDE tools cheaply moldable to your domain with short, dedicated extensions.'>

	^ aSlide paragraph
		setPriority;
		subtitleWithFormat: (self asSubtitle: '2. Glamorous Toolkit');
		paragraphWithFormat: (self
				asText: 
'

Glamorous Toolkit is an open-source IDE for creating explainable systems through '), (self
				asText: 'moldable development.') italic
]

{ #category : #slides }
HuaweiGTSlideshow >> gtComponents: aSlide [
	<gtSlide>
	<text:
'## GT components

GT contains numerous other moldable tools and components, such as a moldable debugger, a moldable code editor, visualization engines, and an advanced language workbench.'>
	^ aSlide lepiterPage
		setPriority;
		pageNamed: 'Components' from: 'Glamorous Toolkit Book';
		yourself
]

{ #category : #slides }
HuaweiGTSlideshow >> gtTour: aSlide [
	<gtSlide>
	<text:
'## GT Tour

Here we see an instance of Glamorous Toolkit.

In the home window we see numerous cards giving us quick access to current tasks (like this meeting). We also see two knowledge bases: my personal database of notes, and the GT Book containing live system documentation.

At the top right we can access numerous other tools that support live coding, source code exploration, and access to version control via Git, amongst others.'>
	^ aSlide labelAndElement
		setPriority;
		newFadedText: 'Glamorous toolkit supports live development of explainable systems.' asRopedText;
		element: [ GtWorldElement new
				knowledgeBase: LeDatabasesRegistry uniqueInstance currentLoadedDefaultLogicalDatabase ]
]

{ #category : #slides }
HuaweiGTSlideshow >> lepiter: aSlide [
	<gtSlide>
	<text:
'## Lepiter

Here we see a notebook page in the GT book that contains live documentation of Lepiter, the notebook system itself.

Each notebook page contains not only hyperlinked text, but other kinds of snippets, such as code that can be evaluated, or live examples that can be explored.'>

	^ aSlide lepiterPage
		setPriority;
		pageNamed: 'Lepiter' from: 'Glamorous Toolkit Book';
		yourself
]

{ #category : #slides }
HuaweiGTSlideshow >> ludoExamples: aSlide [
	<gtSlide>
	<text:
'## A composed Ludo example

Here we see the method that produced the example we saw earlier. If we inspect the results we not only run the test, which is green, but we can explore the example.

If we open the initial setup, we see it is composed of an earlier example, and so on.

In fact we have a graph of examples in the Examples map view (which is a custom view for the moldable Coder tool).'>
<demo: '- Inspect the result.
- Open the gameShowingAllMoves5 code bubble and so on.
- Open the Examples map'>
	^ aSlide labelAndElement
		setPriority;
		newFadedText: 'A composed example of the Ludo game.';
		element: [ (GtCoderElement forMethod: GtLudoRecordingGameExamples>>#gameShowingAllMoves6) createInPager maximized ]
]

{ #category : #slides }
HuaweiGTSlideshow >> moldableDevelopment: aSlide [
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
HuaweiGTSlideshow >> moldableInspector: aSlide [
	<gtSlide>
	<text:
'## Moldable inspector

The inspector is one example of a moldable tool that can be extended with custom views.

Here we are inspecting a live object that encapsulates information retrieved from GitHub about the feenk organization. By adding custom views, we make the GitHub organization domain explorable and thus explainable.'>
	^ aSlide labelAndElement
		setPriority;
		newFadedText: 'An Inspector on a GitHub organization';
		element: [ (GtPager
				createWrappedOn: (GtInspector forObject: GhOrganizationExamples new feenkcomOrganization))
				maximized ]
]

{ #category : #slides }
HuaweiGTSlideshow >> moreOpaqueness: aSlide [
	<gtSlide>
	<text:
'## Opaqueness

Other ways of understanding opaque systems are also commonly ineffective.

Documentation is typically incomplete, out of date, and inconsistent with the current implementation.

Googling or using online resources typically yields many false positives, as do off-the-shelf analysis tools or generative AI tools.'>
	^ aSlide paragraph
		setPriority;
		subtitleWithFormat: (self asSubtitle: 'Ineffective ways to understand opaque systems');
		paragraphWithFormat: (self
				asText: 
'

• Documentation
• Online resources
• Generic analysis tools
• Generative AI
')
]

{ #category : #slides }
HuaweiGTSlideshow >> pervasiveTools: aSlide [
	<gtSlide>
	<text: '## Custom tools are pervasive

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

{ #category : #slides }
HuaweiGTSlideshow >> runningSystem: aSlide [
	<gtSlide>
	<text: '## Running systems are typically opaque

A running system just shows its UI. You can interact with this, but you can''t gain any insight into the inner workings of the game or its logic.'>
	<demo: '- Click on the die repeatedly, and make moves when possible.'>
	^ aSlide labelAndElement
		setPriority;
		newFadedText: 'You can interact with a running system, but you can''t ask it questions.';
		element: [ GtLudoGame new asElement asScalableElement ]
]

{ #category : #accessing }
HuaweiGTSlideshow >> slidePriorities [
	<gtExample>
	^ #( 
		title:
		
		#explainableSystems:
			runningSystem:
			sourceEditor:
			moreOpaqueness:
			moldableDevelopment:
			explainableLudo:
		
		gt:
			gtTour:
			lepiter:
			moldableInspector:
			#gtComponents:
		
		edd:
			troubleWithTests:
			examples:
			ludoExamples:
			examplesExplorer:
			pervasiveTools:
		
		summarySlide:
	)
]

{ #category : #slides }
HuaweiGTSlideshow >> sourceEditor: aSlide [
	<gtSlide>
	<text: '## Source editors are opaque

Similarly, browsing source code is not a good way to understand a system.
We can see the classes of the Ludo implementation, and browse the source code of the methods, but it''s a poor way to understand how the pieces fit together, and it does not scale to large software systems.'>
	<demo: '- Open a few methods, such as the `initialize` method.
- Perhaps browse the `initialization` and `playing` protocols.'>
	^ aSlide labelAndElement
		setPriority;
		newFadedText: 'Reading source code is not an effective way to understand a system.';
		element: [ (GtCoderElement forClass: GtLudoGame) createInPager maximized ]
]

{ #category : #slides }
HuaweiGTSlideshow >> summarySlide: aSlide [
	<gtSlide>
	<text:
'# Summary'>	
	| slideSelectors |
	slideSelectors := #(explainableSystems: gt: edd: examples:).
	^ aSlide labelAndElement
		setPriority;
		newFadedText: 'A summary slide';
		element: [ self summaryElementFor: slideSelectors ]
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
		titleWithFormat: (self asTitle: 'Explaining Explainable Systems');
		subtitleWithFormat: (self asBigText: 'Huawei Bern — 2024-07-23');
		footerWithFormat: (self asBigText: 'oscar.nierstrasz@feenk.com')
]

{ #category : #slides }
HuaweiGTSlideshow >> troubleWithTests: aSlide [
	<gtSlide>
	<text: '# The Trouble with Tests

Unit tests are supposed to be independent of each other, but analysis of real test code shows that they contain much duplicated code, leading to cascading failures in case of bugs.

Green tests can be used to detect regressions, but otherwise they don''t help you much to create new tests or explore the running system.'>
	^ aSlide paragraph
		setPriority;
		subtitleWithFormat: (self asSubtitle: 'The Trouble with Tests');
		paragraphWithFormat: (self
				asText: '

'), (self asText: 'Real tests have hidden dependencies in duplicated code

Green tests don''t return anything useful') italic
]
