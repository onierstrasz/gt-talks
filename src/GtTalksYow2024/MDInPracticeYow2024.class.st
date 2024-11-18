Class {
	#name : #MDInPracticeYow2024,
	#superclass : #PrioritySlideshow,
	#instVars : [
		'cardDemoModel'
	],
	#category : #'GtTalksYow2024-Slideshows'
}

{ #category : #slides }
MDInPracticeYow2024 >> cardDemo: aSlide [
	<gtSlide>
	<text:
'TODO

# Placeholder
'>
	^ aSlide labelAndElement
		setPriority;
		newFadedText: 'AWS CardDemo';
		element: [ (GtPager
				createWrappedOn: (GtInspector forObject: self cardDemoModel))
				maximized ]
]

{ #category : #accessing }
MDInPracticeYow2024 >> cardDemoModel [
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
MDInPracticeYow2024 >> coda: aSlide [
	<gtSlide>
	<text:
'TODO

# Placeholder

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
MDInPracticeYow2024 >> githubFeenkOrgJSon: aSlide [
	<gtSlide>
	<text: '***TODO***

'>
	^ aSlide labelAndElement
		setPriority;
		newFadedText: 'JSON data of the feenk GitHub organization';
		element: [ (GtPager
				createWrappedOn: (PatternScripterExamples new prettyJsonGitHubDictionary
						gtJSONFor: GtPhlowProtoView new)) maximized ]
]

{ #category : #slides }
MDInPracticeYow2024 >> githubFeenkOrgWrapped: aSlide [
	<gtSlide>
	<text: '***TODO***

'>
	^ aSlide labelAndElement
		setPriority;
		newFadedText: 'feenk GitHub organization as a wrapped, moldable  object';
		element: [ (GtPager
				createWrappedOn: (GtInspector forObject: PatternScripterExamples new wrappedGitHubOrganization))
				maximized ]
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

Other ways of understanding opaque systems are also commonly ineffective.

Documentation is typically incomplete, out of date, and inconsistent with the current implementation.

Googling or using online resources typically yields many false positives, as do off-the-shelf analysis tools or generative AI tools.'>
	^ aSlide paragraph
		setPriority;
		subtitleWithFormat: (self asSubtitle: 'Ineffective ways to understand opaque systems');
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
	<gtSlide>
	<text: 'TODO

# Placeholder
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

# Placeholder
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

# Placeholder
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

# Placeholder
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

{ #category : #slides }
MDInPracticeYow2024 >> runningSystem: aSlide [
	<gtSlide>
	<text: '## Running systems are typically opaque

A running system just shows its UI. You can interact with this, but you can''t gain any insight into the inner workings of the game or its logic.'>
	<demo: '- Click on the die repeatedly, and make moves when possible.'>
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
		
		githubFeenkOrgJSon:
			githubFeenkOrgWrapped:
		
		cardDemo:
		
		patternCustomView:
		
		patternMoldableTool:
		
		patternComposedNarrative:
		
		patternMap:
		
		coda:
		
		summarySlide:
		
		placeholder:
		
		"EXTRA SLIDES"
		
		patternExampleObject:
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
'***TODO***

# Moldable Development in Practice — Patterns for Legacy Modernization

Hello. My name is Oscar Nierstrasz.





'>

	^ aSlide titleWithFooters
		setPriority;
		titleBottomPadding: 20;
		subtitleBottomPadding: 40;
		titleWithFormat: (self asTitle: 'Moldable Development in Practice');
		subtitleWithFormat: (self asSubtitle: 'Patterns for Legacy Modernization');
		newFooterWithFormat: (self asBigText: 'oscar.nierstrasz@feenk.com')
]
