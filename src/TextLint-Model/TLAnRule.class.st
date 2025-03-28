Class {
	#name : 'TLAnRule',
	#superclass : 'TLPatternRule',
	#category : 'TextLint-Model-Rules',
	#package : 'TextLint-Model',
	#tag : 'Rules'
}

{ #category : 'private' }
TLAnRule >> exceptions [
	^ #('honorable' 'honest' 'hour' 'xml' 'hybrid' 'html' 'http')
]

{ #category : 'accessing' }
TLAnRule >> matchingPattern [
	^ (self word: 'an') , (self separators) , (self wordIn: self exceptions) not , (self wordTextSatisfying: [ :value | value first isVowel not ])
]

{ #category : 'accessing' }
TLAnRule >> name [
	^ 'Avoid "an"'
]

{ #category : 'accessing' }
TLAnRule >> rationale [
	^ 'After "an" only words beginning with a vowel are allowed.'
]
