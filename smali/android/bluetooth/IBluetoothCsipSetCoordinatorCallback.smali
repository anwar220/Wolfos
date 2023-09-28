# classes.dex

.class public interface abstract Landroid/bluetooth/IBluetoothCsipSetCoordinatorCallback;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetoothCsipSetCoordinatorCallback$Stub;,
        Landroid/bluetooth/IBluetoothCsipSetCoordinatorCallback$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.bluetooth.IBluetoothCsipSetCoordinatorCallback"


# virtual methods
.method public abstract onCsisSetMemberAvailable(Landroid/bluetooth/BluetoothDevice;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
