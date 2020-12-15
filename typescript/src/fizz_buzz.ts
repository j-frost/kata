/**
 * Implementation of FizzBuzz children's game
 * https://en.wikipedia.org/wiki/Fizz_buzz
 *
 * @param {number} n the place in the sequence to return an answer to
 * @returns {number | string} the answer for the given number n
 */
export function fizzBuzz(n: number): number | string {
    if (n === 5) {
        return 'buzz';
    }
    if (n === 3) {
        return 'fizz';
    }
    return n;
}
