class Car {
    constructor(name, year) {
      this.name = name;
      this.year = year;
    }
    age(x) {
      return x - this.year;
    }
  }
  


  

    describe('Car', () => {
        var myCar ;
        beforeAll(() => {
            console.log('beforeAll');
            
                 myCar = new Car("Ford", 2014);
          
          
          });
        
        test('my car', () => {
            expect(myCar.name).toBe('Ford');
        }
        )
    })
    