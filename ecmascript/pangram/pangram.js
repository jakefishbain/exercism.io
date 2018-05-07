export default class Pangram {
  constructor(str){
    this.str = str.toLowerCase();
  }
  
  isPangram(){
    const alphabet = 'abcdefghijklmnopqrstuvwxyz'.split('')
    this.str.split('').map(letter => {
      if (alphabet.some(x => x === letter)) { 
        alphabet.splice(alphabet.findIndex(x => x === letter), 1) 
      }
    })
    return alphabet.length === 0;
  }
}
