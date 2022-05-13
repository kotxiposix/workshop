const calculator = require('./calculator');

const x =10;
const y =5;
const z =2;

describe('Calculator', () => {

       test('Add numbers using the add method', () => {

              expect(calculator.add(x, y)).toBe(15);
       })
        
         it('Subtract numbers using the subtract method', () => {
                 
                  expect(calculator.subtract(x, y)).toBe(5);
         }
         )

            it('Multiply numbers using the multiply method', () => {
                 expect(calculator.multiply(x, y)).toBe(50);
            })

            test('Divide numbers using the divide method', () => {
                       expect(calculator.divide(x, y)).toBe(2);
              }
              )



})
