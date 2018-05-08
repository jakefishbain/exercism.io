export default class PrimeFactors {
  for(num) {
    const arr = []
    let do_num = num
    let i = 2;
    do {
      if(do_num % i === 0){
        arr.push(i)
        do_num = do_num / i
      } else {
        i += 1
      }
    } while ( do_num > 1 )
  return arr
  }
}