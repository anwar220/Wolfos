# classes3.dex

.class public interface abstract Landroid/service/cloudsearch/ICloudSearchService;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/cloudsearch/ICloudSearchService$Stub;,
        Landroid/service/cloudsearch/ICloudSearchService$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.service.cloudsearch.ICloudSearchService"


# virtual methods
.method public abstract onSearch(Landroid/app/cloudsearch/SearchRequest;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
