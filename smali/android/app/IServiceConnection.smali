# classes.dex

.class public interface abstract Landroid/app/IServiceConnection;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IServiceConnection$Stub;,
        Landroid/app/IServiceConnection$Default;
    }
.end annotation


# virtual methods
.method public abstract connected(Landroid/content/ComponentName;Landroid/os/IBinder;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
