// pages/show/show.js
Page({

  /**
   * 页面的初始数据
   */
  data: {
    reasons: ["I am not coming to work today because...", "I can not meet you because...", "I can't go out today because..."],
    index: 0
  },

  selectExcuse: function() {

  },
  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function (options) {
    this.setData({index: options.index})
    var that = this
    this.setData(getApp().globalData.excuses)
    var words = [
      'I have a cold',
      'My dog ate my project plan',
      'Windows update',
      'I have to save Krypton'
    ];
    let index = 0;

      // setTimeout(function () {
      //   while (index < 5) {
      //   excuse = words[Math.floor(Math.random() * words.length)]
      // index += 1
      // console.log(excuse)
      // }}, 400);
    
      let i = 0
      while (i < 20) {
        that.setData({
          excuse: that.data.excuses[Math.floor(Math.random() * (that.data.excuses).length)]
        })
        i += 1
        for (let l = 0; l < 100000000; l++) {
          l == l
        }
      }
      
  
    
    
    // setInterval(function () {
    //   excuse = (function () {
    //     let excuse = (words[i = (i + 1) % words.length]).fadeIn();
    //   });
    //   // 2 seconds
    // }, 2000);

    
  },

  copyText: function(e) {
    wx.setClipboardData({
      data: this.data.excuse,
      success: function (res) {
        wx.getClipboardData({
          success: function (res) {
            wx.showToast({
              title: 'Copied!',
              icon: 'success'
            })
            // console.log(res.data) // data
          }
        })
      }
    })
  },

  /**
   * 生命周期函数--监听页面初次渲染完成
   */
  onReady: function () {
  
  },

  /**
   * 生命周期函数--监听页面显示
   */
  onShow: function () {
    
  },

  /**
   * 生命周期函数--监听页面隐藏
   */
  onHide: function () {
  
  },

  /**
   * 生命周期函数--监听页面卸载
   */
  onUnload: function () {
  
  },

  /**
   * 页面相关事件处理函数--监听用户下拉动作
   */
  onPullDownRefresh: function () {
  
  },

  /**
   * 页面上拉触底事件的处理函数
   */
  onReachBottom: function () {
  
  },

  /**
   * 用户点击右上角分享
   */
  onShareAppMessage: function () {
  
  }
})