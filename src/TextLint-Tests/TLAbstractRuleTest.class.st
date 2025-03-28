"
RBParseTreeRewriter new
	replace: 'words add: (TLWord with: (PPToken on: `@object))' with: 'self createWord: `@object';
	yourself
	
"
Class {
	#name : 'TLAbstractRuleTest',
	#superclass : 'TestCase',
	#instVars : [
		'words',
		'sentences',
		'paragraphs',
		'document'
	],
	#category : 'TextLint-Tests-Rules',
	#package : 'TextLint-Tests',
	#tag : 'Rules'
}

{ #category : 'testing' }
TLAbstractRuleTest class >> isAbstract [
	^ self name = #TLAbstractRuleTest
]

{ #category : 'asserting' }
TLAbstractRuleTest >> assertCorrect [
	self createDocument..
	self assert: self runRule isEmpty
]

{ #category : 'asserting' }
TLAbstractRuleTest >> assertCorrect: aDocumentString [
	|result|
	result := TLTextLintChecker new parse: aDocumentString.
	self deny: result isPetitFailure.
	document := result document.
	self assert: self runRule isEmpty
]

{ #category : 'asserting' }
TLAbstractRuleTest >> assertProblem [
	|results|
	self createDocument.
	results := self runRule.
	self deny: results isEmpty.
	results do: [:r | self assert: r isRuleFailure].
	^ results
]

{ #category : 'asserting' }
TLAbstractRuleTest >> assertProblem: aDocumentString [
	|parseResult checkResult|
	parseResult := TLTextLintChecker new parse: aDocumentString.
	self deny: parseResult isPetitFailure.
	document := parseResult document.
	checkResult := self runRule.
	self deny: checkResult isEmpty.
	checkResult do: [:r | r isPetitFailure].
	^ checkResult
	
]

{ #category : 'private' }
TLAbstractRuleTest >> createDocument [
	document := TLDocument withAll: paragraphs
]

{ #category : 'helpers' }
TLAbstractRuleTest >> createParagraph [
	|paragraph|
	paragraph := paragraphs add: (TLParagraph withAll: sentences).
	sentences := OrderedCollection new.
	^ paragraph
]

{ #category : 'helpers' }
TLAbstractRuleTest >> createSentence [
	|sentence|
	sentence := sentences add: (TLSentence withAll: words).
	words := OrderedCollection new.
	^ sentence
]

{ #category : 'helpers' }
TLAbstractRuleTest >> createWord: aString [
	^ words add: (TLWord with: (PPToken on: aString))
]

{ #category : 'running' }
TLAbstractRuleTest >> ruleUnderTest [
	^ self subclassResponsibility 
]

{ #category : 'private' }
TLAbstractRuleTest >> runRule [
	^ self ruleUnderTest new runOn: document
]

{ #category : 'running' }
TLAbstractRuleTest >> setUp [
	super setUp.
	words := OrderedCollection new.
	sentences := OrderedCollection new.
	paragraphs := OrderedCollection new.
]
