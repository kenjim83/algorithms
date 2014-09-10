// Using the JavaScript language, have the function LetterChanges(str) take the str
// parameter being passed and modify it using the following algorithm.
// Replace every letter in the string with the letter following it in the alphabet
// (ie. c becomes d, z becomes a).
// Then capitalize every vowel in this new string (a, e, i, o, u) and finally
// return this modified string.


function LetterChanges(str){
  var new_str = ''
  var str = str.toLowerCase()

  for(var i=0; i < str.length; i++){
    var code = str[i].charCodeAt();

    // if char is a letter
    if ( ((code >= 65) && (code <= 90)) || ((code >= 97) && (code <= 122)) ){
      // wrap around to 'A' if char is 'z'
      if(code === 122){
        new_str += 'A'
      }
      else {
        var next_char = String.fromCharCode(code+1)
        if( next_char === 'a' || next_char === 'e' || next_char === 'i' || next_char === 'o' || next_char === 'u' ){
          new_str += next_char.toUpperCase()
        }
        else {
          new_str += next_char
        }
      };
    }
    else {
      new_str += str[i]
    };
  };

  return new_str
}


LetterChanges('hello*3')