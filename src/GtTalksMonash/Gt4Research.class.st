Class {
	#name : #Gt4Research,
	#superclass : #PrioritySlideshow,
	#classInstVars : [
		'cardDemoModel'
	],
	#category : #'GtTalksMonash-Slideshow'
}

{ #category : #accessing }
Gt4Research class >> cardDemoModel [
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
Gt4Research >> blueSkyExplorer: aSlide [
	<gtSlide>
	<text:
'# Exploring BlueSky via the AT protocol

In this example we use the AT (Authenticated Transfer) protocol to explore the BlueSky 

'>
	^ aSlide paragraph
		setPriority;
		subtitleWithFormat: (self asSubtitle: 'Exploring BlueSky via the AT protocol');
		paragraphWithFormat: (self
				asText: 
'
an open standard for decentralized social networking services.
')
]

{ #category : #slides }
Gt4Research >> blueSkyUser: aSlide [
	<gtSlide>
	<text:
'## Inspecting a BlueSky user

As in the GitHub example, we use the atproto to retrieve raw data from the server, which we then wrap as domain objects. By molding these objects with custom views and actions, we obtain a customizable client environment for exploring the domain.

We can also pose ad hoc queries. For example, if we explore the timeline, we can discover that we can query a post for whether it contains media. We can then use this to extract timeline posts with media.'>
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
Gt4Research >> cardDemo: aSlide [
	<gtSlide>
	<text:
'## The wrapped CardDemo

From a bitmap we can navigate to its source code, and to the dependency map of programs and screens. We can also navigate from source to other source code.

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
Gt4Research >> cardDemoExample: aSlide [
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
Gt4Research >> cardDemoFiles: aSlide [
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
Gt4Research >> cardDemoModel [
	"Cache it once on the class side"

	^ self class cardDemoModel
]

{ #category : #slides }
Gt4Research >> defectPredictionBenchmark: aSlide [
	<gtSlide>
	<text:
'# Large Defect Prediction Benchmark

This example was provided by Kla Tantithamthavorn. It''s a large dataset of CSV files of quality metrics computed over various open-source Java projects. Here we see the lucene data file  within the JIRA project.

[GH repo](https://github.com/awsm-research/Large-Defect-Prediction-Benchmark)
'>
<demo:
'- Navigate within JIRA to the first lucene dataset.
'>
	^ aSlide labelAndElement
		setPriority;
		newFadedText: 'Large Defect Prediction Benchmark';
		element: [ (GtPager
				createWrappedOn: (GtInspector forObject: LargeDefectPredictionBenchmarkExample new repoFolder))
				maximized ]
]

{ #category : #slides }
Gt4Research >> explainableLudo: aSlide [
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
Gt4Research >> explainableSystems: aSlide [
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
Gt4Research >> githubExample: aSlide [
	<gtSlide>
	<text:
'# Example: Exploring the GitHub REST API

Here''s a second example where the software data is obtained through a REST API.

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
Gt4Research >> githubFeenkOrgJSon: aSlide [
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
Gt4Research >> githubFeenkOrgWrapped: aSlide [
	<gtSlide>
	<text:
'## The feenk GitHub organization JSON as a wrapped, moldable  object

After a few iterations we enrich the GitHub organization model with several more entities and views, according to whatever interests us.
'>
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
Gt4Research >> githubOrgDemoPage [
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

{ #category : #page }
Gt4Research >> githubOrgDemoPage: aSlide [
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

{ #category : #slides }
Gt4Research >> gtBookLinksMondrian: aSlide [
	<gtSlide>
	<text:
'## A Mondrian reachability graph of pages in the GT book

Mondrian is a builder for graph-based visualizations.

Here we see a visualization of the notebook pages in the book itself that are reachable by following links contrasted with standalone pages. The nodes and edges are live, so you can navigate to other domain entities.

NB: The FCA lattice we saw earlier was also built with Mondrian.'>
	^ aSlide labelAndElement
		setPriority;
		newFadedText: 'A Mondrian reachability graph of pages in the GT book';
		element: [ (GtPager
				createWrappedOn: (GtInspector forObject: PatternScripterExamples new gtBookLinksMondrian))
				maximized ]
]

{ #category : #slides }
Gt4Research >> gtToolingTreemap: aSlide [
	<gtSlide>
	<text:
'## A Treemap of packages with custom views and examples

Custom tools are pervasive. This visualization shows a treemap of packages and classes in the current image. Blue classes have at least one custom view and green ones have at least one example. This shows that custom tools were  heavily used to build the moldable development environment itself.

Here at the top left we see `BlElement`, the root of the graphical hierarchy.'>
<demo: '- Click on the top-left class (BlElement)'>
	^ aSlide labelAndElement
		setPriority;
		newFadedText: 'A Treemap of packages with custom views and examples';
		element: [ (GtPager createWrappedOn: GtTour new treemapWithViewsAndExamples) maximized ]
]

{ #category : #slides }
Gt4Research >> gtTools: aSlide [
	<gtSlide>
	<text:
'# GT includes numerous R&D tools

We''ve already seen many examples of custom inspector views. The coder editor and even the debugger are similarly moldable. We''ve also see a few examples of notebook pages with code snippets, and we''ve seen live examples embedded in these slides.
'>
	^ aSlide paragraph
		setPriority;
		subtitleWithFormat: (self asSubtitle: 'GT includes numerous R&D tools:');
		paragraphWithFormat: (self
				asText: 
'

• Moldable Inspector, Code editor and Debugger
• Live notebook knowledge base
• Language workbenches
• Visualization tools
• ...
')
]

{ #category : #slides }
Gt4Research >> lexiconExample: aSlide [
	<gtSlide>
	<text:
'## A lexicon file

An interesting aspect of the atproto is that records, event stream messages and endpoints are meta-described as so-called “lexicon” files. Here we see the JSON record for a Bluesky account profile.'>
	^ aSlide labelAndElement
		setPriority;
		newFadedText: 'A lexicon file';
		element: [ self lexiconProfileExtract gtJSONFor: GtPhlowProtoView new ]
]

{ #category : #slides }
Gt4Research >> lexiconGeneratedClass: aSlide [
	<gtSlide>
	<text:
'## Code generated from a lexicon

Now, instead of manually coding the wrappers for the domain entities, we can apply model-driven engineering to generate many of these classes from the lexicons. Here we see the generated class for a user profile. Custom views can then be added to the generated classes as extensions defined in traits.'>

	^ aSlide labelAndElement
		setPriority;
		newFadedText: 'Code generated from a lexicon';
		element: [ (GtCoderElement forClass: AppBskyActorProfileMain) createInPager maximized ]
]

{ #category : #example }
Gt4Research >> lexiconProfile [
	<gtExample>
	^ '{
  "lexicon": 1,
  "id": "app.bsky.actor.profile",
  "defs": {
    "main": {
      "type": "record",
      "description": "A declaration of a Bluesky account profile.",
      "key": "literal:self",
      "record": {
        "type": "object",
        "properties": {
          "displayName": {
            "type": "string",
            "maxGraphemes": 64,
            "maxLength": 640
          },
          "description": {
            "type": "string",
            "description": "Free-form profile description text.",
            "maxGraphemes": 256,
            "maxLength": 2560
          },
          "avatar": {
            "type": "blob",
            "description": "Small image to be displayed next to posts from account. AKA, ''profile picture''",
            "accept": ["image/png", "image/jpeg"],
            "maxSize": 1000000
          },
          "banner": {
            "type": "blob",
            "description": "Larger horizontal image to display behind profile view.",
            "accept": ["image/png", "image/jpeg"],
            "maxSize": 1000000
          },
          "labels": {
            "type": "union",
            "description": "Self-label values, specific to the Bluesky application, on the overall account.",
            "refs": ["com.atproto.label.defs#selfLabels"]
          },
          "joinedViaStarterPack": {
            "type": "ref",
            "ref": "com.atproto.repo.strongRef"
          },
          "pinnedPost": {
            "type": "ref",
            "ref": "com.atproto.repo.strongRef"
          },
          "createdAt": { "type": "string", "format": "datetime" }
        }
      }
    }
  }
}
'
]

{ #category : #example }
Gt4Research >> lexiconProfileExtract [
	<gtExample>
	^ '{
  "lexicon": 1,
  "id": "app.bsky.actor.profile",
  "defs": {
    "main": {
      "type": "record",
      "description": "A declaration of a Bluesky account profile.",
      "key": "literal:self",
      "record": {
        "type": "object",
        "properties": {
          "displayName": {
            "type": "string",
            "maxGraphemes": 64,
            "maxLength": 640
          },
          "description": {
            "type": "string",
            "description": "Free-form profile description text.",
            "maxGraphemes": 256,
            "maxLength": 2560
          },
          "avatar": {
            "type": "blob",
            "description": "Small image to be displayed next to posts from account. AKA, ''profile picture''",
            "accept": ["image/png", "image/jpeg"],
            "maxSize": 1000000
          },
          "...": {},
          "createdAt": { "type": "string", "format": "datetime" }
        }
      }
    }
  }
}
'
]

{ #category : #slides }
Gt4Research >> llmTutorExplorer: aSlide [
	<gtSlide>
	<text:
'# Exploring an LLM chat

In this example, we use GT as a platform for managing chats with openAI assistants. We not only want to chat with an assistant, but we want to manage the interactions and mold the experience to obtai useful results.'>
	^ aSlide paragraph
		setPriority;
		subtitleWithFormat: (self asSubtitle: 'Exploring an LLM chat');
		paragraphWithFormat: (self
				asText: 
'

• Managing the chat.
• Molding the interactions.')
]

{ #category : #slides }
Gt4Research >> luceneDataExampleClass: aSlide [
	<gtSlide>
	<text:
'# The Defect Prediction Benchmark example class

Many of the examples we have seen are encapsulated as example methods. These are essentially unit test methods that additionally return the object under test. This is the class containing the examples we have just seen.

When you discover interesting results, the idea is to encapsulate these as example methods so you can easily reproduce the live examples, for documentation or for further research.
'>
		^ aSlide labelAndElement
		setPriority;
		newFadedText: 'The Defect Prediction Benchmark example class';
		element: [ (GtCoderElement forClass: LargeDefectPredictionBenchmarkExample) createInPager maximized ]
]

{ #category : #slides }
Gt4Research >> luceneDefectData: aSlide [
	<gtSlide>
	<text:
'## The Lucene 2.3.0 defect dataset

Here we see the wrapped Lucene 2.3 dataset with an overview showing whether each class contains bugs classified as “real” or “heuristically” identified. We also see the lines of code and complexity of each class. We can dive into a class to see a custom view showing the other metrics.

We have an action to extract just the files flagged as buggy.

We can also apply formal concept analysis to categorize files according to which thresholds selected metrics reach, in this case short, medium or long methods, and low or high complexity. Finally we can visualize the resulting lattice, showing which combinations of properties are most common. For example, low complexity and medium-sized methods are common.

The point of this is not to show you that we discovered something new about the dataset, but rather  that we can use moldable development to structure the research methodology and carry out experiments.'>
<demo:
'- Click on a file to see its metrics.
- Click the buggy action to see just the buggy files.
- Click the FCA action.
- Show the Properties view.
- Show the lattice.
- Click on a large concept to see the details.
'>
	^ aSlide labelAndElement
		setPriority;
		newFadedText: 'The Lucene 2.3.0 defect dataset';
		element: [ (GtPager
				createWrappedOn: (GtInspector forObject: LargeDefectPredictionBenchmarkExample new lucene230Dataset))
				maximized ]
]

{ #category : #slides }
Gt4Research >> mdForResearch: aSlide [
	<gtSlide>
	<text:
'# Moldable Development as a Research Methodology

To sum up, moldable development is an approach to making software systems explainable by making their domain models accessible, and augmenting  them with inexpensive analysis tools.

The moldable development methodology is to iteratively model and explore software data, adding custom analysis tools as you explore.

The GT platform is open source and we host a thriving community on Discord.

Thanks for listening.'>
	^ aSlide paragraph
		setPriority;
		subtitleWithFormat: (self asSubtitle: 'Moldable Development as a Research Methodology');
		paragraphWithFormat: (self
				asText: 
'

• Pose questions
• Gather information (explore software data)
• Form hypotheses (build models)
• Run experiments (mold custom tools)
• Consolidate new knowledge (extract examples)

'), (self
				asText: 
'Go to:') italic, (self
				asText: 
' gtoolkit.com') glamorousCodeFont
]

{ #category : #slides }
Gt4Research >> moldableDevelopment: aSlide [
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
Gt4Research >> moreOpaqueness: aSlide [
	<gtSlide>
	<text:
'## Opaqueness

Other means of understanding opaque systems are also commonly ineffective.

Reading source code does not scale to large systems. Documentation is typically incomplete, out of date, and inconsistent with the current implementation. Googling or using online resources typically yields many false positives, as do off-the-shelf analysis tools or generative AI tools.'>
	^ aSlide paragraph
		setPriority;
		subtitleWithFormat: (self asSubtitle: 'Inadequate means to understand software');
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
Gt4Research >> placeholder: aSlide [
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
Gt4Research >> postMessageTutor: aSlide [
	<gtSlide>
	<text:
'## A social media post tutor

In this example, we want help from an openAI assistant to check the grammar of social media posts. We don''t just want it to correct the results, but want to be able to vet and control the answers it proposes.

Here''s a snippet containing a draft post we would like to check. We create a so-called “tutor” that knows the snippet and manages the chat with the openAI assistant. A tutor not only can talk to an AI, but it can send it *instructions*. The instructions in particular introduce the domain of social media posts.

This tutor knows the default chat action but also the specific ones to create a title or to correct grammar.

Now let''s start a chat and ask the AI to correct the grammar. With a normal chat we would just get the correct text back. Here instead we get a result with a Diff view, which is more useful. This is just a simple custom view defined on the message itself.

If we like the proposal, we can accept the change with a custom action.'>
<demo:
'- Grab the snippet.
- Inspect the tutor.
- Show the Instructions with the Post component.
- Show the Actions.
- Start a chat.
- Request it to correct the grammar.
- Show the diff view.
- Inspect the message and see the diff view comes from the message, with an extra annotation.
- Accept the change and show the snippet update.
'>
	^ aSlide lepiterPage
		setPriority;
		startPage: (self db pageNamed: 'A social media post tutor')


]

{ #category : #page }
Gt4Research >> postMessageTutorPage [
	<lePage>
	<gtExample>
	<noTest>
	^ (LePage named: 'A social media post tutor')
	addSnippet: (LeTextSnippet new
			string: '# A sample social media post:';
			addSnippet: (LeTextSnippet new
					string: 'Moldable development supports decision-making by making software systems explainable. This is done by making it cheap to add numerous custom tools to your software, turning it into a live, explorable domain model. Based on several years of experience of applying moldable development to both open-source and industrial systems, we have identified several mutually supporting patterns to explain how moldable development works in practice.

These patterns target (i) readers curious to learn about moldable development, (ii) current users of the Glamorous Toolkit moldable IDE wanting to learn best practices, and (iii) developers interested in applying moldable development using other platforms and technology.';
					yourself);
			addSnippet: (LePharoSnippet new
					code: 'snippetForAnalysis := thisSnippet previousSibling.';
					yourself);
			yourself);
	addSnippet: (LeTextSnippet new
			string: '# A “tutor” to check the grammar of the post:';
			addSnippet: (LePharoSnippet new
					code: 'demoTutor := GtDPostTutor 
	forSnippet: snippetForAnalysis.';
					yourself);
			addSnippet: (LePharoSnippet new
					code: 'demoChat := demoTutor createAssistant addChat.';
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
	addSnippet: (LeTextSnippet new
			string: '';
			yourself);
	yourself
]

{ #category : #slides }
Gt4Research >> runningSystem: aSlide [
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

{ #category : #slides }
Gt4Research >> simpleChat: aSlide [
	<gtSlide>
	<text:
'## A simple chat

We can connect to an openAI assistant, and carry out a simple conversation. But this is not very interesting. We really want to control the whole experience. '>
	^ aSlide lepiterPage
		setPriority;
		startPage: (self db pageNamed: 'A simple chat')
]

{ #category : #page }
Gt4Research >> simpleChatPage [
	<lePage>
	<gtExample>
	<noTest>
	^ (LePage named: 'A simple chat')
	addSnippet: (LePharoSnippet new
			code: 'chat := GtOpenAIChat withApiKeyFromFile.';
			yourself);
	addSnippet: (LePharoSnippet new
			code: 'chat sendMessage: ''Can you please briefly explain moldable development?''';
			yourself);
	yourself
]

{ #category : #accessing }
Gt4Research >> slidePriorities [
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

			
		blueSkyExplorer:
			blueSkyUser:
			lexiconExample:
			lexiconGeneratedClass:
		
		llmTutorExplorer:
			simpleChat:
			postMessageTutor:
		
		defectPredictionBenchmark:
			luceneDefectData:
			luceneDataExampleClass:
		
		gtTools:
			smaccPage:
			splFactorial:
			gtBookLinksMondrian:
			gtToolingTreemap:
		
		mdForResearch:
		summarySlide:
	)
]

{ #category : #slides }
Gt4Research >> smaccPage: aSlide [
	<gtSlide>
	<text:
'## SmaCC

SmaCC is a modern parsing engine supporting a variety of parsing strategies.

Here we see a GT notebook page explaining how to query the ASTs produced by SmaCC, with the help of a live, embedded example of JavaScript code and its AST.'>
	^ aSlide labelAndElement
		setPriority;
		newFadedText: 'SmaCC parsing engine';
		element: [ (GtPager
				createWrappedOn: (LePagePhlowTool
						page: (self gtBook pageNamed: 'Querying SmaCC abstract syntax trees (ASTs)')))
				maximized ]
]

{ #category : #slides }
Gt4Research >> splFactorial: aSlide [
	<gtSlide>
	<text:
'## A small step interpreter built with PetitParser

PetitParser, on the other hand is a parser combinator framework that supports island parsing, which is useful for extract selected information from source or data files.

In this example we use PetitParser to produce a small-step semantics interpreter by transforming the ASTs of a program and its continuations.'>
<demo:
'- Show some execution steps.
- Run to the end.
- Walk through the resulting history, with the AST view at the right.'>
	^ aSlide labelAndElement
		setPriority;
		newFadedText: 'A small step interpreter built with PetitParser';
		element: [ (GtPager
				createWrappedOn: (GtInspector forObject: SPLContextExamples new factorial))
				maximized ]
]

{ #category : #slides }
Gt4Research >> summarySlide: aSlide [
	<gtSlide>
	<text:
'# Summary'>
	| slideSelectors |
	slideSelectors := #(
		explainableSystems:
		moldableDevelopment:
		gtTools:
		mdForResearch:).
	^ aSlide labelAndElement
		setPriority;
		newFadedText: 'Summary';
		element: [ self summaryElementFor: slideSelectors ]
]

{ #category : #slides }
Gt4Research >> title: aSlide [
	<gtSlide>
	<text:
'# GT: A Moldable Research Platform

Hi. My name is Oscar Nierstrasz.

Today I''d like to show you Glamorous Toolkit (or GT), an open-source environment for “Moldable Development”, and how it can be used as a platform for carrying out research.

First I''ll show you how GT can be used to make software systems explainable by exposing their domain models, and augmenting domain entities with lightweight, custom analysis tools.

Then, through a series of examples, I''ll show you how GT can be used as a platform to pose research questions, explore models, carry out experiments, and capture acquired knowledge through live examples.'>

	^ aSlide titleWithFooters
		setPriority;
		titleBottomPadding: 40;
		subtitleBottomPadding: 40;
		titleWithFormat: (self asTitle: 'GT: A Moldable Research Platform');
		subtitleWithFormat: (self asSubtitle: '');
		newFooterWithFormat: (self asBigText: 'oscar.nierstrasz@feenk.com')
]
