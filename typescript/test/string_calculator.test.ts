import { calculate } from '../src/string_calculator';

describe('String Calculator', () => {
    describe('#calculate', () => {
        it('should calculate final result', () => {
            expect(calculate('1,2,3')).toBe(6);
        });
    });
});
