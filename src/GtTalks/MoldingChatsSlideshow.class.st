"
For the [Smalltalk Meetup Zurich](https://zurich.smalltalk.world) on 2026-04-26.
"
Class {
	#name : 'MoldingChatsSlideshow',
	#superclass : 'PrioritySlideshow',
	#category : 'GtTalks-Slideshows',
	#package : 'GtTalks',
	#tag : 'Slideshows'
}

{ #category : 'page' }
MoldingChatsSlideshow >> chatWithMarkdownResponsePage [
	<lePage>
	<gtExample>
	<noTest>
	^ (LePage named: 'A chat with structured output')
	addSnippet: (LeTextSnippet new
			string: 'A chat with a Lepiter page with examples as instructions, and output combining markdown and rewrite snippets.';
			yourself);
	addSnippet: (LePharoSnippet new
			code: 'chat := GtLChat new
		markdownResponse;
		gtPageExplanation: ''Rewriting Pharo code by example'';
		addResponseFormatForMagritte: GtLRewriteRule named: ''RewriteRule'';
		sendMarkdown: ''Provide the rewrite rule for removing all `self halt` statements from methods.''';
			yourself);
	yourself
]

{ #category : 'slides' }
MoldingChatsSlideshow >> chatWithMarkdownResponsePage: aSlide [
	<gtSlide>
	<text: 'A chat with structured output'>
	^ aSlide lepiterPage
		setPriority;
		startPage: (self database pageNamed: 'A chat with structured output')
]

{ #category : 'page' }
MoldingChatsSlideshow >> exploitingViewsPage [
	<lePage>
	<gtExample>
	<noTest>
	^ (LePage named: 'Exploiting views')
	addSnippet: (LeTextSnippet new
			string: 'A chat that can see the result of the code it produces.';
			yourself);
	addSnippet: (LePharoSnippet new
			code: 'c := GtL gt
	sendMarkdown: ''Produce a script that builds an 16x16 element with icon that shows a simple home. Take as blueprint for the script, the icon defined in {{gtMethod:BrGlamorousVectorIcons class>>chat}} which uses {{gtClass:BlPolygonGeometry}}. Execute the code. Evaluate the result by viewing the Live view of the resulting object. Give a grade of the result.''';
			yourself);
	addSnippet: (LePharoSnippet new
			code: 'c sendMarkdown: ''Improve it to get a higher grade.''';
			yourself);
	yourself
]

{ #category : 'slides' }
MoldingChatsSlideshow >> exploitingViewsPage: aSlide [
	<gtSlide>
	<text: 'Exploiting views'>
	^ aSlide lepiterPage
		setPriority;
		startPage: (self database pageNamed: 'Exploiting views')
]

{ #category : 'page' }
MoldingChatsSlideshow >> generatingCodePage [
	<lePage>
	<gtExample>
	<noTest>
	^ (LePage named: 'Generating code')
	addSnippet: (LeTextSnippet new
			string: 'A chat using a collection of GT tools to generate code.';
			yourself);
	addSnippet: (LePharoSnippet new
			code: 'chat := GtLChat new
		markdownResponse;
		tools: GtLTools gt;
		gtPageExplanation: ''Examples by example'';
		sendMarkdown: ''Create a BubbleSorter class that implements bubblesort. Create examples for it. Ensure that the examples are green.''';
			yourself);
	yourself
]

{ #category : 'slides' }
MoldingChatsSlideshow >> generatingCodePage: aSlide [
	<gtSlide>
	<text: 'Generating code'>
	^ aSlide lepiterPage
		setPriority;
		startPage: (self database pageNamed: 'Generating code')
]

{ #category : 'page' }
MoldingChatsSlideshow >> simpleChatPage [
	<lePage>
	<gtExample>
	<noTest>
	^ (LePage named: 'A simple chat')
	addSnippet: (LeTextSnippet new
			string: 'A chat with markdown input.';
			yourself);
	addSnippet: (LePharoSnippet new
			code: 'chat := GtLChat new.
chat
	sendMarkdown: ''Provide the rewrite rule for removing all `self halt` statements from methods.''';
			yourself);
	yourself
]

{ #category : 'slides' }
MoldingChatsSlideshow >> simpleChatPage: aSlide [
	<gtSlide>
	<text: 'A simple chat'>
	^ aSlide lepiterPage
		setPriority;
		startPage: (self database pageNamed: 'A simple chat')
]

{ #category : 'acccessing' }
MoldingChatsSlideshow >> slidePriorities [
	<gtExample>
	<return: #Array>
	^ #(
		title:
		simpleChatPage:
		chatWithMarkdownResponsePage:
		generatingCodePage:
		exploitingViewsPage:
		)	
]

{ #category : 'slides' }
MoldingChatsSlideshow >> title: aSlide [
	<gtSlide>
	<text: 
'#Molding Chats'>
	^ aSlide title
		setPriority;
		titleBottomPadding: 30;
		titleWithFormat: (self asTitle: 'Molding Chats');
		subtitleWithFormat: (self asBigText: 'oscar.nierstrasz@feenk.com')	"priority: (self priorityFor: #titleSlideFor:);"
]
