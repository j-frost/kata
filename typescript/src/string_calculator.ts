export function calculate(rawString: string): number {
    return rawString
        .split(',')
        .map(parseFloat)
        .reduce(
            (previousSum, current) => {
                return previousSum + current;
            }, 0,
        );
}
