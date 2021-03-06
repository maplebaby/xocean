
mongoose = require('mongoose')
Schema = mongoose.Schema;

ReportSchema = new Schema({
  userId: Schema.Types.ObjectId
  from: String
  to: String
  cc: String
  subject: String
  artId: String
  html: String
  name: String
  curWeek:[Schema.Types.Mixed]
  nextWeek:[Schema.Types.Mixed]
  # 0 - draft
  # 1 - send success
  # 3 - send error
  # 4 - deleted
  status: {
    type: Number
    default: 0
  }

  updateAt: Date
  createAt: Date
  sendAt: Date

})

mongoose.model('Report', ReportSchema)
