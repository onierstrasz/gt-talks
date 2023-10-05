"
Slideshow for the VISSOFT 2022 Keynote.

```
VissoftSlideshow show
```

"
Class {
	#name : #MakingSystemsExplainableSlideshow,
	#superclass : #PrioritySlideshow,
	#category : #'GtTalks-Slideshows'
}

{ #category : #accessing }
MakingSystemsExplainableSlideshow class >> show [
	"Implement this here just so we can run it directly from the Coder."
	super show
]

{ #category : #slides }
MakingSystemsExplainableSlideshow >> coda: aSlide [
	<gtSlide>
	^ aSlide textAndElement
		elementWeight: 0.5;
		setPriority;
		newTextWithFormat: (self
				asHeader: 'Conclusion

')
				, (self
						asBigText: 'Custom views and examples are used not only to analyze foreign systems, but are heavily used within GT itself')
				, (self
						asText: '


Blue classes and packages contain at least one custom view.
Green ones have at least one example..');
		element: [ GtTour new treemapWithViewsAndExamples ]
]

{ #category : #page }
MakingSystemsExplainableSlideshow >> database [
	"All the pages"

	<gtExample>
	<noTest>
	^ self db
]

{ #category : #slides }
MakingSystemsExplainableSlideshow >> documentingRules: aSlide [
	<gtSlide>
	^ aSlide lepiterPage
		setPriority;
		startPage: (self db pageNamed: 'Documenting the rules')
]

{ #category : #page }
MakingSystemsExplainableSlideshow >> documentingRulesPage [
	<gtExample>
	<noTest>
	^ (LePage named: 'Documenting the rules')
		addSnippet: (LeTextSnippet new
				string: '**Q How can we document all the rules of the game?** ';
				addSnippet: (LeTextSnippet new
						string: 'The examples have been design to test all possible scenarios. We can now reuse these examples to document the rules.';
						yourself);
				addSnippet: (LeTextSnippet new
						string: 'See, for example: {{gtPage:Documenting the domain: the Ludo game case study|db=2j9m7db2i4oz116bexd7wbdxo}}';
						yourself);
				yourself);
		yourself
]

{ #category : #slides }
MakingSystemsExplainableSlideshow >> download: aSlide [
	<gtSlide>
	^ aSlide title
		setPriority;
		titleWithFormat: (self asSubtitle: 'Try it yourself ...');
		titleBottomPadding: 60;
		subtitleWithFormat: (self
				asBigText: '

https://gtoolkit.com
')
]

{ #category : #slides }
MakingSystemsExplainableSlideshow >> exampleHeading: aSlide [
	<gtSlide>
	^ aSlide paragraph
		setPriority;
		subtitleWithFormat: (self asSubtitle: 'Examples');
		paragraphWithFormat: (self
				asBigText: '
Tests should return example objects that can be used to compose further tests as well as documentation.
') italic
]

{ #category : #slides }
MakingSystemsExplainableSlideshow >> examples: aSlide [
	<gtSlide>
	^ aSlide lepiterPage
		setPriority;
		startPage: (self db pageNamed: 'Examples')
]

{ #category : #page }
MakingSystemsExplainableSlideshow >> examplesPage [
	<gtExample>
	<noTest>
	^ (LePage named: 'Examples')
		addSnippet: (LeTextSnippet new
				string: '### Tests that return examples have numerous advantages';
				addSnippet: (LeTextSnippet new
						string: '*• Tests just pass or fail, while examples can be* ***explored***.';
						yourself);
				addSnippet: (LeTextSnippet new
						string: '*• Examples can be “****reused****” to compose further test examples as well as to create narratives (documentation).* ';
						yourself);
				addSnippet: (LeTextSnippet new
						string: '*• By making test* ***dependencies explicit***, *failing tests will prevent dependent tests from being run.* ';
						yourself);
				yourself);
		addSnippet: (LeTextSnippet new
				string: '';
				yourself);
		addSnippet: (LeTextSnippet new
				string: '***Q How can we test the steps of a method extraction refactoring?*** ';
				addSnippet: (LeTextSnippet new
						string: 'Each stage of the refactoring produces a scripted example that can be used as the starting point of the next stage.';
						yourself);
				addSnippet: (LeTextSnippet new
						string: 'Here we see that last stage of an extract-method refactoring in {{gtMethod:name=GtPharoSnippetCoderByScripterExamples >> #forUnaryExtraction_04_click_extract_method | expanded=true}}  ';
						yourself);
				addSnippet: (LeTextSnippet new
						string: 'Expand the first line of the script to see the previous stage. Evaluate it to see the result up to that point.';
						yourself);
				yourself);
		yourself
]

{ #category : #slides }
MakingSystemsExplainableSlideshow >> exploringRuby: aSlide [
	<gtSlide>
	^ aSlide lepiterPage
		setPriority;
		startPage: (self db pageNamed: 'Exploring Ruby code')
]

{ #category : #page }
MakingSystemsExplainableSlideshow >> exploringRubyPage [
	<gtExample>
	<noTest>
	^ (LePage named: 'Exploring Ruby code')
		addSnippet: (LeTextSnippet new
				string: '***Q Can we also get syntax explanations for other languages?*** ';
				yourself);
		addSnippet: (LeTextSnippet new
				string: 'The following example is from {{gtPage:Analyzing Ruby on Rails: the Whitehall case study|db=2j9m7db2i4oz116bexd7wbdxo}}.';
				yourself);
		addSnippet: (LeTextSnippet new
				string: 'We can explore the Syntax Explanation view for Ruby code.';
				yourself);
		addSnippet: (LeElementSnippet new
				code: 'GtInspector newOn: (FileLocator imageDirectory / ''whitehall'' / ''app'' / ''controllers'' / ''announcements_controller.rb'')';
				yourself);
		addSnippet: (LeTextSnippet new
				string: 'We can also explore the source code in sync with the AST.';
				yourself);
		addSnippet: (LeElementSnippet new
				code: 'GtInspector newOn: (RubyParser parse: (FileLocator imageDirectory / ''whitehall'' / ''app'' / ''controllers'' / ''announcements_controller.rb'') contents)';
				yourself);
		yourself
]

{ #category : #slides }
MakingSystemsExplainableSlideshow >> exploringViews: aSlide [
	<gtSlide>
	^ aSlide lepiterPage
		setPriority;
		startPage: (self db pageNamed: 'Exploring custom views')
]

{ #category : #page }
MakingSystemsExplainableSlideshow >> exploringViewsPage [
	<gtExample>
	<noTest>
	^ (LePage named: 'Exploring custom views')
		addSnippet: (LeTextSnippet new
				string: '**Q How is the Ludo game built up?** ';
				addSnippet: (LeTextSnippet new
						string: 'Let''s have a closer look at an instance of the game.';
						yourself);
				addSnippet: (LePharoSnippet new
						code: 'GtLudoGameExamples new bToPlayWithAonStartSquare ';
						yourself);
				addSnippet: (LeTextSnippet new
						string: 'Have a look at the various tabs at the top of the Inspector.';
						yourself);
				addSnippet: (LeTextSnippet new
						string: 'In particular we can explore the Players and the Squares.';
						yourself);
				addSnippet: (LeTextSnippet new
						string: 'We also have a classical Raw view provided by most existing object inspectors, and a Meta view to go straight to the code.';
						yourself);
				addSnippet: (LeTextSnippet new
						string: 'These views are live, so let''s explore the square with the A token.';
						yourself);
				addSnippet: (LeTextSnippet new
						string: 'We have a fresh view of a square.';
						yourself);
				yourself);
		addSnippet: (LeTextSnippet new
				string: '##Navigating the domain objects';
				addSnippet: (LeTextSnippet new
						string: 'From the square we can further navigate to the tokens, or back to the game and the players, each of which have some custom views.';
						yourself);
				addSnippet: (LeTextSnippet new
						string: '**Q Can we see the relationships between the domain objects?** ';
						yourself);
				addSnippet: (LeTextSnippet new
						string: 'Here''s a simple class diagram. (Note the diagram is live.)';
						yourself);
				addSnippet: (LeExampleSnippet new
						exampleBehaviorName: 'GtLudoCodeDocumentationExamples';
						exampleSelector: 'modelClassExplicitLabeledReferencesV0';
						noCode: true;
						previewShowSelector: 'gtLiveFor:';
						previewHeight: 600);
				yourself);
		addSnippet: (LeTextSnippet new
				string: '';
				yourself);
		addSnippet: (LeTextSnippet new
				string: '';
				yourself);
		addSnippet: (LeTextSnippet new
				string: '';
				yourself);
		yourself
]

{ #category : #initialization }
MakingSystemsExplainableSlideshow >> initializeDb [
	self db addPage: self inspectingLudoPage.
	self db addPage: self scriptingAScenarioPage.
	self db addPage: self exploringViewsPage.
	self db addPage: self trackingStatePage.
	self db addPage: self documentingRulesPage.
	self db addPage: self millerColumnsPage.
	self db addPage: self queryingObjectsPage.
	self db addPage: self visualizingObjectsPage.
	self db addPage: self moldableViewsPage.
	self db addPage: self exploringRubyPage.
	self db addPage: self lepiterPage.
	self db addPage: self examplesPage.
]

{ #category : #slides }
MakingSystemsExplainableSlideshow >> inspectingLudo: aSlide [
	<gtSlide>
	^ aSlide lepiterPage
		setPriority;
		startPage: (self db pageNamed: 'Inspecting the Ludo game')
]

{ #category : #page }
MakingSystemsExplainableSlideshow >> inspectingLudoPage [
	<gtExample>
	<noTest>
	^ (LePage named: 'Inspecting the Ludo game')
		addSnippet: (LeTextSnippet new
				string: '##Playing the game ...';
				addSnippet: (LeTextSnippet new
						string: 'We can see the game and play it, as before.';
						yourself);
				addSnippet: (LePharoSnippet new
						code: 'GtLudoGame new';
						yourself);
				addSnippet: (LeTextSnippet new
						string: 'After playing for a bit, we can start to ask some questions.';
						yourself);
				yourself);
		addSnippet: (LeTextSnippet new
				string: '';
				yourself);
		addSnippet: (LeTextSnippet new
				string: '##Talking to the game ...';
				addSnippet: (LeTextSnippet new
						string: 'This is not just the game GUI, but an *Inspector* view of the live object.';
						yourself);
				addSnippet: (LeTextSnippet new
						string: '';
						yourself);
				addSnippet: (LeTextSnippet new
						string: '**Q Can we control the execution of the game?** ';
						addSnippet: (LeTextSnippet new
								string: 'We can open the “playground” at the bottom of the inspector to play some scripted moves. Let''s roll some sixes to get the game moving.';
								yourself);
						yourself);
				addSnippet: (LeTextSnippet new
						string: '';
						yourself);
				addSnippet: (LeTextSnippet new
						string: '**Q What happens if one player''s piece lands on that of another? ** ';
						addSnippet: (LeTextSnippet new
								string: 'We can answer this question by rolling specific values of the die.';
								yourself);
						yourself);
				yourself);
		addSnippet: (LeTextSnippet new
				string: '';
				yourself);
		yourself
]

{ #category : #slides }
MakingSystemsExplainableSlideshow >> inspectorHeading: aSlide [
	<gtSlide>
	^ aSlide paragraph
		setPriority;
		subtitleWithFormat: (self asSubtitle: 'The Inspector');
		paragraphWithFormat: (self
				asBigText: '
Use an object inspector rather than a text editor to put live objects rather than code at the center of the IDE.
') italic
]

{ #category : #slides }
MakingSystemsExplainableSlideshow >> lepiter: aSlide [
	<gtSlide>
	^ aSlide lepiterPage
		setPriority;
		startPage: (self db pageNamed: 'Lepiter')
]

{ #category : #slides }
MakingSystemsExplainableSlideshow >> lepiterHeading: aSlide [
	<gtSlide>
	^ aSlide paragraph
		setPriority;
		subtitleWithFormat: (self asSubtitle: 'Lepiter');
		paragraphWithFormat: (self
				asBigText: '
Use a live notebook to author and explore narratives that connect live objects and code.
') italic
]

{ #category : #page }
MakingSystemsExplainableSlideshow >> lepiterPage [
	<gtExample>
	<noTest>
	^ (LePage named: 'Lepiter')
		addSnippet: (LeTextSnippet new
				string: '*Lepiter is a live notebook of interconnected pages containing snippets of text, live code, examples, and other entities.* ';
				yourself);
		addSnippet: (LeTextSnippet new
				string: '';
				yourself);
		addSnippet: (LeTextSnippet new
				string: 'In additional to following the linear flow of a given notebook page, you can also explore laterally to other pages, examples, and code.';
				yourself);
		addSnippet: (LeTextSnippet new
				string: '';
				yourself);
		addSnippet: (LeTextSnippet new
				string: '## Tutorials as narratives';
				addSnippet: (LeTextSnippet new
						string: 'The {{gtPage:Glamorous Toolkit|db=2j9m7db2i4oz116bexd7wbdxo}} Book contains numerous tutorials as notebook pages containing text, links to code, live diagrams, code snippets, and examples: ';
						yourself);
				addSnippet: (LeTextSnippet new
						string: '{{gtPage:Working with collections in Pharo|db=2j9m7db2i4oz116bexd7wbdxo}}';
						yourself);
				yourself);
		addSnippet: (LeTextSnippet new
				string: '';
				yourself);
		addSnippet: (LeTextSnippet new
				string: '##Demos as narratives';
				addSnippet: (LeTextSnippet new
						string: 'Here is an example of a custom analysis tool built out of existing pieces:';
						yourself);
				addSnippet: (LeTextSnippet new
						string: '{{gtPage:Rewriting Pharo code|db=2j9m7db2i4oz116bexd7wbdxo}}  ';
						yourself);
				yourself);
		addSnippet: (LeTextSnippet new
				string: '';
				yourself);
		addSnippet: (LeTextSnippet new
				string: '## Documentation as narratives';
				addSnippet: (LeTextSnippet new
						string: 'Notebooks can also serve as a medium for explaining designs, scenarios, algorithms, and both technical and non-technical documentation.';
						yourself);
				addSnippet: (LeTextSnippet new
						string: '{{gtPage:Explaining the squarified treemap algorithm|db=2j9m7db2i4oz116bexd7wbdxo}}';
						yourself);
				yourself);
		addSnippet: (LeTextSnippet new
				string: '';
				yourself);
		yourself
]

{ #category : #slides }
MakingSystemsExplainableSlideshow >> ludoIntro: aSlide [
	<gtSlide>
	^ aSlide textAndElement
		elementWeight: 0.5;
		setPriority;
		newTextWithFormat: (self asHeader: 'Explaining the Ludo game') bold
				, (self
						asText: '

The Ludo game was a (Java) programming exercise for 1st year students.

We can play this version of the game, but we cannot talk to it.');
		element: [ GtLudoGame new asElement asScalableElement ]
]

{ #category : #slides }
MakingSystemsExplainableSlideshow >> millerColumns: aSlide [
	<gtSlide>
	^ aSlide lepiterPage
		setPriority;
		startPage: (self db pageNamed: 'Miller columns')
]

{ #category : #page }
MakingSystemsExplainableSlideshow >> millerColumnsPage [
	<gtExample>
	<noTest>
	^ (LePage named: 'Miller columns')
		addSnippet: (LeTextSnippet new
				string: '##Exploring and navigating objects and code with Miller columns';
				addSnippet: (LeTextSnippet new
						string: 'We can explore the graph of objects by navigating along Miller columns.';
						yourself);
				addSnippet: (LeTextSnippet new
						string: '***Q What are the currently loaded repositories, packages and classes?***  ';
						yourself);
				addSnippet: (LeTextSnippet new
						string: 'Consider the *Iceberg* registry of all loaded git repositories.';
						yourself);
				addSnippet: (LePharoSnippet new
						code: 'IceRepository registry';
						yourself);
				addSnippet: (LeTextSnippet new
						string: 'We can easily navigate from repos to packages to classes and code.';
						addSnippet: (LeTextSnippet new
								string: '(Browse, for example, the `gtoolkit-demos` repo containing the `GToolkit-Demos-AddressBook` package and its examples, all the way to the code.)';
								yourself);
						yourself);
				yourself);
		yourself
]

{ #category : #slides }
MakingSystemsExplainableSlideshow >> moldableHeading: aSlide [
	<gtSlide>
	^ aSlide paragraph
		setPriority;
		subtitleWithFormat: (self asSubtitle: 'Moldable Views');
		paragraphWithFormat: (self
				asBigText: '
Use custom views to answer domain-specific questions about objects.
') italic
]

{ #category : #slides }
MakingSystemsExplainableSlideshow >> moldableViews: aSlide [
	<gtSlide>
	^ aSlide lepiterPage
		setPriority;
		startPage: (self db pageNamed: 'Moldable views')
]

{ #category : #page }
MakingSystemsExplainableSlideshow >> moldableViewsPage [
	<gtExample>
	<noTest>
	^ (LePage named: 'Moldable views')
		addSnippet: (LeTextSnippet new
				string: '*A moldable view offers a way to answer a domain-specific question about an object.* ';
				yourself);
		addSnippet: (LeTextSnippet new
				string: '##CompiledMethod views';
				addSnippet: (LeTextSnippet new
						string: '*Compiled methods* are a good example of objects with a rich set of custom views.';
						yourself);
				addSnippet: (LeTextSnippet new
						string: 'Let''s have a closer look at the available views of Ludo example method we saw earlier.';
						yourself);
				addSnippet: (LeExampleSnippet new
						exampleBehaviorName: 'GtLudoGameExamples';
						exampleSelector: 'compiledMethodExample';
						noCode: true;
						previewExpanded: true;
						previewHeight: 500);
				addSnippet: (LeTextSnippet new
						string: 'Have a look at the source, bytecode, AST, git history, and particularly the syntax explanation.';
						yourself);
				yourself);
		addSnippet: (LeTextSnippet new
				string: '';
				yourself);
		addSnippet: (LeTextSnippet new
				string: '***Q How are views implemented?*** ';
				addSnippet: (LeTextSnippet new
						string: 'Each view is typically a few lines of code.';
						yourself);
				addSnippet: (LeTextSnippet new
						string: 'This query lists all the custom views in the system. (Have a look at the Metrics tab.)';
						yourself);
				addSnippet: (LePharoSnippet new
						code: '#gtView gtPragmas';
						yourself);
				addSnippet: (LeTextSnippet new
						string: 'You can explore the implementations of the views of the CompiledMethod instance above by OPT-clicking on each tab. As you can see, most of them are simple, and heavily leverage existing functionality.';
						yourself);
				yourself);
		addSnippet: (LeTextSnippet new
				string: '';
				yourself);
		yourself
]

{ #category : #slides }
MakingSystemsExplainableSlideshow >> part1: aSlide [
	<gtSlide>
	^ aSlide paragraph
		setPriority;
		subtitleWithFormat: (self asSubtitle: 'Part I');
		paragraphWithFormat: (self
				asBigText: '
Explaining the Ludo game.
')
]

{ #category : #slides }
MakingSystemsExplainableSlideshow >> part2: aSlide [
	<gtSlide>
	^ aSlide paragraph
		setPriority;
		subtitleWithFormat: (self asSubtitle: 'Part II');
		paragraphWithFormat: (self
				asBigText: '
Make systems explainable by shifting the focus in the IDE from editing source code to exploring live objects, source code, and narratives that link them.
') italic
]

{ #category : #slides }
MakingSystemsExplainableSlideshow >> part3: aSlide [
	<gtSlide>
	^ aSlide paragraph
		setPriority;
		subtitleWithFormat: (self asSubtitle: 'Conclusion');
		paragraphWithFormat: (self
				asBigText: '

Systems become explainable by linking code and examples within live documentation.
') italic
]

{ #category : #slides }
MakingSystemsExplainableSlideshow >> queryingObjects: aSlide [
	<gtSlide>
	^ aSlide lepiterPage
		setPriority;
		startPage: (self db pageNamed: 'Querying objects')
]

{ #category : #page }
MakingSystemsExplainableSlideshow >> queryingObjectsPage [
	<gtExample>
	<noTest>
	^ (LePage named: 'Querying objects')
		addSnippet: (LeTextSnippet new
				string: '##Querying with dedicated playgrounds';
				addSnippet: (LeTextSnippet new
						string: 'Every view has a dedicated playground (lift up the grey bar at the bottom).';
						yourself);
				addSnippet: (LePharoSnippet new
						code: 'IceRepository registry';
						yourself);
				addSnippet: (LeTextSnippet new
						string: 'Suppose we have the following question:';
						yourself);
				addSnippet: (LeTextSnippet new
						string: '***Q What are all the classes defined in the*** `lepiter` ***repo?*** ';
						yourself);
				addSnippet: (LeTextSnippet new
						string: 'By just navigating the Miller columns, we can get all the classes of a given package, but not of the whole repo. We can fin d the answer by a combination of querying and navigation.';
						yourself);
				addSnippet: (LeTextSnippet new
						string: 'We can evaluate code snippets in the context of each of these objects. For exanmple, from the registry we can select the `lepiter` repo.';
						yourself);
				addSnippet: (LeTextSnippet new
						string: '```language=text
	self detect: [: r | r name = ''lepiter'']
```';
						yourself);
				addSnippet: (LeTextSnippet new
						string: 'From that repo the list of loaded packages:';
						yourself);
				addSnippet: (LeTextSnippet new
						string: '```language=text
	self select: #isLoaded
```';
						yourself);
				addSnippet: (LeTextSnippet new
						string: 'From the result the actual packages';
						yourself);
				addSnippet: (LeTextSnippet new
						string: '```language=text
	self collect: [ :p | p name asPackage ]
```';
						yourself);
				addSnippet: (LeTextSnippet new
						string: 'And finally the classes defined in that repo.';
						yourself);
				addSnippet: (LeTextSnippet new
						string: '```language=text
	self flatCollect: #definedClasses
```';
						yourself);
				yourself);
		addSnippet: (LeTextSnippet new
				string: '';
				yourself);
		addSnippet: (LeTextSnippet new
				string: '##From exploration to packaged queries';
				addSnippet: (LeTextSnippet new
						string: 'Once we have concluded our exploration, we can put all these pieces together to create a unified snippet.';
						yourself);
				addSnippet: (LePharoSnippet new
						code: 'l := IceRepository registry detect: [ :r | r name = ''lepiter'' ].
((l packages select: #isLoaded) 
	collect: [ :p | p name asPackage ])
	flatCollect: #definedClasses';
						yourself);
				yourself);
		yourself
]

{ #category : #slides }
MakingSystemsExplainableSlideshow >> scriptingAScenario: aSlide [
	<gtSlide>
	^ aSlide lepiterPage
		setPriority;
		startPage: (self db pageNamed: 'Scripting a scenario')
]

{ #category : #page }
MakingSystemsExplainableSlideshow >> scriptingAScenarioPage [
	<gtExample>
	<noTest>
	^ (LePage named: 'Scripting a scenario')
		addSnippet: (LeTextSnippet new
				string: '**Q How can we script the scenario of one player landing on another player''s piece?**  ';
				addSnippet: (LeTextSnippet new
						string: 'We can script interesting scenarios using *example methods* — tests that return an instance.';
						yourself);
				yourself);
		addSnippet: (LeTextSnippet new
				string: '#A test that returns an example';
				addSnippet: (LeTextSnippet new
						string: 'In particular, let''s look at {{gtMethod:name=GtLudoGameExamples>>bEntersPlayWithAonStartSquare}}.  ';
						yourself);
				addSnippet: (LeTextSnippet new
						string: 'It''s a test method, with the difference that it returns an instance of the game as a result, and its setup is the result of another example method.';
						yourself);
				addSnippet: (LeTextSnippet new
						string: 'If we evaluate it, we can see the result of player b entering the game when player a is standing on its start square.';
						yourself);
				addSnippet: (LeExampleSnippet new
						exampleBehaviorName: 'GtLudoGameExamples';
						exampleSelector: 'bEntersPlayWithAonStartSquare';
						noCode: true;
						previewShowSelector: 'gtPositionsFor:';
						previewHeight: 500);
				yourself);
		addSnippet: (LeTextSnippet new
				string: '##Building a scenario from examples';
				addSnippet: (LeTextSnippet new
						string: 'Let''s explore {{gtClass:name=GtLudoGameExamples}} and have a look at the *Examples map*.';
						addSnippet: (LeElementSnippet new
								code: 'm := GtMondrian new.
(GtExampleGroup withAll: GtLudoGameExamples gtExamplesContained) paintMapWith: m.
m';
								yourself);
						yourself);
				addSnippet: (LeTextSnippet new
						string: '**Q How can we see the steps of the scenario?** ';
						yourself);
				addSnippet: (LeTextSnippet new
						string: 'Look again at {{gtMethod:name=GtLudoGameExamples>>bEntersPlayWithAonStartSquare}}, and open up the setup method (click on the grey triangle next to `self bToPlayWithAonStartSquare`).';
						yourself);
				addSnippet: (LeTextSnippet new
						string: 'Recursively open up the setup examples until we get to the start.';
						yourself);
				addSnippet: (LeTextSnippet new
						string: 'Now we can evaluate each setup example to see the intermediate states.';
						yourself);
				addSnippet: (LeTextSnippet new
						string: 'This is nice, but we can do better ...';
						yourself);
				yourself);
		addSnippet: (LeTextSnippet new
				string: '';
				yourself);
		addSnippet: (LeTextSnippet new
				string: '';
				yourself);
		addSnippet: (LeTextSnippet new
				string: '';
				yourself);
		yourself
]

{ #category : #accessing }
MakingSystemsExplainableSlideshow >> slidePriorities [
	"Instead of manually setting priorities, just list the slides in order here."
	<gtExample>
	^ #( 
		#titleSlide:
		part1:
			ludoIntro:
			inspectingLudo:
			scriptingAScenario:
			exploringViews:
			trackingState:
			documentingRules:
			summary:
		part2:
			inspectorHeading:
				millerColumns:
				queryingObjects:
				visualizingObjects:
			moldableHeading:
				moldableViews:
				exploringRuby:
			lepiterHeading:
				lepiter:
			exampleHeading:
				examples:
		part3:
			coda:
			download:
		)
]

{ #category : #slides }
MakingSystemsExplainableSlideshow >> summary: aSlide [
	<gtSlide>
	^ aSlide paragraph
		setPriority;
		subtitleWithFormat: (self asSubtitle: 'The story so far ...');
		paragraphWithFormat: (self
				asBigText: '

— The ') , (self asBigText: 'Object Inspector') italic
				, (self
						asBigText: ' lets you explore live objects with custom views

— ') , (self asBigText: 'Lepiter notebooks') italic
				, (self
						asBigText: ' enable narratives linking live objects and code

— Test methods return ') , (self asBigText: 'live examples') italic
]

{ #category : #slides }
MakingSystemsExplainableSlideshow >> titleSlide: aSlide [
	<gtSlide>
	^ aSlide title
		setPriority;
		titleBottomPadding: 60;
		titleWithFormat: (self asTitle: 'Making systems explainable');
		subtitleWithFormat: (self asBigText: '@onierstrasz — feenk.com')
]

{ #category : #slides }
MakingSystemsExplainableSlideshow >> trackingState: aSlide [
	<gtSlide>
	^ aSlide lepiterPage
		setPriority;
		startPage: (self db pageNamed: 'Tracking state')
]

{ #category : #page }
MakingSystemsExplainableSlideshow >> trackingStatePage [
	<gtExample>
	<noTest>
	^ (LePage named: 'Tracking state')
		addSnippet: (LeTextSnippet new
				string: '**Q How can we step through the individual states of a game?** ';
				addSnippet: (LeTextSnippet new
						string: 'This requires some rethinking of the game design. Basically each state of the game should be an immutable object, and a move should be a first-class transition between game states.';
						yourself);
				addSnippet: (LeExampleSnippet new
						exampleBehaviorName: 'GtLudoCodeDocumentationExamples';
						exampleSelector: 'modelClassExplicitLabeledReferences';
						noCode: true;
						previewShowSelector: 'gtLiveFor:';
						previewHeight: 400);
				yourself);
		addSnippet: (LeTextSnippet new
				string: '##A recording Ludo game';
				addSnippet: (LeTextSnippet new
						string: 'If we inspect this example, we can step through the moves of a scenario illustrating all the important kinds of moves that can take place.';
						yourself);
				addSnippet: (LeTextSnippet new
						string: '';
						yourself);
				addSnippet: (LeExampleSnippet new
						exampleBehaviorName: 'GtLudoRecordingGameExamples';
						exampleSelector: 'gameShowingAllMoves6';
						noCode: true;
						previewHeight: 500);
				addSnippet: (LeTextSnippet new
						string: '';
						yourself);
				addSnippet: (LeTextSnippet new
						string: 'We can even restart the game from any given state and explore another execution path.';
						yourself);
				yourself);
		yourself
]

{ #category : #slides }
MakingSystemsExplainableSlideshow >> visualizingObjects: aSlide [
	<gtSlide>
	^ aSlide lepiterPage
		setPriority;
		startPage: (self db pageNamed: 'Visualizing objects')
]

{ #category : #page }
MakingSystemsExplainableSlideshow >> visualizingObjectsPage [
	<gtExample>
	<noTest>
	^ (LePage named: 'Visualizing objects')
		addSnippet: (LeTextSnippet new
				string: '*A custom view offers a way to elevate an ad hoc query into a domain-specific UI extension.* ';
				yourself);
		addSnippet: (LeTextSnippet new
				string: '';
				yourself);
		addSnippet: (LeTextSnippet new
				string: '##Enriching the Inspector with moldable (custom) views';
				addSnippet: (LeTextSnippet new
						string: '***Q Who has committed  recently to the main branch of the gt-demos repo?*** ';
						yourself);
				addSnippet: (LePharoSnippet new
						code: 'IceRepository registry 
	detect: [ :r | r name = ''gtoolkit-demos'' ]';
						yourself);
				addSnippet: (LeTextSnippet new
						string: 'For a given repo, we can directly explore the packages, branches, local directories, and so on. From there we can navigate to the commits, the files, and so on.';
						yourself);
				yourself);
		yourself
]
