//
//  OCPlugin.h
//  HelloWorld
//
//  Created by 云马 on 2017/2/4.
//
//

#import <Cordova/CDVPlugin.h> //这个地方要看清，默认引用的头文件如果不一样，改成这样


@interface OCPlugin : CDVPlugin

- (void)testOcPlugin:(CDVInvokedUrlCommand *)command;
@end
