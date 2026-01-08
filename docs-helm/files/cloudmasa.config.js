module.exports = {
  title: 'My Docs',
  url: 'http://localhost',
  baseUrl: '/',
  onBrokenLinks: 'throw',
  presets: [
    [
      '@cloudmasa/preset-classic',
      {
        docs: { routeBasePath: '/' },
        blog: { enabled: true },
        theme: { customCss: require.resolve('./src/css/custom.css') },
      },
    ],
  ],
};
