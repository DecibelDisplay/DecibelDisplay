module.exports = {
  pluginOptions: {
    electronBuilder: {
      nodeIntegration: true,
    }
  },
  configureWebpack: {
    // rest of the webpack config
    resolve: {
      // ... rest of the resolve config
      fallback: {
        path: require.resolve("path-browserify"),
        fs: false
      }
    }
  }
};
