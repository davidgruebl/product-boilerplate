module.exports =
  cache: true
  port: 1337
  database: 'mongodb://localhost:27017/product_prod'
  facebook:
    id: 'replace-this'
    secret: 'replace-this'
    callback: '/auth/facebook/callback'
  redis:
    host: 'localhost'
    pass: ''
    dbIndex: 3