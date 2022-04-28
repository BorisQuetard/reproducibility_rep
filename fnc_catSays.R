# function that make the cat say custom 
  #argument:
    #msg: the message the cat has to say. a default value is provided
      #preset messages: 
      #'tribute' (default), 'brag', 
f_catSays = function (msg = NULL) {
  
  #default message
  if (is.null(msg) | msg == 'tribute') {
    msg = 
'This is not the best function in the world,
this is just a tribute.'
  }else if (msg == 'brag') {
    msg = 
'I am the best animal because the me function is used to print me,
but also to print other animals!'
  }
  
  #draw the cat
  animal = "
        |/
 /.\\ /.\\\'
(= ^.^ =) 
(\'\') (\'\')"
  
  #make the console output with the cat function
  cat(paste0(msg, animal))
  
}

#alternative function name
fnc_catSays = f_catSays
