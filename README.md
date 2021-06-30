# flutter_challenge

# SETUP
 - This project runs on Flutter Channel stable, 2.0.3
 - Dart 2.12.2

# why a “scroll to index” behaviour is not as straightforward

=> Scroll to Index behaviours allow us create a list recursively without writing code again and again
  
  So lets say when we are scrolling the list which has 50 items in the collection and we show only 5 items at once in the list,
  Actually, there will be total 7 items in the list 1 above the and 1 below the list .... which we will use to see all the 50 items by recycling the list items only the value in the list changes according to the index of list.
  
  So Every time we scroll the list It will recycles the widgets which is showing on the screen.

# Architecture of the App

Project has structure with MVC approach

-> We have modules for Model,pages(View),providers(Controller).
-> State management of the app is taken care with Providers state management library.
-> We have different classes with different widgets which allow us to reuse in any screen.
-> Responsiveness of the app is taken take with SizeConfig file.


# Approach taken to solve the challenge

----STEPS----

1. Firstly we have list of 'contacts' which will get Filter at the starting of the according to the first letter of the word
   which will be sorted in a json format like this.
   
   Map<String, List> elements =  {
                                   'A': [],
                                   'B': [],
                                   .....
                                   .....
                                   'Z':[]
                                  }
       
     -> Each element will have their own list of words according to their first alphabet
     
2. In Searching the entered text will loop through 'contacts' and it will add the results words in '_searchResult' List
   and after that '_searchResult' data will get filter out in 'elements'
   
   filterData(list){
     elements =  {
       'A': [],
       'B': [],
        .....
        .....
       'Z': []
     };
   
     list.forEach((item) {
       elements[item[0].toUpperCase()].add(item);
     });
   }
   
  * List of contacts present in "lib/utils/contact_list.dart" (In case you want to change list data).