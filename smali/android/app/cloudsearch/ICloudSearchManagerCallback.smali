# classes.dex

.class public interface abstract Landroid/app/cloudsearch/ICloudSearchManagerCallback;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/cloudsearch/ICloudSearchManagerCallback$Stub;,
        Landroid/app/cloudsearch/ICloudSearchManagerCallback$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.app.cloudsearch.ICloudSearchManagerCallback"


# virtual methods
.method public abstract onSearchFailed(Landroid/app/cloudsearch/SearchResponse;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onSearchSucceeded(Landroid/app/cloudsearch/SearchResponse;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
