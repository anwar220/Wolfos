# classes.dex

.class public interface abstract Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;
.super Ljava/lang/Object;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothLeBroadcastAssistant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback$Reason;
    }
.end annotation


# virtual methods
.method public abstract onReceiveStateChanged(Landroid/bluetooth/BluetoothDevice;ILandroid/bluetooth/BluetoothLeBroadcastReceiveState;)V
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end method

.method public abstract onSearchStartFailed(I)V
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end method

.method public abstract onSearchStarted(I)V
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end method

.method public abstract onSearchStopFailed(I)V
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end method

.method public abstract onSearchStopped(I)V
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end method

.method public abstract onSourceAddFailed(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothLeBroadcastMetadata;I)V
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end method

.method public abstract onSourceAdded(Landroid/bluetooth/BluetoothDevice;II)V
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end method

.method public abstract onSourceFound(Landroid/bluetooth/BluetoothLeBroadcastMetadata;)V
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end method

.method public abstract onSourceModified(Landroid/bluetooth/BluetoothDevice;II)V
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end method

.method public abstract onSourceModifyFailed(Landroid/bluetooth/BluetoothDevice;II)V
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end method

.method public abstract onSourceRemoveFailed(Landroid/bluetooth/BluetoothDevice;II)V
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end method

.method public abstract onSourceRemoved(Landroid/bluetooth/BluetoothDevice;II)V
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end method
