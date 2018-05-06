class Transcriptor {
  toRna(str) {
    const rnaArr = str.split('').map(letter => {
      const rnaLetter = rnaMap[letter]
      if(rnaLetter){
        return rnaLetter
      }else {
        throw new Error("Invalid input DNA")
      }
    })
    return rnaArr.join('')
  }
}

const rnaMap = {
  'G': 'C',
  'C': 'G',
  'T': 'A',
  'A': 'U'
}

export default Transcriptor