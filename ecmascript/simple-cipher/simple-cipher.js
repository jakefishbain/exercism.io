const generateKey = () => {
  return Array.apply(null, Array(100))
    .map(function() { 
      return String.fromCharCode(Math.floor(Math.random() * (123 - 97) + 97)); 
    }
  ).join('')
}
const alphabet = "abcdefghijklmnopqrstuvwxyz".split('');

export default class Cipher {
  
  constructor(key) {
    key ? this.key = key : this.key = generateKey()
  }

  encode(str) {
    return str;
  }
}
