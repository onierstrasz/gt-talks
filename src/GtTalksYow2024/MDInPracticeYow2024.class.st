Class {
	#name : #MDInPracticeYow2024,
	#superclass : #PrioritySlideshow,
	#classInstVars : [
		'cardDemoModel'
	],
	#category : #'GtTalksYow2024-Slideshows'
}

{ #category : #accessing }
MDInPracticeYow2024 class >> cardDemoModel [
	cardDemoModel
		ifNil: [ AWSCardDemo
				model: (GtCobolImporter new
						copyBookDirectories: {AWSCardDemo rootDirectory / 'app/cpy'.
								AWSCardDemo rootDirectory / 'app/cpy-bms'};
						importDirectory: AWSCardDemo rootDirectory;
						model).
			cardDemoModel := AWSCardDemo model ].
	^ cardDemoModel
]

{ #category : #slides }
MDInPracticeYow2024 >> cardDemo: aSlide [
	<gtSlide>
	<text:
'## The wrapped CardDemo

From a bitmap we can navigate to its source code, and to the dependency map of programs and screens. We can also navigate from source to other source code.

'>
<demo:
'- Inspect `All BMS Maps`
- Click on the first screen (just to the left of the screen itself)
- Go to the `Programs & screen view to see the screen hierarchy
- Go to the first program
- Inspect the variables
- See the Overlapping view '>

	^ aSlide labelAndElement
		setPriority;
		newFadedText: 'AWS CardDemo';
		element: [ (GtPager
				createWrappedOn: (GtInspector forObject: self cardDemoModel))
				maximized ]
]

{ #category : #slides }
MDInPracticeYow2024 >> cardDemoExample: aSlide [
	<gtSlide>
	<text:
'# Example: Exploring the COBOL CardDemo

The AWS CardDemo is an open source COBOL mainframe application that is available for exploring and testing various kinds of legacy modernization technologies.

[blog url](https://aws.amazon.com/blogs/opensource/introducing-open-source-aws-carddemo-for-mainframe-modernization/)'>

	^ aSlide paragraph
		setPriority;
		subtitleWithFormat: (self asSubtitle: 'The AWS CardDemo');
		paragraphWithFormat: (self
				asText: 
'
is an open source COBOL application for testing legacy mainframe modernization technology.')
]

{ #category : #slides }
MDInPracticeYow2024 >> cardDemoFiles: aSlide [
	<gtSlide>
	<text:
'## The raw CardDemo files


We can see the source files and screens, but how are they related?'>
<demo:
'- Browse the `app/cbl` and `diagrams` folders
'>
	^ aSlide labelAndElement
		setPriority;
		newFadedText: 'The raw CardDemo files';
		element: [ (GtPager
				createWrappedOn: (self cardDemoModel gtRootFolderFor: GtPhlowProtoView new))
				maximized ]
]

{ #category : #accessing }
MDInPracticeYow2024 >> cardDemoModel [
	"Cache it once on the class side"

	^ self class cardDemoModel
]

{ #category : #slides }
MDInPracticeYow2024 >> coda: aSlide [
	<gtSlide>
	<text:
'# Coda

These patterns are supported by GT, but are not specific to it. By making your development tools moldable, you can support a form of moldable development for your own platform.'>

	^ aSlide paragraph
		setPriority;
		subtitleWithFormat: (self asSubtitle: 'Coda');
		paragraphWithFormat: (self
				asText: 
'

Moldable development is a '), (self
				asText: 'generally applicable development methodology') italic, (self
				asText: ' which seeks to make software systems '), (self
				asText: 'explainable') italic, (self
				asText: ' by making domain objects visible, and extending them with custom analysis tools.

'), (self
				asText: 'See:') italic, (self
				asText: ' gtoolkit.com') glamorousCodeFont
]

{ #category : #slides }
MDInPracticeYow2024 >> composedGameExample: aSlide [
	<gtSlide>
	<text:
'## A composed example  method

Now it gets interesting. Once we have an example method that returns an object, we can use that object to compose new ones. Here we take our `emptyGame` as a starting point t o create a new example. It too returns an example, which can be furtrher composed.

In the *Examples map* of this class we can see that this example is further reused to form a whole tree of examples.
'>
<demo:
'- Run the example
- Click on the method name to view the method within its class
- Go to the Examples map'>

	^ aSlide labelAndElement
		setPriority;
		newFadedText: 'A composed example  method';
		element: [ GtPager
				createWrappedOn: (GtPharoMethodCoder forMethod: GtLudoGameExamples >> #playerArolls6)
						asExpandedOnlyElement vFitContentLimited ]
]

{ #category : #slides }
MDInPracticeYow2024 >> customLudoView: aSlide [
	<gtSlide>
	<text:
'## A custom Inspector view

Now contrast the view we have just seem with this custom view of a columned list of all the moves of the game, and drilling into the 6th move, showing us graphically what has happened.

This works simply because the object inspector sees that the LudoGame object and the LudoMove object each have defined tiny, custom tools as methods with the `<gtView>` annotation.'>

	^ aSlide labelAndElement
		setPriority;
		newFadedText: 'A custom Inspector view';
		element: [ PatternScripterExamples new customViewCustomMovesViewScript ]
]

{ #category : #slides }
MDInPracticeYow2024 >> customViewTypes: aSlide [
	<gtSlide>
	<text:
'## Some Custom Views

Here are a few of the different kinds of custom views that GT supports.

Most of these are simple, though the explicit view allows you to create arbitrary GUI components as views, such as the Ludo game and move views, and the GitHub collaborator cards view.'>
	^ aSlide paragraph
		setPriority;
		subtitleWithFormat: (self asSubtitle: 'Some Custom Views');
		paragraphWithFormat: (self
				asText: 
'
- List
- Columned list
- Columned tree
- Text editor
- Forward (to existing view)
- Mondrian (graph with layout)
- Explicit (hand-crafted GUI)
...
')
]

{ #category : #slides }
MDInPracticeYow2024 >> emptyGameExample: aSlide [
	<gtSlide>
	<text:
'## A basic example  method

Here is a very simple example. It has the annotation `<gtExample>`, which is similar to a JUnit `Test` annotation.

The method creates a Ludo `game` instance, and performs some assertions.

The difference, and this is key, is that at the end the object is returned. This allows us not only ti run the test, but to inspect and explore the result, *even if the tests pass*.
'>
<demo:
'Run the example and explore the result.'>
	^ aSlide labelAndElement
		setPriority;
		newFadedText: 'A basic example  method';
		element: [ GtPager
				createWrappedOn: (GtPharoMethodCoder forMethod: GtLudoGameExamples >> #emptyGame)
						asExpandedOnlyElement vFitContentLimited ]
]

{ #category : #slides }
MDInPracticeYow2024 >> explainableLudo: aSlide [
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
MDInPracticeYow2024 >> explainableSystems: aSlide [
	<gtSlide>
	<text: 
'# Explainable Systems

The opposite of an explainable system is an *opaque* one, which makes it hard for you to answer questions about how it works.'>

	^ aSlide paragraph
		setPriority;
		subtitleWithFormat: (self asSubtitle: 'What are Explainable Systems?');
		paragraphWithFormat: (self
				asText: '

') , (self asText: 'Opaque systems') italic
				, (self asText: ' make it hard for you to understand
how they work.


'), (self asText: 'Explainable systems') italic, (self asText: ' expose their inner workings
so that you can have a conversation with them.')
]

{ #category : #slides }
MDInPracticeYow2024 >> ghReposForView: aSlide [
	<gtSlide>
	<text:
'## A columned list view

The Glamorous Toolkit supports several kinds of custom views out of the box. One of these, which we already saw several times, is a columned list: a list with several, labeled columns.

Specifying such a view is quite straightforward. You define a method of the domain object with a `<gtView>` annotation, and ask the `aView` factory object for a `columnedList`. You then specify a `title` for the view, in this case `Repositories`, a “priority”, which determines the order in which the views appear, the items of the list, and the titles and text of each of the columns.

That''s it. Many of the other standard views are similarly simple to specify.

Note that in this case views are specified in SMalltalk, but the specifications are similar in Python,  or other languages.'>

		^ aSlide labelAndElement
		setPriority;
		newFadedText: 'A columned list view';
		element: [ PatternScripterExamples new wrappedGitHubOrganizationReposSourceView ]
]

{ #category : #page }
MDInPracticeYow2024 >> githubDemoPage [
	<lePage>
	<gtExample>
	<noTest>
	^ (LePage named: 'GitHub REST API demo')
	addSnippet: (LeTextSnippet new
			string: 'First we explore the URL string.';
			yourself);
	addSnippet: (LePharoSnippet new
			code: 'url := ''https://api.github.com/orgs/feenkcom''.';
			yourself);
	addSnippet: (LeTextSnippet new
			string: 'We learn how to extract the JSON dictionary and wrap it as an object.';
			yourself);
	addSnippet: (LeTextSnippet new
			string: 'We find some interesting views and  lift them to the wrapped object.';
			yourself);
	addSnippet: (LeTextSnippet new
			string: 'We continue to explore, e.g., the list of repositories, and wrap those, also giving them views.';
			yourself);
	addSnippet: (LeTextSnippet new
			string: '';
			yourself);
	yourself
]

{ #category : #slides }
MDInPracticeYow2024 >> githubExample: aSlide [
	<gtSlide>
	<text:
'# Example: Exploring the GitHub REST API

The GitHub REST API provides information about organizations, user and repositories in the form of JSON data.
'>
	^ aSlide paragraph
		setPriority;
		subtitleWithFormat: (self asSubtitle: 'The GitHub REST API');
		paragraphWithFormat: (self
				asText: 
'
serves information in the form of JSON data.
')
]

{ #category : #slides }
MDInPracticeYow2024 >> githubFeenkOrgJSon: aSlide [
	<gtSlide>
	<text:
'## Raw JSON data of the feenk GitHub organization

Here we see the raw JSON data of the feenk organization. It exposes a number of domain concepts, but not in a way that is easy to navigate or understand.
'>
	^ aSlide labelAndElement
		setPriority;
		newFadedText: 'Raw JSON data of the feenk GitHub organization';
		element: [ (GtPager
				createWrappedOn: (PatternScripterExamples new prettyJsonGitHubDictionary
						gtJSONFor: GtPhlowProtoView new)) maximized ]
]

{ #category : #slides }
MDInPracticeYow2024 >> githubFeenkOrgWrapped: aSlide [
	<gtSlide>
	<text:
'***TODO: add some custom actions and searches***

## The feenk GitHub organization JSON as a wrapped, moldable  object

After a few iterations we enrich the GitHub organization model with several more entities and views, according to whatever interests us.
'>
<demo:
'Browse the model ...'
>
	^ aSlide labelAndElement
		setPriority;
		newFadedText: 'The feenk GitHub organization JSON as a wrapped, moldable  object';
		element: [ (GtPager
				createWrappedOn: (GtInspector forObject: PatternScripterExamples new wrappedGitHubOrganization))
				maximized ]
]

{ #category : #slides }
MDInPracticeYow2024 >> githubOrgDemoPage: aSlide [
	<gtSlide>
	<text:
'## GitHub REST API demo

We demo how  to apply moldable development in exploring the GitHub REST API.

First we explore the URL string to see how we can retrieve the contents. We extract the JSON string, find out haw to parse it, and retrieve a dictionary of values.

Now to explore further we turn this into a domain object representing a GitHub Organization. If we explore the basic raw view we can find the underlying data. We lift the dictionary view to make it available to our domain object as a view.

One interesting piece of data is the `repos_url`. We see it returns an array of JSONs, one for each repository. We extract this as a method.

We wrap each of the repo JSON dictionaries as a Repo object. We fix the default printString to show the name of the repo.

We generate a JSON dictionary view directly from the raw data of the repo.

We generate a repos view from the list of repos that now shows the proper repo names.

Now we can nicely navigate from the organization to each repository.
'>
<demo:
'- Inspect the URL
- View the contents
- See how to get the contents, and add a snippet to extract this
- See how to get the JSON data, and add a snippet
- Wrap the dictionary as an Org object
- Inspect the Org instance and navigate to the JSON view of the data
- Lift the view to the org
- Inspect the repos_url
- Extract the array of JSONs
- Wrap them as Repo objects and cache them in a repos slot
- Give them a printString so they display nicely
- Add JSON views to the Repo objects and continue
'>
		^ aSlide lepiterPage
		setPriority;
		startPage: (self db pageNamed: 'GitHub REST API demo')
]

{ #category : #initalization }
MDInPracticeYow2024 >> initialize [
	super initialize.
	self preload
]

{ #category : #slides }
MDInPracticeYow2024 >> intermezzo: aSlide [
	<gtSlide>
	<text:
'# Intermezzo -- So what?

What have we seen?

We''ve seen a few different examples of software systems, as executable code, source code, and web APIs that have been transformed into explorable domain models.

In each case we have decorated these models with tiny, custom tools that show us various things of interest.

How does this work?

The idea of moldable development is to make it very easy to add such custom tools by opening up the development tools themselves to lightweight extensions. This can be done in a systematic way, which we can describe a set of patterns. Now let''s look at a few of these patterns in a bit more detail.'>

	^ aSlide paragraph
		setPriority;
		subtitleWithFormat: (self asSubtitle: 'So what? ...');
		paragraphWithFormat: (self
				asText: 
'
')
]

{ #category : #slides }
MDInPracticeYow2024 >> moldableCoder: aSlide [
	<gtSlide>

<text:
'## The moldable code editor

Here is another example of a moldable tool, in this case the code browser and editor. The entities are not objects, but classes. Classes can define custom tools as methdos annotated with `<gtClassView>`. For example, the *Examples map* is a view that is activated for any class that has example methods.'>

	^ aSlide labelAndElement
		setPriority;
		newFadedText: 'The moldable code editor';
		element: [ (GtCoderElement forClass: GtLudoRecordingGameExamples) createInPager maximized ]
]

{ #category : #slides }
MDInPracticeYow2024 >> moldableDebugger: aSlide [
	<gtSlide>

<text:
'## The moldable debugger

The same principle can be applied to many other tools. Here we have a custom debugger defined for mismatched string comparisons.

This works because the `AssertionFailure` object has a custom diff tool defined with three annotations: one for the object inspector, one for the debugger, and one for the embeddecd debugger, which we just saw.'>
<demo:
'- Show the comparison view
- Inspect the Exception and see this is just an inspector view
'>
	^ aSlide headingAndCode
		setPriority;
		heading: 'Custom debugger views';
		addCodeSnippet: 'self 
	assert: Yow expectedString
	equals: Yow computedString'
]

{ #category : #slides }
MDInPracticeYow2024 >> moldableDevelopment: aSlide [
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
MDInPracticeYow2024 >> moreOpaqueness: aSlide [
	<gtSlide>
	<text:
'## Opaqueness

Other means of understanding opaque systems are also commonly ineffective.

Reading source code does not scale to large systems. Documentation is typically incomplete, out of date, and inconsistent with the current implementation. Googling or using online resources typically yields many false positives, as do off-the-shelf analysis tools or generative AI tools.'>
	^ aSlide paragraph
		setPriority;
		subtitleWithFormat: (self asSubtitle: 'Inadequate means to understand software:');
		paragraphWithFormat: (self
				asText: 
'
• Browsing source code
• Reading documentation
• Consulting online resources
• Generic analysis tools
• Generative AI
')
]

{ #category : #slides }
MDInPracticeYow2024 >> patternComposedNarrative: aSlide [
	"<gtSlide>"
	<text: 'TODO

# Pattern: Composed Narrative


'>
	^ aSlide paragraph
		setPriority;
		subtitleWithFormat: (self asSubtitle: 'Pattern: Composed Narrative');
		paragraphWithFormat: (self asText: '
Problem: ') italic
				, (self
						asText: 'How can you explain an issue with a software system in an intuitive way that is easy for a reader to follow?

')
				, (self asText: 'Solution:  ') italic
				, (self
						asText: 'Create a narrative composed of views of various objects or tools, where each view leads to the next by performing a particular action or step.')
]

{ #category : #slides }
MDInPracticeYow2024 >> patternCustomView: aSlide [
	<gtSlide>
	<text:
'# Pattern: Custom View

When you explore a software system and find interesting stuff, how can you ensure that you will be able to easily that stuff again?

The core idea of this pattern is to take the steps you perform to find and display the interesting data and turn them into a custom view of the object inspector of a suitable domain object.

This is exactly what we saw in the Ludo game, in the Cobol CardDemo, and in the GitHub REST API examples.'>
	^ aSlide paragraph
		setPriority;
		subtitleWithFormat: (self asSubtitle: 'Pattern: Custom View');
		paragraphWithFormat: (self
				asText: '
Problem: ') italic, (self
				asText: 'How do you make it easy to find interesting information that you discover while exploring a live domain model?

') , (self
				asText: 'Solution:  ') italic, (self
				asText: 'Turn interesting data into a custom view.')
]

{ #category : #slides }
MDInPracticeYow2024 >> patternExampleObject: aSlide [
	<gtSlide>
	<text: '# Pattern: Example Object

This pattern starts from the simple observation that green unit tests returning void are a lost opportunity. Instead of returning nothing, let them return the object under test as an *example*.'>
	^ aSlide paragraph
		setPriority;
		subtitleWithFormat: (self asSubtitle: 'Pattern: Example Object');
		paragraphWithFormat: (self asText: '
Problem: ') italic
				, (self
						asText: 'How do you create an object in a particular state to start a moldable development task?

')
				, (self asText: 'Solution:  ') italic
				, (self
						asText: 'Wrap examples as (instance) methods that optionally evaluate some tests (assertions), and return the example instance.')
]

{ #category : #slides }
MDInPracticeYow2024 >> patternMap: aSlide [
	<gtSlide>
	<text:
'# A Map of Moldable Development Patterns

Here we see a map of the moldable development patterns we have observed and documented so far. A few of them we have talked about today.

You can learn more about them within Glamorous Toolkit itself. If you download GT from gtoolkit.com, and start it, you will find these live pages documenting the patterns. There is also a PDF of the patterns if you prefer.
'>
<demo:
'- Click on Explainable System.
- Maximize it to reveal the GT book pages.
- Go to the MD patterns page and open the arxiv preprint link.'>
	^ aSlide labelAndElement
		setPriority;
		newFadedText: 'A Map of Moldable Development Patterns';
		element: [ (GtPager
				createWrappedOn: LePageMondrianMapExamples new patternMapWithCategories
						pageMapWithExplicitPositions) maximized ]
]

{ #category : #slides }
MDInPracticeYow2024 >> patternMoldableTool: aSlide [
	<gtSlide>
	<text:
'# Pattern: Moldable Tool

You may be wondering how we can enable these custom views. The key idea is that the development tools must be opened up to become *moldable*. This means nothing more than that they should recognize when the artifacts (*i.e.,* object, classes etc.) that they deal with bring with them a custom tool.

A classical example is that of code editors that enable a test runner when they see a class with test methods. The difference with moldable tools is that each object can define its own custom tools.'>

	^ aSlide paragraph
		setPriority;
		subtitleWithFormat: (self asSubtitle: 'Pattern: Moldable Tool');
		paragraphWithFormat: (self asText: '
Problem: ') italic
				, (self
						asText: 'How can you extend the development environment with custom tools that address questions about your application domain?

')
				, (self asText: 'Solution:  ') italic
				, (self
						asText: 'Make the development tools moldable to the dynamic context of the artifacts they work with, by associating custom behavior to those artifacts.')
]

{ #category : #slides }
MDInPracticeYow2024 >> placeholder: aSlide [
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

{ #category : #initalization }
MDInPracticeYow2024 >> preload [
	"Preload and cache these examples."
	^ {PatternScripterExamples new feenkGitHubOrgData.
		self cardDemoModel}
]

{ #category : #slides }
MDInPracticeYow2024 >> rawLudoView: aSlide [
	<gtSlide>
	<text:
'## A raw Inspector view

Consider the long-suffering Object Inspector. A tool that is normally only seen from within a debugger. It classically shows you a view such as this one, where we have laboriously navigated to the 6th move of an instance of the Ludo game to understand what has happened.'>

	^ aSlide labelAndElement
		setPriority;
		newFadedText: 'A raw Inspector view';
		element: [ PatternScripterExamples new customViewRawViewScript ]
]

{ #category : #slides }
MDInPracticeYow2024 >> runningSystem: aSlide [
	<gtSlide>
	<text:
'## Running systems are typically opaque

A running system just shows its UI. You can interact with this, but you can''t gain any insight into the inner workings of the game or its logic.'>
	<demo:
'- Click on the die repeatedly, and make moves when possible.'>

	^ aSlide labelAndElement
		setPriority;
		newFadedText: 'You can interact with a running system, but you can''t ask it questions.';
		element: [ GtLudoGame new asElement asScalableElement ]
]

{ #category : #'as yet unclassified' }
MDInPracticeYow2024 >> slidePriorities [
	<gtExample>
	^ #( 
		title:

		explainableSystems:
			runningSystem:
			moreOpaqueness:
			moldableDevelopment:
			explainableLudo:
		
		cardDemoExample:
			cardDemoFiles:
			cardDemo:
			
		githubExample:
			githubFeenkOrgJSon:
			githubOrgDemoPage:
			githubFeenkOrgWrapped:
		
		intermezzo:
		
		patternCustomView:
			ghReposForView:
			customViewTypes:
		
		patternExampleObject:
			emptyGameExample:
			composedGameExample:
			whyExamples:
			
		patternMoldableTool:
			rawLudoView:
			customLudoView:
			moldableCoder:
			moldableDebugger:

		patternMap:
		
		coda:
		
			"summarySlide:"
		
		"placeholder:"
		
	)
	
	"We can look at a couple of case studies and the patterns they use.
Intro
The problem with opaque systems closed Ludo
Moldable Development — open Ludo
Example: GitHub REST API
Example: Cobol CardDemo
Pattern: Custom View
Pattern: Moldable Tool
Pattern: Example Object
Patterns Overview
Coda ..."
]

{ #category : #slides }
MDInPracticeYow2024 >> summarySlide: aSlide [
	"<gtSlide>"
	<text:
'*NOT USED*
## Summary
'>
	| slideSelectors |
	slideSelectors := #(moldableDevelopment: patternMoldableTool: customLudoView: patternMap:).
	^ aSlide labelAndElement
		setPriority;
		newFadedText: 'Summary';
		element: [ self summaryElementFor: slideSelectors ]
]

{ #category : #slides }
MDInPracticeYow2024 >> title: aSlide [
	<gtSlide>
	<text:
'# Moldable Development in Practice — Patterns for Legacy Modernization

Hello. My name is Oscar Nierstrasz.

As developers, we spend much of our time trying to understand the software systems we are working with, instead of actually writing productive code.

Today I''d like to talk to you about Moldable Development, an approach that opens up our legacy software to expose the internal domain models and makes them explainable. First I''ll  show you a couple of examples to illustrate moldable development, and then I''ll present a few of the patterns we have found that capture best practice in moldable development.'>

	^ aSlide titleWithFooters
		setPriority;
		titleBottomPadding: 20;
		subtitleBottomPadding: 40;
		titleWithFormat: (self asTitle: 'Moldable Development in Practice');
		subtitleWithFormat: (self asSubtitle: 'Patterns for Legacy Modernization');
		newFooterWithFormat: (self asBigText: 'oscar.nierstrasz@feenk.com')
]

{ #category : #slides }
MDInPracticeYow2024 >> whyExamples: aSlide [
	<gtSlide>
	<text: 
'## Why examples?

So, why are examaples interesting? First, we can compose them, reducing code duplication and cascading errors when a dependent test fails.

Second, the live examples can be inspected and explored, thus forming a kind of live documentation. Examples can even be embedded within notebook pages or slideshows, as we have seen here.

Finally, examples can be used as starting point for moldable development in the style we have seen with the GitHub organization example earlier.
'>
	^ aSlide paragraph
		setPriority;
		subtitleWithFormat: (self asSubtitle: 'Why examples?');
		paragraphWithFormat: (self
				asText: '

• Examples can be composed.
• Examples are a form of live documentation.
• Examples are a starting point for further development.
')
]
