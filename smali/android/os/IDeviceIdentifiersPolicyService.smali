# classes3.dex

.class public interface abstract Landroid/os/IDeviceIdentifiersPolicyService;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IDeviceIdentifiersPolicyService$Stub;,
        Landroid/os/IDeviceIdentifiersPolicyService$Default;
    }
.end annotation


# virtual methods
.method public abstract getSerial()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getSerialForPackage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
