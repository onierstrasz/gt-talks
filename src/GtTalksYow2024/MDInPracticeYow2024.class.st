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
'TODO

# The wrapped CardDemo

From a bitmap we can navigate to its source code, and to the dependency map of programs and screens. We can also navigate from source to other source code.

'>
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
		subtitleWithFormat: (self asSubtitle: 'Exploring the COBOL CardDemo');
		paragraphWithFormat: (self
				asText: 
'
The AWS CardDemo is an open source COBOL application for testing legacy mainframe modernization technology.')
]

{ #category : #slides }
MDInPracticeYow2024 >> cardDemoFiles: aSlide [
	<gtSlide>
	<text:
'***TODO***

## The raw CardDemo files


We can see the source files and screens, but how are they related?

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
'TODO

# Coda

These patterns are supported by GT, but are not specific to it.
By making your development tools moldable, you can support a form of moldable development for your own platform.


'>
	^ aSlide paragraph
		setPriority;
		subtitleWithFormat: (self asSubtitle: 'Coda');
		paragraphWithFormat: (self
				asText: 
'Paragraph body.
Possibly over multiple lines.
')
]

{ #category : #slides }
MDInPracticeYow2024 >> composedGameExample: aSlide [
	<gtSlide>
	<text:
'***TODO***


'>
	^ aSlide labelAndElement
		setPriority;
		newFadedText: 'A composed example  method';
		element: [ GtPager
				createWrappedOn: (GtPharoMethodCoder forMethod: GtLudoGameExamples >> #playerArolls6)
						asExpandedOnlyElement vFitContentLimited ]
]

{ #category : #slides }
MDInPracticeYow2024 >> customViewTypes: aSlide [
	<gtSlide>
	<text:
'TODO

# Some Custom Views
'>
	^ aSlide paragraph
		setPriority;
		subtitleWithFormat: (self asSubtitle: 'Some Custom Views');
		paragraphWithFormat: (self
				asText: 
'
- List
- Columned list
- Columned tree
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
'***TODO***


'>
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
'TODO

# A columned list view

'>
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
		subtitleWithFormat: (self asSubtitle: 'Exploring the GitHub REST API');
		paragraphWithFormat: (self
				asText: 
'
The GitHub REST API serves information in the form of JSON data.
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
'***TODO***

## The feenk GitHub organization JSON as a wrapped, moldable  object

If we *wrap* the raw JSON data as an object, we can then “mold” this object to provide a useful interface for exploring it, and navigating to other, interesting entities.

TODO: More details ....
'>
<demo:
'TODO'
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

{ #category : #slides }
MDInPracticeYow2024 >> moldableCoder: aSlide [
	<gtSlide>

<text:
'***TODO***

## The moldable code editor

'>

	^ aSlide labelAndElement
		setPriority;
		newFadedText: 'The moldable code editor';
		element: [ (GtCoderElement forClass: GtLudoRecordingGameExamples) createInPager maximized ]
]

{ #category : #slides }
MDInPracticeYow2024 >> moldableDebugger: aSlide [
	<gtSlide>

<text:
'***TODO***

## The moldable debugger

'>
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
		subtitleWithFormat: (self asSubtitle: 'Ineffective means to understand opaque systems');
		paragraphWithFormat: (self
				asText: 
'
• Source code
• Documentation
• Online resources
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
'TODO

# Pattern: Custom View

'>
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
	<text: 'TODO

# Placeholder
'>
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
'TODO

# A Map of Moldable Development Patterns

'>
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
	<text: 'TODO

# Pattern: Moldable Tool



'>
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
		
		patternCustomView:
			ghReposForView:
			customViewTypes:
		
		patternMoldableTool:
			moldableCoder:
			moldableDebugger:
		
		patternExampleObject:
			emptyGameExample:
			composedGameExample:
			whyExamples:

		patternMap:
		
		coda:
			summarySlide:
		
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
	<gtSlide>
	<text:
'TODO

## Summary
'>
	| slideSelectors |
	slideSelectors := #(explainableSystems: patternMap:).
	^ aSlide labelAndElement
		setPriority;
		newFadedText: 'A summary slide';
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
'***TODO***


## Why examples?

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
