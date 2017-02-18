
defineClass('AppDelegate', {
            
            application_didFinishLaunchingWithOptions: function(application,lanuchOptions) {
            
            //self.ORIGapplication_didFinishLaunchingWithOptions()
            console.log('cmbb')
            require("UILocalNotification, NSDate, UIApplication")
            
            var setting = require("UIUserNotificationSettings").settingsForTypes_categories(1 << 0 | 1 << 1 | 1 << 2, null);
            
            UIApplication.sharedApplication().registerUserNotificationSettings(setting)
            
            var noti = UILocalNotification.alloc().init();
            
            noti.setFireDate(NSDate.dateWithTimeIntervalSinceNow(5));
            noti.setAlertBody("推送内容");
            noti.setApplicationIconBadgeNumber(2);
            UIApplication.sharedApplication().scheduleLocalNotification(noti);
            
            return YES
            },
            applicationDidBecomeActive: function(application) {
            //self.ORIGapplicationDidBecomeActive()
            console.log('mmmxxxxxxxxxxxx')
            },
            applicationDidFinishLaunching: function(application) {
            self.ORIGapplicationDidFinishLaunching()
            console.log('applicationDidFinishLaunching')
            }
            })
defineClass("CSYViewController", {
            
            viewDidLoad:function() {
            
            self.ORIGviewDidLoad()
            self.super().viewDidLoad()
            self.view().setBackgroundColor(require('UIColor').blueColor())
            
            require('UIApplication')
            var app = UIApplication.sharedApplication().delegate()
            //  调用AppDelegate 方法
            app.application_didFinishLaunchingWithOptions(UIApplication.sharedApplication,null)
            
            //  调用创建按钮方法
            self.createButton()
            
            
            },
            createButton:function() {
            
            require("UIButton","UIColor")
            /*
             var btn = UIButton.new()
             btn.setBackgroundColor(UIColor.redColor)
             btn.setFrame({x:0,y:50,width:self.view().frame().width,height:80})
             self.view().addSubview(btn)
             console.log("width = "+self.view().frame().width)
             */
            var btn = require('UIButton').alloc().initWithFrame({x:0, y:300, width:require('UIScreen').mainScreen().bounds().width, height:50});
            btn.setTitle_forState("JS Patch",0);
            btn.addTarget_action_forControlEvents(self, "btnClick:", 1<<6);
            btn.setBackgroundColor(require('UIColor').grayColor());
            self.view().addSubview(btn);
            
            },
            btnClick:function (sender) {
            
            console.log('我创建按钮')
            }
            })

