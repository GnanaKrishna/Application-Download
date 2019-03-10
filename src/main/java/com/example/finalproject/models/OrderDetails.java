package com.example.finalproject.models;

public class OrderDetails {

    int orderId;
    int userId;
    int appId;
    double orderAmount;
    String time;

    AppDetails appDetails;

    public OrderDetails() {
    }

    public OrderDetails(int orderId, int userId, int appId, double orderAmount, String time) {
        this.orderId = orderId;
        this.userId = userId;
        this.appId = appId;
        this.orderAmount = orderAmount;
        this.time = time;
    }

    public int getOrderId() {
        return orderId;
    }

    public void setOrderId(int orderId) {
        this.orderId = orderId;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public int getAppId() {
        return appId;
    }

    public void setAppId(int appId) {
        this.appId = appId;
    }

    public double getOrderAmount() {
        return orderAmount;
    }

    public void setOrderAmount(double orderAmount) {
        this.orderAmount = orderAmount;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }
}
