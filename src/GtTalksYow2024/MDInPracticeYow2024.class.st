Class {
	#name : #MDInPracticeYow2024,
	#superclass : #ONSlideshow,
	#classInstVars : [
		'cardDemoModel'
	],
	#category : #'GtTalksYow2024-Slideshows'
}

{ #category : #accessing }
MDInPracticeYow2024 class >> cardDemoModel [
	cardDemoModel
		ifNil: [ AWSCardDemo model
				ifNil: [ AWSCardDemo
						model: (GtCobolImporter new
								copyBookDirectories: {AWSCardDemo rootDirectory / 'app/cpy'.
										AWSCardDemo rootDirectory / 'app/cpy-bms'};
								importDirectory: AWSCardDemo rootDirectory;
								model) ].
			cardDemoModel := AWSCardDemo model ].
	^ cardDemoModel
]

{ #category : #slides }
MDInPracticeYow2024 >> blueSkyUser: aSlide [
	<gtSlide>
	<time: 2>
	<text:
'## Inspecting a BlueSky user

Once you have created these custom views, you end up with a powerful environment for exploring a domain. Here we have what looks like a BlueSky client, but in fact it is just an object inspector on the domain objects we get back from the AT protocol. What makes this interesting is that instead of a closed app, we get a moldable environment for interactively exploring questions about the BlueSky domain.'>
<demo:
'- Look at the Timeline view
- Inspect a post
- See that it has a `hasMedia` method
- Open the playground of the actor
- Evaluate `self timelinePosts select: #hasMedia`
'>
	^ aSlide labelAndElement
		setPriority;
		newFadedText: 'Inspecting a BlueSky user';
		element: [ (GtPager
				createWrappedOn: (GtInspector forObject: BlueskyDemo new actor))
				maximized ]
]

{ #category : #slides }
MDInPracticeYow2024 >> cardDemo: aSlide [
	<gtSlide>
	<time: 2>
	<text:
'## The wrapped CardDemo

Here we have taken the raw source files of the CardDemo and modeled the COBOL domain entities.

From a bitmap we can navigate to its source code, and the map of programs and screen, showing how we can navigate through the menus of the application.

The map is live, so we can navigate to indivudal screens and programs. From a program we can explore its source code, and from their to related entities. For example, we can inspect the individual variables, and see how their  memory is allocated. (COBOL variables can have overlapping definitions.)

The central idea is to first take the raw data and wrap them as linked and explorable domain entities. Then, as we pose questions about the system, we introduce lightweight, custom tools, namely views and actions, that allow us to experiment and answer these questions.'>
<demo:
'- Inspect `All BMS Maps`
- Click on the first screen (just to the left of the screen itself)
- Go to the `Programs & screen view to see the screen hierarchy
- Go to the first program
- Inspect the variables
- See the Overlapping view '>

	^ aSlide labelAndElement
		setPriority;
		newFadedText: 'The wrapped CardDemo as an explainable system';
		element: [ (GtPager
				createWrappedOn: (GtInspector forObject: self cardDemoModel))
				maximized ]
]

{ #category : #slides }
MDInPracticeYow2024 >> cardDemoExample: aSlide [
	<gtSlide>
	<time: 0.5>
	<text:
'# Example: Exploring the COBOL CardDemo

The AWS CardDemo is an open source COBOL mainframe application that is available for exploring and testing various kinds of legacy modernization technologies. It can be freely downloaded from the AWS website.

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
	<time: 1>
	<text:
'## The raw CardDemo files

Here is the raw download of the files of the CardDemo. We can see there are bitmap files of the screen menus, and  cobol source files, but how are they related? 

There are also some diagrams, but what do they mean?'>
<demo:
'- Browse the `app/cbl` and `diagrams` folders
- Click on some of the diagrams
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
	<time: 0.5>
	<text: '# Coda

These patterns are supported by GT, but are not specific to it. By making your development tools moldable, you can support a form of moldable development for your own platform.

Thanks for listening.

[Link to slideshow Resources](https://www.oscar.nierstrasz.org/yow2024/)'>
	^ aSlide textAndElement
		elementWeight: 0.4;
		setPriority;
		newTextWithFormat: (self asSubtitle: 'Coda')
				, (self
						asText: '

Moldable development is a ')
				, (self asText: 'generally applicable development methodology') italic
				, (self asText: ' which seeks to make software systems ')
				, (self asText: 'explainable') italic
				, (self
						asText: ' by making domain objects visible, and extending them with custom analysis tools.

');
		element: [ self qrCodeElement ]
]

{ #category : #slides }
MDInPracticeYow2024 >> composedGameExample: aSlide [
	<gtSlide>
	<time: 1>
	<text:
'## A composed example  method

Now it gets interesting. Once we have an example method that returns an object, we can use that object to compose new ones. Here we take our `emptyGame` as a starting point to create a new example.

Once we have the game instance, we perform an action, followed by a number of assertions. As before, we return an example, which can be further composed.

In fact, if we explore the class of this example method, we see that there are numerous composed examples. In the *Examples map* of this class we can see how these methods are organized into an entire tree of composed examples.'>

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
	<time: 1>
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
	<time: 1>
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
	<time: 1>
	<text:
'## A basic example  method

Here is a very simple example. It has the annotation `<gtExample>`, which is similar to a JUnit `Test` annotation.

The method creates a Ludo `game` instance, and performs some assertions.

The difference, and this is key, is that at the end the object is returned. This allows us not only to run the test, but to inspect and explore the result, *even if the tests pass*.
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
	<time: 2>
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
	<time: 0.5>
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
MDInPracticeYow2024 >> feedback: aSlide [
	<gtSlide>
	^ aSlide element
		setPriority;
		element: [ GtFilePictureLiveSlide new
				fileReference: (GtResourcesUtility
						resourceAtPath: self picturesDirectoryPath / 'YOW-SYDFeedback-App-slide.png') ]
]

{ #category : #slides }
MDInPracticeYow2024 >> ghReposForView: aSlide [
	<gtSlide>
	<time: 2>
	<text:
'## A columned list view

The Glamorous Toolkit supports several kinds of custom views out of the box. One of these, which we already saw several times, is a columned list: a list with several, labeled columns.

Specifying such a view is quite straightforward. You define a method of the domain object with a `<gtView>` annotation, and ask the `aView` factory object for a `columnedList`. You then specify a `title` for the view, in this case `Repositories`, a “priority”, which determines the order in which the views appear, the items of the list, and the titles and text of each of the columns.

That''s it. Many of the other standard views are similarly simple to specify.

Note that in this case views are specified in Smalltalk, but the specifications are similar in Python,  or other languages.'>

		^ aSlide labelAndElement
		setPriority;
		newFadedText: 'A columned list view';
		element: [ PatternScripterExamples new wrappedGitHubOrganizationReposSourceView ]
]

{ #category : #slides }
MDInPracticeYow2024 >> githubExample: aSlide [
	<gtSlide>
	<time: 0.5>
	<text:
'# Example: Exploring the GitHub REST API

Here''s a second example where the software data is obtained through a REST API.

The GitHub REST API provides information about organizations, users and repositories in the form of JSON data.
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
	<time: 0.5>
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
	<time: 1>
	<text:
'## The feenk GitHub organization JSON as a wrapped, moldable  object

After a few iterations we enrich the GitHub organization model with several more entities and views, according to whatever interests us.

We can navigate to a particular repository, such as `gtoolkit-demos`, browse the individual contributors to this repository, and see what kind of git events they have contributed.

We also have a couple of custom actions, for example, an action to open the repository''s webiste in a browser, or to inspect the repository if it happens to be installed locally.'>
<demo:
'- Click through the repos
- Search by name for demo
- Browse Contributors and events
- Click on the *Open in browser* and *Go to repository* actions '
>
	^ aSlide labelAndElement
		setPriority;
		newFadedText: 'The feenk GitHub organization JSON as a wrapped, moldable  object';
		element: [ (GtPager
				createWrappedOn: (GtInspector forObject: PatternScripterExamples new wrappedGitHubOrganization))
				maximized ]
]

{ #category : #page }
MDInPracticeYow2024 >> githubOrgDemoPage [
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
MDInPracticeYow2024 >> githubOrgDemoPage: aSlide [
	<gtSlide>
	<time: 11>
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
	GtGitHubTokenHolder exampleReadAndCacheTokenFromFile.
	self preload
]

{ #category : #slides }
MDInPracticeYow2024 >> intermezzo: aSlide [
	<gtSlide>
	<time: 1>
	<text:
'# Intermezzo -- So what?

What have we seen?

We''ve seen a few different examples of software systems, as executable code, source code, and web APIs that have been transformed into explorable domain models.

In each case we have decorated these models with tiny, custom tools that show us various things of interest.

How does this work?

The idea of moldable development is to make it very easy to add such custom tools by opening up the development tools themselves to lightweight extensions. This can be done in a systematic way, which we can describe a set of patterns. Now let''s look at a few of these patterns in a bit more detail.'>

	^ (aSlide title)
		setPriority;
		titleWithFormat: (self asTitle: 'So what?')
]

{ #category : #slides }
MDInPracticeYow2024 >> moldableCoder: aSlide [
	<gtSlide>
	<time: 1>

<text:
'## The moldable code editor

Here is another example of a moldable tool, in this case the code browser and editor. The entities are not objects, but classes. Classes can define custom tools as methods annotated with `<gtClassView>`. For example, the *Examples map* is a view that is activated for any class that has example methods.

The *Examples* view is another custom view providing us with a simple GUI for running and exploring examples.'>

	^ aSlide labelAndElement
		setPriority;
		newFadedText: 'The moldable code editor';
		element: [ (GtCoderElement forClass: GtLudoRecordingGameExamples) createInPager maximized ]
]

{ #category : #slides }
MDInPracticeYow2024 >> moldableDebugger: aSlide [
	<gtSlide>
	<time: 1>
	<text:
'## The moldable debugger

The same principle can be applied to many other tools. Here we have a custom debugger defined for mismatched string comparisons.

If the assertion fails, we get a custom debug message showing us a diff. If we open the debugger, we get the diff view in detail, showing us where the strings do not match. If we want, we can also switch to the standard, stack-oriented debugger view.

This works because the `AssertionFailure` object has a custom diff tool defined with three annotations: one for the object inspector, one for the debugger, and one for the embedded debugger, which we just saw.'>
<demo:
'- Run the code showing the embedded diff view.
- Open the debugger, showing the detailed diff view.
- Switch to the stack view and back.
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
	<time: 0.5>
	<text:
'## Moldable development in a nutshell

Moldable development is a methodology that makes a system explainable by extending it with numerous, inexpensive and lightweight custom tools that answer specific questions about the system and its underlying domain concepts.'>
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
	<time: 0.5>
	<text:
'## Opaqueness

Other means of understanding opaque systems are also commonly ineffective.

Reading source code does not scale to large systems. Documentation is typically incomplete, out of date, and inconsistent with the current implementation. Generic analysis tools can be useful for answering some questions, but they rarely help you answer very specific questions that you have. Googling or using online resources typically yields many false positives, as is the case with generative AI tools.'>
	^ aSlide paragraph
		setPriority;
		subtitleWithFormat: (self asSubtitle: 'Inadequate means to understand software');
		paragraphWithFormat: (self
				asText: 
'
• Browsing source code
• Reading documentation
• Generic analysis tools
• Consulting online resources
• Generative AI
')
]

{ #category : #slides }
MDInPracticeYow2024 >> onAboutSlide: aSlide [
	<gtSlide>
	<time: 1>
	<text:
'## About Oscar

Hello. My name is Oscar Nierstrasz.

I was a Professor of Software Engineering at the University of Bern for about 30 years, where my team did reserach into software modeling and analysis. We also produced books such as Object-Oriented Reengineeing Patterns, and Pharo by Example. When I retired three years ago, I started working for feenk, a company founded by former student, Tudor Girba. I''m  resposnible for evangelizing, namely mentoring, teaching, creating YouTube videos, and so on.

As developers, we spend much of our time trying to understand the software systems we are working with, instead of actually writing productive code.

Today I''d like to talk to you about Moldable Development, an approach that opens up our legacy software to expose the internal domain models and makes them explainable. First I''ll  show you a couple of examples to illustrate moldable development, and then I''ll present a few of the patterns we have found that capture best practice in moldable development.'>
	^ aSlide labelAndElement
		setPriority;
		newFadedText: 'oscar.nierstrasz.org';
		element: [ self onMondrian asElement asScalableElement ]
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
	<time: 1>
	<text:
'# Pattern: Custom View

When you explore a software system and find interesting stuff, how can you ensure that you will be able to easily that stuff again?

The core idea of this pattern is to take the steps you perform to find and display the interesting data, and turn them into a custom view of the object inspector of a suitable domain object.

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
	<time: 1>
	<text: '# Pattern: Example Object

This pattern starts from the simple observation that a green unit test that returns void is a lost opportunity. Instead of returning nothing, let it return the object under test as an *example*.'>
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
	<time: 2.5>
	<text:
'# A Map of Moldable Development Patterns

Here we see a map of the moldable development patterns we have observed and documented so far. A few of them we have talked about today.

At the top we see *Explainable System*, which is not really a pattern, but rather what we want to achieve.

We have seen *Moldable Tool*, which is a prerequisite for the patterns below.

*Example Object*, which we also saw, offers a way to obtain a *Moldable Object*. *Moldable Object* is where we start the moldable development process. We saw this in action when we were developing the GitHub Organization. Every time we wrapped some data, we obtained a moldable object that we could customize. In fact, these wrappers were examples of the *Moldable Data Wrapper* pattern we see here at the right.

We used a *Contextual Playground* to write experimental code and extract methods.

At the bottom we have several patterns concerning the creation of custom tools. We focused on *Custom View*, in particular the “Columned list” view, which is an example of a very *Simple View*. There are also patterns dealing with the creation of custum actions and searches.

You can learn more about them within Glamorous Toolkit itself. If you download GT from gtoolkit.com, and start it, you will find these live pages documenting the patterns. There is also a PDF of the patterns if you prefer.'>

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
	<time: 1>
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

{ #category : #accessing }
MDInPracticeYow2024 >> picturesDirectoryPath [
	<gtExample>
	^ Path *
		'onierstrasz/gt-talks/data/images'
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

{ #category : #example }
MDInPracticeYow2024 >> qrCodeElement [
	<gtExample>
	| qrCode url container |
	qrCode := (GtFileUtility
			imageElementFromFileReference: FileLocator gtResource / 'onierstrasz/gt-talks/data/images/yow2024-qr-code.png')
			constraintsDo: [ :c | 
				c horizontal exact: 400.
				c vertical exact: 400 ].

	url := BlTextElement new
			text: 'oscar.nierstrasz.org/yow2024' asRopedText glamorousCodeFont.

	container := BrVerticalPane new
			fitContent;
			alignCenter;
			addChildren: {qrCode.
					url}.
	^ container
]

{ #category : #example }
MDInPracticeYow2024 >> qrCodeElementOLD [
	<gtExample>
	| qrCode url container |
	qrCode := GtFileUtility
			imageElementFromFileReference: FileLocator gtResource 
			/ 'onierstrasz/gt-talks/data/images/yow2024-qr-code.png'.
	url := BlTextElement new
			text: 'oscar.nierstrasz.org/yow2024' 
				asRopedText glamorousCodeFont.
	url constraints linear horizontal alignCenter.
	url constraints linear vertical alignTop.
	container := BlElement new layout: BlLinearLayout vertical.
	container constraints horizontal exact: 300.
	container constraints vertical exact: 300.
	container addChildren: {qrCode. url}.
	^ container
]

{ #category : #slides }
MDInPracticeYow2024 >> rawLudoView: aSlide [
	<gtSlide>
	<time: 1>
	<text:
'## A raw Inspector view

Consider the long-suffering Object Inspector. A tool that is normally only seen from within a debugger. It classically shows you a view such as this one, where we have laboriously navigated to the 6th move of an instance of the Ludo game to understand what has happened.

Although you can explore objects and learn things in this way, it is cumbersome and ineffective.'>

	^ aSlide labelAndElement
		setPriority;
		newFadedText: 'A raw Inspector view';
		element: [ PatternScripterExamples new customViewRawViewScript ]
]

{ #category : #slides }
MDInPracticeYow2024 >> runningSystem: aSlide [
	<gtSlide>
	<time: 0.5>
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
			onAboutSlide:

		explainableSystems:
			runningSystem:
			moreOpaqueness:
			softwareTalks:
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
			blueSkyUser:
		
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
			feedback:


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
MDInPracticeYow2024 >> softwareTalks: aSlide [
	<gtSlide>
	<time: 0.5>
	<text: 
'## Software wants to talk to you

What''s the solution? In fact, the software is willing and able to talk to you, but you have to let it. Let''s see how this works.'>
	^ aSlide title
		setPriority;
		subtitleWithFormat: (self asSubtitle: 'Software wants to talk to you')
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
	<time: 0>
	<text:
'# Moldable Development in Practice — Patterns for Legacy Modernization'>

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
	<time: 1>
	<text: 
'## Why examples?

So, why are examples interesting? First, we can compose them, reducing code duplication and cascading errors when a dependent test fails.

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

{ #category : #accessing }
MDInPracticeYow2024 >> wordsPerMinute [
	"Override in subclasses, if desired."

	^ 100
]
