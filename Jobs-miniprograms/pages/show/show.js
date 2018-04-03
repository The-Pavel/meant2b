// pages/show/show.js
Page({

  /**
   * 页面的初始数据
   */
  data: {
  
  },

  applyToJob: function(e) {
    let job_id = this.data.id
    let job = getApp().globalData.jobs.find(job => job.id == job_id)
    if (job.status == "Applied!") {
      wx.showToast({
        icon: "loading",
        title: 'Applied Before!',
        duration: 1000,
        complete: wx.reLaunch({
          url: '/pages/index/index',
        })
      }) 
    } else {
      getApp().globalData.jobs.find(job => job.id == job_id).status = "Applied!"
      wx.showToast({
        title: 'Sent!',
        complete: wx.reLaunch({
          url: '/pages/index/index',
        })
      })
    }
   
  },

  deleteJob: function(e) {
    let id = this.data.id
    let index = getApp().globalData.jobs.findIndex(job => job.id == id)

    wx.showModal({
      title: 'Deleting',
      content: 'Are you sure?',
      success: function (res) {
        if (res.confirm) {
          getApp().globalData.jobs.splice(index, 1)
        }
        wx.reLaunch({
          url: '/pages/index/index',
        })
      }
    })
    

  },

  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function (options) {
    const id = options.id

    const jobs = getApp().globalData.jobs
    // console.log(jobs);
    let index = jobs.findIndex(job => job.id.toString() === id)
    // console.log(index);
    // Update local data
    this.setData(jobs[index]);
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