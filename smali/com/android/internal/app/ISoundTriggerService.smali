# classes4.dex

.class public interface abstract Lcom/android/internal/app/ISoundTriggerService;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/ISoundTriggerService$Stub;,
        Lcom/android/internal/app/ISoundTriggerService$Default;
    }
.end annotation


# virtual methods
.method public abstract attachAsMiddleman(Landroid/media/permission/Identity;Landroid/media/permission/Identity;Landroid/os/IBinder;)Lcom/android/internal/app/ISoundTriggerSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract attachAsOriginator(Landroid/media/permission/Identity;Landroid/os/IBinder;)Lcom/android/internal/app/ISoundTriggerSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
