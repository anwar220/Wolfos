# classes2.dex

.class public interface abstract Landroid/hardware/location/IContextHubCallback;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/location/IContextHubCallback$Stub;,
        Landroid/hardware/location/IContextHubCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract onMessageReceipt(IILandroid/hardware/location/ContextHubMessage;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
