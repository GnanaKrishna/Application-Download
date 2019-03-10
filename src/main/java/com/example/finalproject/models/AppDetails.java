package com.example.finalproject.models;

public class AppDetails {

    int appId;
    String appName;
    String appDetails;
    String purchaseType;
    String price;

    OrderDetails orderDetails;


    public AppDetails(int appId, String appName, String appDetails, String purchaseType, String price) {
        this.appId = appId;
        this.appName = appName;
        this.appDetails = appDetails;
        this.purchaseType = purchaseType;
        this.price = price;
    }

    public AppDetails() {
    }

    public int getAppId() {
        return appId;
    }

    public void setAppId(int appId) {
        this.appId = appId;
    }

    public String getAppName() {
        return appName;
    }

    public void setAppName(String appName) {
        this.appName = appName;
    }

    public String getAppDetails() {
        return appDetails;
    }

    public void setAppDetails(String appDetails) {
        this.appDetails = appDetails;
    }

    public String getPurchaseType() {
        return purchaseType;
    }

    public void setPurchaseType(String purchaseType) {
        this.purchaseType = purchaseType;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

}
