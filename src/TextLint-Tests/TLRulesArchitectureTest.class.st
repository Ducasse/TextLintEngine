Class {
	#name : 'TLRulesArchitectureTest',
	#superclass : 'TestCase',
	#category : 'TextLint-Tests-Parser',
	#package : 'TextLint-Tests',
	#tag : 'Parser'
}

{ #category : 'test' }
TLRulesArchitectureTest >> testName [
	TLTextLintRule allRules do: [ :rule | 
		self assert: rule name ~= rule class name.
		self assert: rule name isString.
		self assert: rule name isEmpty not.
		self assert: rule name size < 40 ]
]

{ #category : 'test' }
TLRulesArchitectureTest >> testPattern [
	| matchingPattern matchingString |
	TLPatternRule allRules do: [ :rule |
		matchingPattern := (rule class whichClassIncludesSelector: #matchingPattern)
			= TLPatternRule.
		matchingString := (rule class whichClassIncludesSelector: #matchingString)
			= TLPatternRule.
		self assert: (matchingPattern or: [ matchingString ]).
		self deny: (matchingPattern and: [ matchingString ]) ]
]

{ #category : 'test' }
TLRulesArchitectureTest >> testRationale [
	TLTextLintRule allRules do: [ :rule | 
		self assert: rule rationale ~= rule name.
		self assert: rule rationale isString.
		self assert: rule rationale isEmpty not.
		self assert: rule rationale last = $..
		self assert: rule rationale size < 160 ]
]
