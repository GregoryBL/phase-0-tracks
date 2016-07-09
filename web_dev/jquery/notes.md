# jQuery notes

## How to research JQuery?

I'll spend a little time learning about what jQuery is and what it does (I've written some jQuery before, so much of this will be refreshing my memory). Then I'll write an overview of important jQuery functions and properties and what they would be used for. As I go I'll test each one. Afterward I'll build a jQuery project to show some of what I've learned.

## Overview

jQuery is a javascript library that makes DOM traversal and manipulation easier by improving the syntax. It also improves event handling, animation, and AJAX (which I don't really understand beyond knowing it asynchronously allows a client to get and set information without reloading the page).

Biggest things are reducing boilerplate for accessing the document and simplifying how to access class vs id vs element name, etc, and allowing chaining of manipulations.

## Important syntax and semantics

* $ - jquery object. Also called 'jQuery'. It's a property of the window object.

* $( document ).ready( [callback] ); - jQuery's function that's called when the DOM is ready to be manipulated. Can be shortened as $( [callback]);

* $( string ) - function that returns a selection of matching objects in the DOM. If the string is prepended by # it selects an ID; if . , a class. [attr='value'] will filter by attribute value, and they can also be made compound, or comma separated. pseudoselectors are also valid after :.

* .attr( key ) - getter for the attribute "key" on first item in selection

* .attr( key, value ) - setter for attribute "key" on selection

* .attr( obj ) - setter for all key/value pairs in obj on selection

* .length - used to check how many values are returned

* .has(), .not(), .filter(), .first(), .eq() - used to filter a selection.

* .html() - sets or gets the html inside each selected element. Setters return the element for chaining, while getters return whatever was gotten.

* .text(), .attr(), .width(), .height(), .position(), .val() - getters and setters for the property in a selection (like html). Position has no setter.

* .end() - returns to original selection.

* .insertAfter(), .insertBefore(), .appendTo(), .prependTo() - puts the selection after/before/appended/prepended to whatever's in the argument.

* .after(), .before(), .append(), .prepend() - the opposite of above.

* .clone() - copies an element 

* .remove() - removes an element and its data and events

* .detach() - remove from the DOM but keep data and events

* $( "html" ) - creates an html element. Can also use an attribute element with $( "html", { key:value})

* .parent(), .children(), .prev(), .next() - returns selection of the parent, the children, and the previous and next sibling elements

# .parents(), .find(), .siblings(), .nextAll(), .prevAll() - returns selection recursively (siblings is both directions)

# .css() - gets and sets the CSS of an item. Can use two strings or an object of key-value pairs

# .on(event, function) - calls the function when the event happens. Shorthand methods include .click, .focus, .blur, .change

# .off(event) - turns the listener off

