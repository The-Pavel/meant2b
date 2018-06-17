//index.js
//获取应用实例
const app = getApp()

Page({
  data: {
    array: ['- Choose a Reason -', 'I hate my job', 'I do not want to see this friend', 'I just want to play CoD at home'],
    index: 0
  },
  onLoad: function () {
    this.setData(app.globalData.excuses)
  },

  genExcuse: function(e) {
    let page = this
    if (page.data.index == 0) {
      wx.showToast({
        title: 'Pick the Reason!',
        icon: 'none'
      })
    } else {
      wx.navigateTo({
        url: `/pages/show/show?index=${page.data.index}`,
      })
    }
  },

  listenerPickerSelected: function (e) {
    //改变index值，通过setData()方法重绘界面
    
    this.setData({
      index: e.detail.value
    });
  },

  getUserInfo: function(e) {
    console.log(e)
    app.globalData.userInfo = e.detail.userInfo
    this.setData({
      userInfo: e.detail.userInfo,
      hasUserInfo: true
    })
  }
})
