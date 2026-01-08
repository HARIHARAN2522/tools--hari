//cms-docs/files/cloudmasa.config.js
module.exports = {
  title: 'CloudMaSa Docs',
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
