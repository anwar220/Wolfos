# classes.dex

.class public interface abstract Landroid/bluetooth/BluetoothAdapter$OobDataCallback;
.super Ljava/lang/Object;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OobDataCallback"
.end annotation


# virtual methods
.method public abstract onError(I)V
.end method

.method public abstract onOobData(ILandroid/bluetooth/OobData;)V
.end method
