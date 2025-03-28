Class {
	#name : 'TLARule',
	#superclass : 'TLPatternRule',
	#category : 'TextLint-Model-Rules',
	#package : 'TextLint-Model',
	#tag : 'Rules'
}

{ #category : 'private' }
TLARule >> exceptions [
	^ #('union' 'united' 'unified' 'unifying' 'us' 'one' 'unit' 'user' 'usage' 'universal' 'unique' 'unit' 'useful' 'uniform')
]

{ #category : 'accessing' }
TLARule >> matchingPattern [
	^ (self word: 'a') , (self separators) , (self wordIn: self exceptions) not , (self wordTextSatisfying: [ :value | value first isVowel ])
]

{ #category : 'accessing' }
TLARule >> name [
	^ 'Avoid "a"'
]

{ #category : 'accessing' }
TLARule >> rationale [
	^ 'After "a" only words beginning without a vowel are allowed.'
]
