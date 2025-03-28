Class {
	#name : 'TLTextParserTest',
	#superclass : 'TestCase',
	#category : 'TextLint-Tests-Parser',
	#package : 'TextLint-Tests',
	#tag : 'Parser'
}

{ #category : 'testing' }
TLTextParserTest >> expectedFailures [
	^ #(testIENotASentence)
]

{ #category : 'utilities' }
TLTextParserTest >> parse: aString [
	^ self parse: aString tokenizer: TLPlainTokenizer
]

{ #category : 'utilities' }
TLTextParserTest >> parse: aString tokenizer: aClass [
	| document |
	document := TLTextPhraser
		parse: (aClass parse: aString)
		onError: [ :err | self error: err printString ].
	self
		assert: document text = aString
		description: 'Parse invariant not satisfied'.
	self
		assert: (document printString includesSubString: aString)
		description: 'Document print string should include its contents'.
	self 
		assert: (aString copyFrom: document start to: document stop) = aString
		description: 'Invalid start/stop of document'.
	document paragraphs do: [ :each |
		self 
			assert: (aString copyFrom: each start to: each stop) = each text
			description: 'Invalid start/stop of paragraph' ].
	document sentences do: [ :each |
		self 
			assert: (aString copyFrom: each start to: each stop) = each text
			description: 'Invalid start/stop of sentence' ].
	document words do: [ :each |
		self 
			assert: (aString copyFrom: each start to: each stop) = each text
			description: 'Invalid start/stop of word' ].
	^ document
]

{ #category : 'test' }
TLTextParserTest >> testAllCharacters [
	| document |
	document := self parse: (String withAll: Character allByteCharacters).

	self assert: document paragraphs size = 1.
	self assert: document sentences size = 6.
	self assert: document words size = 9
]

{ #category : 'test' }
TLTextParserTest >> testDeformedParagraphs [
	| document |
	document := self parse: 'text1

text2'.

	self assert: document paragraphs size = 2.
	self assert: document sentences size = 2.
	self assert: document words size = 2.
	self assert: document words first text = 'text1'.
	self assert: document words second text = 'text2'
]

{ #category : 'test' }
TLTextParserTest >> testHtmlTokenziation [
	| document |
	document := self parse: '<h1>Hello&nbsp;World</h1>' tokenizer: TLHtmlTokenizer.

	self assert: document paragraphs size = 1.
	self assert: document sentences size = 1.
	self assert: document words size = 2.
	self assert: document words first text = 'Hello'.
	self assert: document words second text = 'World'
]

{ #category : 'test' }
TLTextParserTest >> testIENotASentence [
	| document |
	document := self parse: 'We have written a paper, i.e., typing latex'.

	self assert: document sentences size equals: 1.
]

{ #category : 'test' }
TLTextParserTest >> testLatexCommandTokenziation [
	| document |
	document := self parse: '\newcommand[something]{else}
	common' tokenizer: TLLatexTokenizer.

	self assert: document paragraphs size = 1.
	self assert: document sentences size = 1.
	self assert: document words size = 1.
	self assert: document words first text = 'common'
]

{ #category : 'test' }
TLTextParserTest >> testLatexListingTokenziation [
	| document |
	document := self parse: '\begin{lstlisting}fucking morron\end{lstlisting}
\emph{common}' tokenizer: TLLatexTokenizer.

	self assert: document paragraphs size = 1.
	self assert: document sentences size = 1.
	self assert: document words size = 1.
	self assert: document words first text = 'common'
]

{ #category : 'test' }
TLTextParserTest >> testLatexMath [
	| document |
	document := self parse: 'a $1 + 2$ formula' tokenizer: TLLatexTokenizer.
	
	self assert: document paragraphs size = 1.
	self assert: document sentences size = 1.
	self assert: document words size = 2.
	self assert: document words first text = 'a'.
	self assert: document words second text = 'formula'
]

{ #category : 'test' }
TLTextParserTest >> testLatexTokenziation [
	| document |
	document := self parse: '\foo\bar{Hello World}' tokenizer: TLLatexTokenizer.

	self assert: document paragraphs size = 1.
	self assert: document sentences size = 1.
	self assert: document words size = 2.
	self assert: document words first text = 'Hello'.
	self assert: document words second text = 'World'
]

{ #category : 'test' }
TLTextParserTest >> testLatexTokenziation2 [
	| document |
	document := self parse: 'an \ct{AnyOfSetPattern}' tokenizer: TLLatexTokenizer.

	self assert: document paragraphs size = 1.
	self assert: document sentences size = 1.
	self assert: document words size = 2.
	self assert: document words first text = 'an'.
	self assert: document words second text = 'AnyOfSetPattern'
]

{ #category : 'test' }
TLTextParserTest >> testLongParagraph [
	| document |
	document := self parse: 'A conventional language and development environment should be leveraged as the host instead of introducing a new or derived one. Furthermore embedded languages should not suffer from an additional interpretation layer, but instead run at the same level as the host language. This avoids compatibility problem with existing code, and performance impact of embedded code.'.

	self assert: document paragraphs size = 1.
	self assert: document sentences size = 3.
	self assert: document words size = 55.
	self assert: document words first text = 'A'.
	self assert: document words last text = 'code'
]

{ #category : 'test' }
TLTextParserTest >> testSimpleSentence [
	| document |
	document := self parse: 'text1 text2.'.

	self assert: document text = 'text1 text2.'.	
	self assert: document paragraphs size = 1.
	self assert: document sentences size = 1.
	self assert: document words size = 2.
	self assert: document words first text = 'text1'.
	self assert: document words second text = 'text2'.
]

{ #category : 'test' }
TLTextParserTest >> testTextWithPunctuationMarks [
	| document |
	document := self parse: 'text1, hal ! text2.'.

	self assert: document paragraphs size = 1.
	self assert: document sentences size = 2.
	self assert: document words size = 3.
	self assert: document words first text = 'text1'.
	self assert: document words second text = 'hal'.
	self assert: document words last text = 'text2'.
]

{ #category : 'test' }
TLTextParserTest >> testTwoParagraphs [
	| document |
	document := self parse: 'text1 text2. 
	
text.'.

	self assert: document paragraphs size = 2.
	self assert: document sentences size = 2.
	self assert: document words size = 3.
	self assert: document words first text = 'text1'.
	self assert: document words second text = 'text2'.
	self assert: document words last text = 'text'
]
