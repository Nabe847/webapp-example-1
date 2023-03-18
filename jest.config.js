/** @type {import('jest').Config} */
const config = {
  verbose: true,
  transform: {
    ".*\\.test\\.ts": "ts-jest",
  },
};

module.exports = config;
