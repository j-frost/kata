import { fizzBuzz } from '../src/fizz_buzz';

describe('FizzBuzz', () => {
  it('is a function', () => {
    expect(typeof fizzBuzz).toBe('function');
  });

  it('returns numbers', () => {
    expect(fizzBuzz(1)).toBe(1);
    expect(fizzBuzz(2)).toBe(2);
    expect(fizzBuzz(4)).toBe(4);
  });

  it('returns fizz', () => {
    expect(fizzBuzz(3)).toBe('fizz');
  });

  it('returns buzz', () => {
    expect(fizzBuzz(5)).toBe('buzz');
  });
});
