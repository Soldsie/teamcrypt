#import "Teamcrypt.h"

@implementation Teamcrypt

- (void)_ensureKeyPair:(NSString *)userId {
    // if there is not already a key pair

}

- (NSString *)_getPublicKey:(NSString*)userId {
    [self _ensureKeyPair:userId];
    return @"publickey";
}

- (NSString *)_getPrivateKey:(NSString*)userId {
    [self _ensureKeyPair:userId];
    return @"privatekey";
}

- (void)getUserKey:(CDVInvokedUrlCommand*)command {
    NSString *userId = [command.arguments objectAtIndex:0];

    // If we've already created the key
    NSString *userKey = [self _getPublicKey:userId];

    // Return the key
    CDVPluginResult* pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:userKey];
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

- (void)createEncryptedKeyPair:(CDVInvokedUrlCommand*)command {
    NSString *userId = [command.arguments objectAtIndex:0];

    // Create a new key pair

    // Stick them in an array
    NSArray *data = @[userId, @"Yes"];

    // Return the key pair
    CDVPluginResult* pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsArray:data];
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

- (void)reEncryptPrivateKey:(CDVInvokedUrlCommand*)command {
    NSString *userId = [command.arguments objectAtIndex:0];

    // NSArray *publicKeys =
    NSString *reEncryptedKey = @"reencryptedKey";
    // Return the re-encrypted private key
    CDVPluginResult* pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:reEncryptedKey];
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

- (void)decryptMessage:(CDVInvokedUrlCommand*)command {
//    NSString *userId = [command.arguments objectAtIndex:0];

    NSString *decryptedMessage = @"This message was decrypted!";

    // Return the decrypted message
    CDVPluginResult* pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:decryptedMessage];
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

@end
