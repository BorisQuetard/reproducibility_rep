# function that make the cat say custom messages

f_catSays = function (msg = NULL) {
  #default message
  if (is.null(msg)) {
    msg = 'This is not the best function in the world,
this is just a tribute'
  }
  #draw the cat
  cat = "
        |/
 /.\\ /.\\\'
(= ^.^ =) 
(\'\'\')(\'\'\')"
  #make the console output with the cat function
  cat(paste0(msg, cat))
  
}