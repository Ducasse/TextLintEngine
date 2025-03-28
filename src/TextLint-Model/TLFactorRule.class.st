Class {
	#name : 'TLFactorRule',
	#superclass : 'TLPatternRule',
	#category : 'TextLint-Model-Rules',
	#package : 'TextLint-Model',
	#tag : 'Rules'
}

{ #category : 'accessing' }
TLFactorRule >> matchingString [
	^ 'factor'

]

{ #category : 'accessing' }
TLFactorRule >> name [
	^ 'Avoid "factor"'
]

{ #category : 'accessing' }
TLFactorRule >> rationale [
	^ 'A hackneyed word. The expression can be rephased without it.'
]
