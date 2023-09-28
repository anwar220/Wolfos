# classes4.dex

.class public interface abstract Lcom/android/ims/internal/IImsFeatureStatusCallback;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/IImsFeatureStatusCallback$Stub;,
        Lcom/android/ims/internal/IImsFeatureStatusCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract notifyImsFeatureStatus(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
