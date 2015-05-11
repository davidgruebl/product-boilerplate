isObjectId = require '../../lib/isObjectId'
db = require '../../db'
{User} = db.models

module.exports = (req, res, next) ->
  return res.status(403).end() unless req.isAuthenticated()
  return res.status(400).end() unless isObjectId req.params.id

  q = User.findById req.params.id
  q.exec (err, user) ->
    return next err if err?
    return res.status(404).end() unless user?
    res.status(200).json user.format()
