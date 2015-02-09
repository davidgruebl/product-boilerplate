{Schema} = require 'mongoose'

Model = new Schema
  text:
    type: String
    default: ''
    validate: (v) -> v.length <= 140

  from:
    type: Schema.Types.ObjectId
    ref: 'User'
    required: true

  to:
    type: Schema.Types.ObjectId
    ref: 'User'
    required: true

  created:
    type: Date
    default: Date.now

  # custom fields here
  rating:
    type: Number
    default: 3
    max: 5
    min: 1

Model.set 'toJSON', {getters:true, virtuals:true}
Model.set 'toObject', {getters:true, virtuals:true}
Model.set 'strict', true

module.exports = Model
