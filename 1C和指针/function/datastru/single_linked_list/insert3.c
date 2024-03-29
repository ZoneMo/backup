/*
** Insert into an ordered, singly linked list.  The arguments are
** a pointer to the first node in the list, and the value to
** insert.
*/
#include <stdlib.h>
#include <stdio.h>
#include "singly_linked_list_node.h"

#define	FALSE	0
#define TRUE	1
/*  
 * 这里 使用指针的指针进行循环 这样便不需要讨论了
 */
int
sll_insert( register Node **linkp, int new_value )
{
	register Node	*current;
	register Node	*new;

	/*
	** Look for the right place by walking down the list
	** until we reach a node whose value is greater than
	** or equal to the new value.
	*/
    //注意这里 使用指针的指针 循环
	while( ( current = *linkp ) != NULL &&
	    current->value < new_value )
		linkp = &current->link;

	/*
	** Allocate a new node and store the new value into it.
	** In this event, we return FALSE.
	*/
	new = (Node *)malloc( sizeof( Node ) );
	if( new == NULL )
		return FALSE;
	new->value = new_value;

	/*
	** Insert the new node into the list, and return TRUE.
	*/
	new->link = current;
	*linkp = new;
	return TRUE;
}
