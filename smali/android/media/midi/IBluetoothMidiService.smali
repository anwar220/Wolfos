# classes2.dex

.class public interface abstract Landroid/media/midi/IBluetoothMidiService;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/midi/IBluetoothMidiService$Stub;,
        Landroid/media/midi/IBluetoothMidiService$Default;
    }
.end annotation


# virtual methods
.method public abstract addBluetoothDevice(Landroid/bluetooth/BluetoothDevice;)Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method