module.exports = {
    transform: {
        '^.+\\.tsx?$': 'ts-jest'
    },
    testEnvironment: 'node',
    testRegex: '/test/.*\\.test\\.tsx?$',
    moduleFileExtensions: ['js', 'ts']
};
