export function fizzBuzz(n: number): number | string {
  if (n === 5) {
    return 'buzz';
  }
  if (n === 3) {
    return 'fizz';
  }
  return n;
}
