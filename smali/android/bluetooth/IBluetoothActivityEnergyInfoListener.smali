# classes.dex

.class public interface abstract Landroid/bluetooth/IBluetoothActivityEnergyInfoListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetoothActivityEnergyInfoListener$Stub;,
        Landroid/bluetooth/IBluetoothActivityEnergyInfoListener$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.bluetooth.IBluetoothActivityEnergyInfoListener"


# virtual methods
.method public abstract onBluetoothActivityEnergyInfoAvailable(Landroid/bluetooth/BluetoothActivityEnergyInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
