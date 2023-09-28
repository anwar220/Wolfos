# classes.dex

.class public abstract Landroid/bluetooth/IBluetoothLeBroadcastCallback$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Landroid/bluetooth/IBluetoothLeBroadcastCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetoothLeBroadcastCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetoothLeBroadcastCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_onBroadcastMetadataChanged:I = 0x9

.field static final TRANSACTION_onBroadcastStartFailed:I = 0x2

.field static final TRANSACTION_onBroadcastStarted:I = 0x1

.field static final TRANSACTION_onBroadcastStopFailed:I = 0x4

.field static final TRANSACTION_onBroadcastStopped:I = 0x3

.field static final TRANSACTION_onBroadcastUpdateFailed:I = 0x8

.field static final TRANSACTION_onBroadcastUpdated:I = 0x7

.field static final TRANSACTION_onPlaybackStarted:I = 0x5

.field static final TRANSACTION_onPlaybackStopped:I = 0x6


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.bluetooth.IBluetoothLeBroadcastCallback"

    invoke-virtual {p0, p0, v0}, Landroid/bluetooth/IBluetoothLeBroadcastCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothLeBroadcastCallback;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "android.bluetooth.IBluetoothLeBroadcastCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/bluetooth/IBluetoothLeBroadcastCallback;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Landroid/bluetooth/IBluetoothLeBroadcastCallback;

    return-object v1

    :cond_14
    new-instance v1, Landroid/bluetooth/IBluetoothLeBroadcastCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/bluetooth/IBluetoothLeBroadcastCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_2a

    const/4 v0, 0x0

    return-object v0

    :pswitch_5  #0x9
    const-string/jumbo v0, "onBroadcastMetadataChanged"

    return-object v0

    :pswitch_9  #0x8
    const-string/jumbo v0, "onBroadcastUpdateFailed"

    return-object v0

    :pswitch_d  #0x7
    const-string/jumbo v0, "onBroadcastUpdated"

    return-object v0

    :pswitch_11  #0x6
    const-string/jumbo v0, "onPlaybackStopped"

    return-object v0

    :pswitch_15  #0x5
    const-string/jumbo v0, "onPlaybackStarted"

    return-object v0

    :pswitch_19  #0x4
    const-string/jumbo v0, "onBroadcastStopFailed"

    return-object v0

    :pswitch_1d  #0x3
    const-string/jumbo v0, "onBroadcastStopped"

    return-object v0

    :pswitch_21  #0x2
    const-string/jumbo v0, "onBroadcastStartFailed"

    return-object v0

    :pswitch_25  #0x1
    const-string/jumbo v0, "onBroadcastStarted"

    return-object v0

    nop

    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_25  #00000001
        :pswitch_21  #00000002
        :pswitch_1d  #00000003
        :pswitch_19  #00000004
        :pswitch_15  #00000005
        :pswitch_11  #00000006
        :pswitch_d  #00000007
        :pswitch_9  #00000008
        :pswitch_5  #00000009
    .end packed-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    const/16 v0, 0x8

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3

    invoke-static {p1}, Landroid/bluetooth/IBluetoothLeBroadcastCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "android.bluetooth.IBluetoothLeBroadcastCallback"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    packed-switch p1, :pswitch_data_a2

    packed-switch p1, :pswitch_data_a8

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :pswitch_18  #0x5f4e5446
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_1c  #0x9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    sget-object v3, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothLeBroadcastMetadata;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/bluetooth/IBluetoothLeBroadcastCallback$Stub;->onBroadcastMetadataChanged(ILandroid/bluetooth/BluetoothLeBroadcastMetadata;)V

    goto/16 :goto_a0

    :pswitch_30  #0x8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/bluetooth/IBluetoothLeBroadcastCallback$Stub;->onBroadcastUpdateFailed(II)V

    goto :goto_a0

    :pswitch_3f  #0x7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/bluetooth/IBluetoothLeBroadcastCallback$Stub;->onBroadcastUpdated(II)V

    goto :goto_a0

    :pswitch_4e  #0x6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/bluetooth/IBluetoothLeBroadcastCallback$Stub;->onPlaybackStopped(II)V

    goto :goto_a0

    :pswitch_5d  #0x5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/bluetooth/IBluetoothLeBroadcastCallback$Stub;->onPlaybackStarted(II)V

    goto :goto_a0

    :pswitch_6c  #0x4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/bluetooth/IBluetoothLeBroadcastCallback$Stub;->onBroadcastStopFailed(I)V

    goto :goto_a0

    :pswitch_77  #0x3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/bluetooth/IBluetoothLeBroadcastCallback$Stub;->onBroadcastStopped(II)V

    goto :goto_a0

    :pswitch_86  #0x2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/bluetooth/IBluetoothLeBroadcastCallback$Stub;->onBroadcastStartFailed(I)V

    goto :goto_a0

    :pswitch_91  #0x1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/bluetooth/IBluetoothLeBroadcastCallback$Stub;->onBroadcastStarted(II)V

    nop

    :goto_a0
    return v1

    nop

    :pswitch_data_a2
    .packed-switch 0x5f4e5446
        :pswitch_18  #5f4e5446
    .end packed-switch

    :pswitch_data_a8
    .packed-switch 0x1
        :pswitch_91  #00000001
        :pswitch_86  #00000002
        :pswitch_77  #00000003
        :pswitch_6c  #00000004
        :pswitch_5d  #00000005
        :pswitch_4e  #00000006
        :pswitch_3f  #00000007
        :pswitch_30  #00000008
        :pswitch_1c  #00000009
    .end packed-switch
.end method
