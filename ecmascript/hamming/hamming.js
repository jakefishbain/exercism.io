class Hamming{

  compute(first, second){
    if (first.length != second.length) throw new Error('DNA strands must be of equal length.')

    let total = 0
    for (let i = 0; i < first.length; i++){
      let x = first[i], y = second[i]
      if (x != y) total++
    }
    return total
  }
}

export default Hamming
