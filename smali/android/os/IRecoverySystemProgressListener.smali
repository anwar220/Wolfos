# classes3.dex

.class public interface abstract Landroid/os/IRecoverySystemProgressListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IRecoverySystemProgressListener$Stub;,
        Landroid/os/IRecoverySystemProgressListener$Default;
    }
.end annotation


# virtual methods
.method public abstract onProgress(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
