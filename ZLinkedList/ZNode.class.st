"
I am a node in a singly linked list.
"
Class {
	#name : #ZNode,
	#superclass : #Object,
	#instVars : [
		'val',
		'next'
	],
	#category : #ZLinkedList
}

{ #category : #initialization }
ZNode class >> withVal: aVal [
	| node |
	node := self new.
	node val: aVal.
	^ node. 
	
]

{ #category : #initialization }
ZNode >> initialize [
	val := nil.
	next := nil.
]

{ #category : #accessing }
ZNode >> next [
	^ next.
]

{ #category : #initialization }
ZNode >> next: aNode [
	next := aNode.
]

{ #category : #accessing }
ZNode >> val [
	^ val.
]

{ #category : #initialization }
ZNode >> val: aVal [
	val := aVal.
]
