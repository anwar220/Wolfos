# classes3.dex

.class public interface abstract Landroid/service/euicc/IOtaStatusChangedCallback;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/euicc/IOtaStatusChangedCallback$Stub;,
        Landroid/service/euicc/IOtaStatusChangedCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract onOtaStatusChanged(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
