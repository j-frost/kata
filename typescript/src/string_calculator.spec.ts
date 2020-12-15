import { expect } from 'chai';
import { calculate } from './string_calculator';

describe('String Calculator', () => {
    describe('#calculate', () => {
        it('should calculate final result', () => {
            expect(calculate('1,2,3')).to.equal(6);
        });
    });
});
