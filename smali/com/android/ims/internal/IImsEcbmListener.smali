# classes4.dex

.class public interface abstract Lcom/android/ims/internal/IImsEcbmListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/IImsEcbmListener$Stub;,
        Lcom/android/ims/internal/IImsEcbmListener$Default;
    }
.end annotation


# virtual methods
.method public abstract enteredECBM()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract exitedECBM()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
