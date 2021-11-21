#pragma once

// Header Files
#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <stdbool.h>

// Macro Definitions
#define BYTE_SIZE 8
#define BOOL_HIGH 1
#define BOOL_LOW 0

// Data Implementations
struct node{
	int node_data;

	struct node *nextNode;
};

// Function Implementations
/*
Name: 
Process: 
Method Input: 
Method Output(parameters): 
Method Output(returned): 
Device Input: 
Device Output: 
Dependencies: 
*/
int getRandBool();

/*
Name: 
Process: 
Method Input: 
Method Output(parameters): 
Method Output(returned): 
Device Input: 
Device Output: 
Dependencies: 
*/
struct node *generateByte(struct node *headNode);

/*
Name: 
Process: 
Method Input: 
Method Output(parameters): 
Method Output(returned): 
Device Input: 
Device Output: 
Dependencies: 
*/
struct node *mungeByte(struct node *headNode);

/*
Name: 
Process: 
Method Input: 
Method Output(parameters): 
Method Output(returned): 
Device Input: 
Device Output: 
Dependencies: 
*/
void printByte(struct node *headNode);

/*
Name: 
Process: 
Method Input: 
Method Output(parameters): 
Method Output(returned): 
Device Input: 
Device Output: 
Dependencies: 
*/
bool clearByte(struct node *headNode);

/*
Name: 
Process: 
Method Input: 
Method Output(parameters): 
Method Output(returned): 
Device Input: 
Device Output: 
Dependencies: 
*/
long byteToDecimal(struct node *headNode);
