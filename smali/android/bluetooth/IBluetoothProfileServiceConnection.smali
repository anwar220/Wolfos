# classes.dex

.class public interface abstract Landroid/bluetooth/IBluetoothProfileServiceConnection;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetoothProfileServiceConnection$Stub;,
        Landroid/bluetooth/IBluetoothProfileServiceConnection$Default;
    }
.end annotation


# virtual methods
.method public abstract onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onServiceDisconnected(Landroid/content/ComponentName;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
