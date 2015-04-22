#import <Cordova/CDVPlugin.h>
#import <Cordova/CDVInvokedUrlCommand.h>

@interface Teamcrypt : CDVPlugin

- (void)getUserKey:(CDVInvokedUrlCommand*)command;

- (void)createEncryptedKeyPair:(CDVInvokedUrlCommand*)command;

- (void)reEncryptPrivateKey:(CDVInvokedUrlCommand*)command;

- (void)decryptMessage:(CDVInvokedUrlCommand*)command;

@end