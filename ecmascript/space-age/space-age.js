export default class SpaceAge {
  
  constructor(num) {
    this.seconds = num
  }

  unroundedEarth() {
      return this.seconds / 31557600
  }

  onEarth(){
    return precisionRound(this.unroundedEarth(), 2)
  }
  onMercury(){
    return precisionRound(this.unroundedEarth() / 0.2408467, 2)
  }
  onVenus(){
    return precisionRound(this.unroundedEarth() / 0.61519726, 2)
  }
  onMars(){
    return precisionRound(this.unroundedEarth() / 1.8808158, 2)
  }
  onJupiter(){
    return precisionRound(this.unroundedEarth() / 11.862615, 2)
  }
  onSaturn(){
    return precisionRound(this.unroundedEarth() / 29.447498, 2)
  }
  onUranus(){
    return precisionRound(this.unroundedEarth() / 84.016846, 2)
  }
  onNeptune(){
    return precisionRound(this.unroundedEarth() / 164.79132, 2)
  }

}

function precisionRound(number, precision) {
  var factor = Math.pow(10, precision);
  return Math.round(number * factor) / factor;
}