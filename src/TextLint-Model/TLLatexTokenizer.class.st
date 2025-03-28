Class {
	#name : 'TLLatexTokenizer',
	#superclass : 'TLPlainTokenizer',
	#category : 'TextLint-Model-Parser',
	#package : 'TextLint-Model',
	#tag : 'Parser'
}

{ #category : 'testing' }
TLLatexTokenizer class >> canTokenize: aString [
	^ #('\documentclass' '\usepackage' '\section' '\begin{') anySatisfy: [ :each | aString includesSubstring: each caseSensitive: false ]
]

{ #category : 'private' }
TLLatexTokenizer >> consumeCommand: aStream [
	| counter char |
	('{[' includes: aStream peek)
		ifFalse: [ ^ self ].
	counter := 0.
	[	char := aStream next.
		(char = ${ or: [ char = $[ ])
			ifTrue: [ counter := counter + 1 ]
			ifFalse: [ 
				(char = $} or: [ char = $] ])
					ifTrue: [ counter := counter - 1 ] ].
		aStream atEnd or: [ counter = 0 ] ] whileFalse.
	self consumeCommand: aStream
]

{ #category : 'private' }
TLLatexTokenizer >> consumeEnvironment: aStream [
	aStream upToAll: '\end{' , (aStream upTo: $}) , '}'
]

{ #category : 'configuration' }
TLLatexTokenizer >> ignoredCommands [
	^ #('begin' 'bibliography' 'bibliographystyle' 'cite' 'documentclass' 'end' 'hspace' 'hypersetup' 'index' 'label' 'lstset' 'newcommand' 'newenviornment' 'renewcommand' 'usepackage' 'vspace') asChoiceParser
]

{ #category : 'configuration' }
TLLatexTokenizer >> ignoredEnvironments [
	^ #('lstlisting' 'figure' 'table') asChoiceParser
]

{ #category : 'tokens' }
TLLatexTokenizer >> markup [
	^ ((PPPredicateObjectParser anyOf: '{}[]`-')
	/  ('\begin{' asParser , self ignoredEnvironments and , [ :stream | self consumeEnvironment: stream ] asParser)
	/  ($\ asParser , self ignoredCommands , [ :stream | self consumeCommand: stream ] asParser)
	/  ($\ asParser , #any asParser , #word asParser star)
	/  ($$ asParser , $$ asParser negate star , $$ asParser)
	/  ($% asParser , #newline asParser negate star))
			token ==> [ :token | TLMarkup with: token ]
]

{ #category : 'tokens' }
TLLatexTokenizer >> punctuationGroups [
	^ super punctuationGroups / '``' asParser / '''''' asParser / '---' asParser / '--' asParser
]
