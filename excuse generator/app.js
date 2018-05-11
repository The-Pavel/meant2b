//app.js
App({
  onLaunch: function () {
    // 展示本地存储能力
    var logs = wx.getStorageSync('logs') || []
    logs.unshift(Date.now())
    wx.setStorageSync('logs', logs)

    // 登录
    wx.login({
      success: res => {
        // 发送 res.code 到后台换取 openId, sessionKey, unionId
      }
    })
    // 获取用户信息
    wx.getSetting({
      success: res => {
        if (res.authSetting['scope.userInfo']) {
          // 已经授权，可以直接调用 getUserInfo 获取头像昵称，不会弹框
          wx.getUserInfo({
            success: res => {
              // 可以将 res 发送给后台解码出 unionId
              this.globalData.userInfo = res.userInfo

              // 由于 getUserInfo 是网络请求，可能会在 Page.onLoad 之后才返回
              // 所以此处加入 callback 以防止这种情况
              if (this.userInfoReadyCallback) {
                this.userInfoReadyCallback(res)
              }
            }
          })
        }
      }
    })
  },
  globalData: {
    excuses: { excuses:
    ["Dood... I woke up this morning with no freaking feet... I'll try to get someone to carry me in tomorrow.", "Sir, I am having vision problems today. I can't see myself coming to work.", "I went to get a book and never came back I told the instructor I had to reach across the bed to get it and fell asleep.", "I allredy no everything sew i dont nead to go to schoool anymour. ", "I still had a few hours left with the prostitute, so I stayed home and had wild gratuitous butt sex. ", "MASTURBATING TO PICTURES OF YOU, BOSS!!! " , "Well, I've come down with Ebola, but if you really want me to come in... ", "Broken today. Thanks for asking. ", "I wanted to come in but I had a severe case of Chronic Gravitational Disorder... couldn't get my ass out of bed. ", "MTV was running a Spice- girls marathon, and I had to lift my T.V. out of the window all by myself. ", "No really I was here, I was just hiding. under my invisible jacket.", "I was secretly working with NASA on a comet deflection shield. ", "I'm celebrating 'National Lobotomy Day.'"]
    }
  }
})