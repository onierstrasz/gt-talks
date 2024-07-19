Class {
	#name : #HuaweiGTSlideshow,
	#superclass : #PrioritySlideshow,
	#category : #'GtTalks-Slideshows'
}

{ #category : #slides }
HuaweiGTSlideshow >> edd: aSlide [
	<gtSlide>
	<text:
'# 3. EDD

# Placeholder
'>
	^ aSlide paragraph
		setPriority;
		subtitleWithFormat: (self asSubtitle: '3. Example-Driven Development');
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
HuaweiGTSlideshow >> examplesExplorer: aSlide [
	<gtSlide>
	<text: 'TODO

Examples explorer

An Inspector on an object.
NB: the pager is needed so we can navigate to new pages.'>
	^ aSlide labelAndElement
		setPriority;
		newFadedText: 'Examples explorer';
		element: [ GtInspector forObject: GtRlGToolkitExamplesExplorer buildForGToolkitProject ]
]

{ #category : #slides }
HuaweiGTSlideshow >> explainableLudo: aSlide [
	<gtSlide>
	<text:
'TODO

# Placeholder
'>
	^ aSlide labelAndElement
		setPriority;
		newFadedText: 'An explainable Ludo game';
		element: [ (GtPager
				createWrappedOn: (GtInspector forObject: GtLudoRecordingGameExamples new gameShowingAllMoves2))
				maximized ]
]

{ #category : #slides }
HuaweiGTSlideshow >> explainableSystems: aSlide [
	<gtSlide>
	<text:
'# 1. Explainable Systems

To understand what we mean by explainable systems, it is useful to first understand what the opposite is, anmely an *opaque* system.'>
	^ aSlide paragraph
		setPriority;
		subtitleWithFormat: (self asSubtitle: '1. What are Explainable Systems?')
]

{ #category : #slides }
HuaweiGTSlideshow >> gt: aSlide [
	<gtSlide>
	<text:
'# 2. GT

# Placeholder
'>
	^ aSlide paragraph
		setPriority;
		subtitleWithFormat: (self asSubtitle: '2. GT — an open-source IDE for explainable systems')
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
HuaweiGTSlideshow >> ludoExamples: aSlide [
	<gtSlide>
	<text:
'TODO

SIMPLIFY THIS EXAMPLE

# Placeholder
'>
<demo: '## Explainable Ludo (TO UPDATE AND SIMPLIFY)

- Browse the GtLudoRecordingGameExamples class.
- See the list of Examples and run them.
- Browse the first one (bEntersAndPlaysWithAahead).
- See that it is composed of an earlier test.
- Each test returns an example.
- Go to the Examples map and mouse (hover) over the composition.
- Inspect the example.
- Show the Raw view.
- See the Players and navigate to Player A.
- Go to Moves and explore them.
- Go to the History and walk through the moves.
- Ask what would happen if instead B rolled a 6.
- Open a Playground on the second last Move, and inspect `self replayGameToHere`
- In the new game evaluate `self roll: 6`, then click on token "b"
- Go to the Moves view and inspect the last move to see b lands on B, then on A

'>
	^ aSlide labelAndElement
		setPriority;
		newFadedText: 'An explainable Ludo game lets you explore its inner workings.';
		element: [ (GtCoderElement forClass: GtLudoRecordingGameExamples) createInPager maximized ]
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

Need another example

An Inspector on an object.
NB: the pager is needed so we can navigate to new pages.'>
	^ aSlide labelAndElement
		setPriority;
		newFadedText: 'An Inspector on an object';
		element: [ (GtPager
				createWrappedOn: (GtInspector forObject: GhOrganizationExamples new feenkcomOrganization))
				maximized ]
]

{ #category : #slides }
HuaweiGTSlideshow >> moldableTools: aSlide [
	<gtSlide>
	<text:
'TODO

Key ideas is to make IDE tools cheaply moldable to your domain.

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
HuaweiGTSlideshow >> moreOpaqueness: aSlide [
	<gtSlide>
	<text:
'TODO
## Opaqueness

# Placeholder
'>
	^ aSlide paragraph
		setPriority;
		subtitleWithFormat: (self asSubtitle: 'Opaqueness');
		paragraphWithFormat: (self
				asText: 
'

	Read the documentation
		Incomplete
		Out of date
		Inconsistent
	Google it
	Use an analysis tool
	Use GenAI

')
]

{ #category : #slides }
HuaweiGTSlideshow >> opaqueSystems: aSlide [
	<gtSlide>
	<text: '# Opaque systems

The opposite of an explainable system is an *opaque* one, which makes it hard for you to answer questions about how it works.'>
	^ aSlide paragraph
		setPriority;
		subtitleWithFormat: (self asSubtitle: 'Opaque systems');
		paragraphWithFormat: (self
				asText: '
make it hard for you to understand how they work.')
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
		subtitleWithFormat: (self asSubtitle: 'Outline');
		paragraphWithFormat: (self
				asText: 
'
• Code editors
• Debugger
• Language workbench
• ...

')
]

{ #category : #slides }
HuaweiGTSlideshow >> pervasiveTools: aSlide [
	<gtSlide>
	<text: '## Custom tools are pervasive

This visualization shows a treemap of packages and classes in the current image.

Blue classes have at least one custom view (i.e., a feature) and green ones have at least one example.
This shows that custom tools were  heavily used to build the moldable development environment itself.

Here at the top left we see `BlElement`, the root of the graphical hierarchy.'>
	<demo: '## Custom tools are pervasive

- Click on the top-left class (BlElement)'>
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
	<text: 'TO FIX
## Running systems are typically opaque

A running system just shows its UI. You can interact with it, but you can''t see what''s happening inside it.

With this implementation of a Ludo game, we can only click on the die and enter a token when we roll a 6.
Beyond observing the external behavior of the game, we can gain no insights into inner workings of the game or its logic.'>
	<demo: '## Running systems are typically opaque

Click on the die repeatedly, and make moves when possible.'>
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
			opaqueSystems:
			runningSystem:
			sourceEditor:
			moreOpaqueness:
			moldableDevelopment:
			explainableLudo:
		
		gt:
			moldableTools:
			lepiter:
			moldableInspector:
			otherTools:
		
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
	<text: 'TO FIX ## Source editors are opaque

Browsing source code is not a good way to understand a system.
We can see the classes of the Ludo implementation, and browse the source code of the methods, but it''s a poor way to understand how the pieces fit together, and it does not scale to large software systems.'>
	<demo: '## Source editors are opaque

Open a few methods, such as the `initialize` method.
Perhaps browse the `initialization` and `playing` protocols.'>
	^ aSlide labelAndElement
		setPriority;
		newFadedText: 'Reading source code is not an effective way to understand a system.';
		element: [ (GtCoderElement forClass: GtLudoGame) createInPager maximized ]
]

{ #category : #slides }
HuaweiGTSlideshow >> summarySlide: aSlide [
	<gtSlide>
	<text:
'TODO

# Placeholder
'>
	^ aSlide paragraph
		setPriority;
		subtitleWithFormat: (self asSubtitle: 'Summary');
		paragraphWithFormat: (self
				asText: 
'Paragraph body.
Possibly over multiple lines.
')
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
