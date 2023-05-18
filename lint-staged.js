module.exports = {
  '*.{js,jsx,ts,tsx}': ['eslint', 'yarn test', () => 'tsc-files --noEmit'],
  '*.{js,jsx,ts,tsx,json,css,js}': ['prettier --write'],
};
