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
	<text: 
'##A chat with structured output

In this example we instruct the chat to provide a structured response as markdown. We also provide it a Lepiter page from the GT book with instructions on how to rewrite code, and we extend the the markdown response format with the format for rewrite snippets.

Now when we send the request we get a much more useful response. The answer comes as a markdown response with a rewrite snippet that we can evaluate, and the evaluation response is in the form of a set of refactorings that we can explore before applying them.

We can dive more deeply into the chat to understand how it works. We can see the messages that have been sent. If we look at the Instructions view, and compare it to the original Lepiter page, we see that the example snippets have been rewritten to scripts that can be evaluated. This is a more convenient form for LLMs to process.

We can also dive into the Provider to see how the structured interactions are specified. We see that both the request and response formats are specified as JSON.'>
<demo:
'- Expand the gtPageExplanation to show the instructions.
- Run the chat.
- Run the search snippet and explore the result.
- Run the rewrite rule and explore the resulting refactorings.
- Explore the Messages view.
- Explore the Instructions view, while opening the gtPageExplanation page at the left.
- Switch to the Inspector view of the chat, and click on the Provider button.
- Click on the first item in the API calls and tokens list.
- Explore the Request JSON and Response JSON views of the GtLRequestResponse instance.
'>
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
	<text:
'##Exploiting views

Interestingly, we can also provide views to be consumed by a chat. Here we ask the LLM to produce an icon of a home, and we ask it to evaluate the result. This is made possible by first storing the resulting icon object, and then providing a live view that the LLM can read.

Now we can even ask the LLM to review the icon and produce a better version.'>
<demo:
'- Run the example.
- Explore the result.
- Expand the messages list and inspect the smalltalkCodeEvaluation and getViewContent messages.
- Run the improvement script.'>
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
	<text:
'##Generating code

A typical application of LLMs is to generate code, but the explanations of how the code generation works are generally high-level text summaries without technical details.

If we run this example, we not only get the BubbleSorter and BubbleSorterExamples classes, but we can see which tools have been used to generate the code.

How does this work? In this example we have provided the chat not only with instructions, but we have also given it a set of tools to use. There are tools for searching code, searching Lepiter pages, changing code, changing pages, running examples, and evaluating code. 

By the way, we can also run a new chat on the chat instance to get an explanation.'>
<demo:
'- Run the example.
- Inspect the bubble sorter class and the examples, and run them.
- Go to the Messages view and explore the steps.
- Expand GtLTools gt and expand each of the tool sets.
- From the Inspector hamburger menu, run Chat about this object.'>
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
	<text:
'##A simple chat

Consider this typical chat where we ask an LLM to generate code to remove leftover `self halt` statements from code. The chat is an object with views. We have a dedicated tool view, but we can also inspect the object directly.

This result is typical for such chats: it looks ok, but it''s not very useful, and we can''t tell if it''s correct. How can we do better?'>
<demo:
'- Run the example.
- Switch between the Tool and Inspector tools.'>
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
		summaryChat:
		)	
]

{ #category : 'page' }
MoldingChatsSlideshow >> summaryChat [
	<lePage>
	<gtExample>
	<noTest>
	^ (LePage named: 'Summary chat')
	addSnippet: (LeTextSnippet new
			string: 'A summary of this demo:';
			yourself);
	addSnippet: (LePharoSnippet new
			code: 'c := GtL gt
	sendMarkdown: ''Read the {{gtClass:MoldingChatsSlideshow}} slideshow class and produce a short bullet list summarizing the key takeaway messages. Produce no more than five bullets, and a maximum of twelve words per bullet point.''';
			yourself);
	yourself
]

{ #category : 'slides' }
MoldingChatsSlideshow >> summaryChat: aSlide [
	<gtSlide>
	<text:
'##Summary chat

Finally, because we are lazy, we can ask an LLM to summarize this demo.'>
	^ aSlide lepiterPage
		setPriority;
		startPage: (self database pageNamed: 'Summary chat')
]

{ #category : 'slides' }
MoldingChatsSlideshow >> title: aSlide [
	<gtSlide>
	<text:
'#Molding Chats

Hi. I''d like to show you a quick demo of how moldable development can make the experience of working with an LLM more understandable and controllable. The key idea is simply to turn every aspect of interacting with an LLM into a moldable object with its own dedicated tools and views.'>
	^ aSlide title
		setPriority;
		titleBottomPadding: 30;
		titleWithFormat: (self asTitle: 'Molding Chats');
		subtitleWithFormat: (self asBigText: 'oscar.nierstrasz@feenk.com')
]
