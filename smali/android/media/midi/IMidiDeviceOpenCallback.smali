# classes2.dex

.class public interface abstract Landroid/media/midi/IMidiDeviceOpenCallback;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/midi/IMidiDeviceOpenCallback$Stub;,
        Landroid/media/midi/IMidiDeviceOpenCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract onDeviceOpened(Landroid/media/midi/IMidiDeviceServer;Landroid/os/IBinder;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
