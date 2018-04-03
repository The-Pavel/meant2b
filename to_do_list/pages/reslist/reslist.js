// pages/reslist/reslist.js
Page({

  /**
   * 页面的初始数据
   */
  data: {
    restaurants: [
    {
      "id": 1,
      "name": "Hummus Hut",
      "address": "101 Greek Place",
      "description": "Nobody Has Better Pita",
      "image": "http://askwomenonline.org/wp-content/uploads/2017/12/hummus-recipe-760x428.jpg"
    },
    {
      "id": 2,
      "name": "Pizza Palace",
      "address": "90 italian drive",
      "description": "More Cheese, More Fun",
      "image": "https://img.grouponcdn.com/deal/8DDtq5XRzVnLXEUnPHPd/p2-2048x1229/v1/c700x420.jpg"
    },
    {
      "id": 3,
      "name": "Mango Madness",
      "address": "2 asian court",
      "description": "Best Southeast Dishes",
      "image": "https://assets.epicurious.com/photos/57a384e73a12dd9d5602415e/2:1/w_1260%2Ch_630/mango-salad.jpg"
    },
    {"id": 4,
      "name": "Bob's Burger",
      "address": "42 american drive",
      "description": "More Meat Than You Can Eat",
      "image": "https://media-cdn.tripadvisor.com/media/photo-s/11/76/1c/72/stock-burger-co.jpg"
    }
  ]

  },

  showRestaurant: function(event) {
    const id = event.currentTarget.dataset.id
    wx.navigateTo({
      url: `../resshow/resshow?id=${id}`,
    })
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