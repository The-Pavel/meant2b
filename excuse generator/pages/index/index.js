//index.js
//获取应用实例
const app = getApp()

Page({
  data: {
    array: ['- Choose a Reason -', 'Charging Device is Broken', 'Station No Longer Exist', 'The QR code Does Not Work', 'Other'],
    index: 0
  },
  onLoad: function () {
    this.setData(app.globalData.excuses)
  },

  genExcuse: function(e) {
    wx.navigateTo({
      url: '/pages/show/show',
    })
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
