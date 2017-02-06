//
//  OCPlugin.m
//  HelloWorld
//
//  Created by 云马 on 2017/2/4.
//
//

#import "OCPlugin.h"

@implementation OCPlugin

- (void)testOcPlugin:(CDVInvokedUrlCommand *)command{
    
    if (command.arguments.count > 0) {
        //获取到入参数组中的第一个元素
        NSString *param = command.arguments[0];
        //创建一个回调对象并附上String类型参数
        CDVPluginResult *pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:[NSString stringWithFormat:@"传入参数：%@", param]];
        //通过cordova框架中的callBackID回调至JS的回调函数上
        [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
    }else{
        //如果没有入参,则回调JS失败函数
        CDVPluginResult* pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR messageAsString:@"没有传入参数"];
        [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
    }

}

@end
