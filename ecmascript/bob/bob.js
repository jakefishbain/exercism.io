/* eslint-disable no-unused-vars */
//
// This is only a SKELETON file for the 'Bob' exercise. It's been provided as a
// convenience to get you started writing code faster.
//

class Bob {
  hey(message) {
    if (message.trim().length === 0) {
      return 'Fine. Be that way!'
    }else if(message.endsWith('?') && isYelling(message) && notAllNumbers(message)){
      return 'Calm down, I know what I\'m doing!'
    }else if(message.endsWith('?')) {
      return 'Sure.'
    }else if(isYelling(message) && notAllNumbers(message)) {
      return 'Whoa, chill out!'
    }else {
      return 'Whatever.'
    }
  }
}

const isYelling = (msg) => {
  return !msg.split('').map((letter) => {
    return letter === letter.toUpperCase()
  }).some(x => x === false)
}

const notAllNumbers = (msg) => {
  const stripped = msg.split('').filter( x => x != ',')
  return stripped.map((letter) => {
    return (isNaN(letter) && letter != '?')
  }).some(x => x === true)
}

export default Bob;

