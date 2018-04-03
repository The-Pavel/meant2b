// pages/new/new.js
Page({

  /**
   * 页面的初始数据
   */
  data: {
    new_jobs: [{
      match: 73,
      title: "Camp Driver",
      summary: "Be the leader of the new Le Wagon...",
      status: "Not Applied",
      image: "https://ahoyberlin.com/system/App/SharedEvents/images/000/000/059/detail/AAEAAQAAAAAAAAnjAAAAJDhhZjQ4NmJhLTlmZjAtNGYzZC05MDMyLTk3Zjc4MWRiNjU0Mg.png"
    }]
  },

  saveJob: function(e) {

    wx.showToast({
      title: 'Saving...',
      icon: 'loading',
      duration: 1500
    });

    let all_jobs = getApp().globalData.jobs
    let job = this.data.new_jobs[0]
    let index = (all_jobs[all_jobs.length-1].id)
    console.log(job)
    console.log(index)
    
    job.id = index + 1
    getApp().globalData.jobs.push(job);


  },

  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function (options) {
  
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