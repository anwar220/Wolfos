# classes4.dex

.class public interface abstract Lcom/android/internal/app/IAppOpsCallback;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/IAppOpsCallback$Stub;,
        Lcom/android/internal/app/IAppOpsCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract opChanged(IILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method