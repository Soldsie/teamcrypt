'use strict';

var exec = require('cordova/exec');

var Teamcrypt = {
  getUserKey: function(userId, success, failure) {
    exec(success, failure, 'Teamcrypt', 'getUserKey', [userId]);
  },

  createEncryptedKeyPair: function(userId, success, failure) {
    exec(success, failure, 'Teamcrypt', 'createEncryptedKeyPair', [userId]);
  },

  reEncryptPrivateKey: function(userId, encryptedPrivateKey, newUserPublicKey, success, failure) {
    exec(success, failure, 'Teamcrypt', 'reEncryptPrivateKey', [userId, encryptedPrivateKey, newUserPublicKey]);
  },

  decryptMessage: function(userId, encryptedMessage, encryptedPrivateKey, success, failure) {
    exec(success, failure, 'Teamcrypt', 'decryptMessage', [userId, encryptedMessage, encryptedPrivateKey]);
  }
};

module.exports = Teamcrypt;