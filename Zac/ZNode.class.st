Class {
	#name : #ZNode,
	#superclass : #Object,
	#instVars : [
		'val',
		'next'
	],
	#category : #Zac
}

{ #category : #'as yet unclassified' }
ZNode class >> withVal: aVal [
	| node |
	node := self new.
	node val: aVal.
	^ node. 
	
]

{ #category : #initialization }
ZNode >> initialize [
	"comment stating purpose of message"
	val := nil.
	next := nil.
]

{ #category : #accessing }
ZNode >> next [
	^ next.
]

{ #category : #initialization }
ZNode >> next: aNode [
	"comment stating purpose of message"

	next := aNode.
]

{ #category : #accessing }
ZNode >> val [
	"comment stating purpose of message"
	^ val.
]

{ #category : #initialization }
ZNode >> val: aVal [
	val := aVal.
]
