# classes3.dex

.class public interface abstract Landroid/service/euicc/IGetOtaStatusCallback;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/euicc/IGetOtaStatusCallback$Stub;,
        Landroid/service/euicc/IGetOtaStatusCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract onSuccess(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
