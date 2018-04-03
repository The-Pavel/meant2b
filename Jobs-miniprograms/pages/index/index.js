//index.js
//获取应用实例
const app = getApp()

Page({
  onLoad: function () {
    this.setData(app.globalData)
  },

  showJob: function(e) {
    const job = e.currentTarget.dataset.job;

    wx.navigateTo({
      url: `../show/show?id=${job.id}`
    });
  }

})