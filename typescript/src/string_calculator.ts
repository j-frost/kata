/**
 * String calculator function. Will add all numbers in the given string.
 *
 * @param {string} rawString a string of numbers separated by commas
 * @returns {number} the sum of all numbers given in rawString
 */
export function calculate(rawString: string): number {
    return rawString
        .split(',')
        .map(parseFloat)
        .reduce((previousSum, current) => {
            return previousSum + current;
        }, 0);
}
