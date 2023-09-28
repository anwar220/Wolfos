# classes.dex

.class public interface abstract Landroid/bluetooth/IBluetoothMetadataListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetoothMetadataListener$Stub;,
        Landroid/bluetooth/IBluetoothMetadataListener$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.bluetooth.IBluetoothMetadataListener"


# virtual methods
.method public abstract onMetadataChanged(Landroid/bluetooth/BluetoothDevice;I[B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
