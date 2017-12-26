BaseRecordsInterface = require 'shared/interfaces/base_records_interface.coffee'

module.exports = class LoginTokenRecordsInterface extends BaseRecordsInterface
  model:
    singular: 'login_token'
    plural:   'login_tokens'

  fetchToken: (email) ->
    @remote.post('', email: email)