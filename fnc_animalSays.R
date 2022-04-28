# function that make an animal say custom 
  #argument:
    #msg: the message the cat has to say. Preset messages can be specified
      #preset messages: 
      #'tribute' (default), 'brag' ('cat'), 'arms' ('octopus'), 'bubbles' ('octopus', 'cat-ctopus')
    #animal: which animal should speak
      #implemented: 'cat' (default), 'octopus', 'cat-ctopus'

#development ideas
  #make separate functions for drawing each animal (with different variations)
  #make the preset messages a separate function
  #animals: bee, doggo, Cthulhu, anemona, jellyfish, shark, fish, deer, mouse, rabbit
  #make cats purr in French, English, Turkish and Dutch
  
    
f_animalSays = function (msg = NULL, animal = 'cat') {
  
  #default message
  if (is.null(msg) || msg == 'tribute') {
    msg = 
    'This is not the best function in the world,
this is just a tribute.'
  }else if (msg == 'brag' & animal == 'cat') {
    msg = 
    'I am the best animal because the me function is used to print me,
but also to print other animals!'
  }else if (msg == 'brag' & animal != 'cat') {
    msg = 
    'I have nothing to brag about.'
  }else if (msg == 'arms' & animal == 'octopus') {
    msg = 
    'It may seem that I lack one arm but actually, it is here.
It is just hidden behind the others.'
  }else if (msg == 'arms' & animal != 'octopus') {
    if (animal %in% c('cat', 'cat-ctopus')) {
      msg = 
      'My arms look purrfectly fine.'
    }else{
      msg = 
      'My arms look perfectly fine.'
    }
  }else if (msg == 'bubbles' & animal %in% c('octopus', 'cat-ctopus')) {
    msg = 
    'Look!!! I make bubbles! Aren\'t they amazing?'
  }else if (msg == 'bubbles' & !(animal %in% c('octopus', 'cat-ctopus'))) {
    msg = 
    'I\'m so sad I cannot make amazing bubbles like the aquatic animals 
(especially the octopus... Octopi are such fantastic creatures)'
  }
  
  #draw the animal
  if (animal == 'cat') { 
    drawing = "
        |/
 /.\\ /.\\\'
(= ^.^ =) 
(\'\') (\'\')
    "
  }else if (animal == 'octopus') {
    drawing = "
        | /
     0  |/ O
      ° ' o
 ( ^_^ )°
 //|||\\\\
    "
    
  }else if (animal == 'cat-ctopus') {
    drawing = "
     0  | /
      ° |/ O
 /.\\ /.\\\' o 
(= ^.^ =)°
//|| ||\\\\
    "
    
  }else if (animal == 'dog') {
    drawing = ""
    
  }
  
  #make the console output with the cat function
  cat(paste0(msg, drawing))
  
}

#alternative function name
fnc_animalSays = f_animalSays
