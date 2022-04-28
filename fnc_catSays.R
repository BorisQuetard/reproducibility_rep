# function that make the cat say custom 
  #argument:
    #msg: the message the cat has to say. a default value is provided

f_catSays = function (msg = NULL) {
  
  #default message
  if (is.null(msg)) {
    msg = 
'This is not the best function in the world,
this is just a tribute.'
  }
  
  #draw the cat
  cat = "
        |/
 /.\\ /.\\\'
(= ^.^ =) 
(\'\') (\'\')"
  
  #make the console output with the cat function
  cat(paste0(msg, cat))
  
}

#alternative function name
fnc_catSays = f_catSays
