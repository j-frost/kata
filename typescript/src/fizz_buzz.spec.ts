import { expect } from 'chai';
import { fizzBuzz } from './fizz_buzz';

describe('FizzBuzz', () => {
    it('is a function', () => {
        expect(fizzBuzz).to.be.a('function');
    });

    it('returns numbers', () => {
        expect(fizzBuzz(1)).to.equal(1);
        expect(fizzBuzz(2)).to.equal(2);
        expect(fizzBuzz(4)).to.equal(4);
    });

    it('returns fizz', () => {
        expect(fizzBuzz(3)).to.equal('fizz');
    });

    it('returns buzz', () => {
        expect(fizzBuzz(5)).to.equal('buzz');
    });
});
