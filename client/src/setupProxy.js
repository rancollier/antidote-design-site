const { createProxyMiddleware } = require('http-proxy-middleware');
module.exports = function(app) {
  app.use(
    '/assets',
    createProxyMiddleware({
      target: 'http://antidote-design.test',
      changeOrigin: true,
    })
  );
};