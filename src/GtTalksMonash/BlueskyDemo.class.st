"
A Facade to simplify querying the Bluesky API.
We assume that login credentials are in the `secretsFile` as a JSON that looks like this:

{
	""username"" : ""onierstrasz"",
	""handle"" : ""onierstrasz.bsky.social"",
	""password"" : ""...""
}

"
Class {
	#name : #BlueskyDemo,
	#superclass : #Object,
	#instVars : [
		'client'
	],
	#category : #'GtTalksMonash-Bluesky'
}

{ #category : #accessing }
BlueskyDemo class >> actor [
]

{ #category : #accessing }
BlueskyDemo >> actor [
	^ self actorFor: self handle
]

{ #category : #accessing }
BlueskyDemo >> actorFor: aHandle [
	^ (self client appBskyActorGetProfileActor: aHandle) client: self client
]

{ #category : #initialization }
BlueskyDemo >> blueskySecrets [
	self assert: self secretsFile exists.
	^ STON fromString: self secretsFile contents
]

{ #category : #accessing }
BlueskyDemo >> client [
	client
		ifNil: [ client := GtApGeneratedClient onServer: self pdsUrl.
			client loginUser: self handle withPass: self password ].
	^ client
]

{ #category : #initialization }
BlueskyDemo >> handle [
	^ self blueskySecrets at: 'handle'
]

{ #category : #initialization }
BlueskyDemo >> password [
	^ self blueskySecrets at: 'password'
]

{ #category : #constant }
BlueskyDemo >> pdsUrl [
	^ 'https://bsky.social'
]

{ #category : #constant }
BlueskyDemo >> secretsFile [
	^ FileLocator home / '.secrets/bluesky.txt'
]

{ #category : #accessing }
BlueskyDemo >> username [
	^ self blueskySecrets at: 'username'
]