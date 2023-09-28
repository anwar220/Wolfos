# classes.dex

.class public abstract Landroid/bluetooth/le/IAdvertisingSetCallback$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Landroid/bluetooth/le/IAdvertisingSetCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/le/IAdvertisingSetCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/le/IAdvertisingSetCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.bluetooth.le.IAdvertisingSetCallback"

.field static final TRANSACTION_onAdvertisingDataSet:I = 0x5

.field static final TRANSACTION_onAdvertisingEnabled:I = 0x4

.field static final TRANSACTION_onAdvertisingParametersUpdated:I = 0x7

.field static final TRANSACTION_onAdvertisingSetStarted:I = 0x1

.field static final TRANSACTION_onAdvertisingSetStopped:I = 0x3

.field static final TRANSACTION_onOwnAddressRead:I = 0x2

.field static final TRANSACTION_onPeriodicAdvertisingDataSet:I = 0x9

.field static final TRANSACTION_onPeriodicAdvertisingEnabled:I = 0xa

.field static final TRANSACTION_onPeriodicAdvertisingParametersUpdated:I = 0x8

.field static final TRANSACTION_onScanResponseDataSet:I = 0x6


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.bluetooth.le.IAdvertisingSetCallback"

    invoke-virtual {p0, p0, v0}, Landroid/bluetooth/le/IAdvertisingSetCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/bluetooth/le/IAdvertisingSetCallback;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "android.bluetooth.le.IAdvertisingSetCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/bluetooth/le/IAdvertisingSetCallback;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Landroid/bluetooth/le/IAdvertisingSetCallback;

    return-object v1

    :cond_14
    new-instance v1, Landroid/bluetooth/le/IAdvertisingSetCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/bluetooth/le/IAdvertisingSetCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_2e

    const/4 v0, 0x0

    return-object v0

    :pswitch_5  #0xa
    const-string/jumbo v0, "onPeriodicAdvertisingEnabled"

    return-object v0

    :pswitch_9  #0x9
    const-string/jumbo v0, "onPeriodicAdvertisingDataSet"

    return-object v0

    :pswitch_d  #0x8
    const-string/jumbo v0, "onPeriodicAdvertisingParametersUpdated"

    return-object v0

    :pswitch_11  #0x7
    const-string/jumbo v0, "onAdvertisingParametersUpdated"

    return-object v0

    :pswitch_15  #0x6
    const-string/jumbo v0, "onScanResponseDataSet"

    return-object v0

    :pswitch_19  #0x5
    const-string/jumbo v0, "onAdvertisingDataSet"

    return-object v0

    :pswitch_1d  #0x4
    const-string/jumbo v0, "onAdvertisingEnabled"

    return-object v0

    :pswitch_21  #0x3
    const-string/jumbo v0, "onAdvertisingSetStopped"

    return-object v0

    :pswitch_25  #0x2
    const-string/jumbo v0, "onOwnAddressRead"

    return-object v0

    :pswitch_29  #0x1
    const-string/jumbo v0, "onAdvertisingSetStarted"

    return-object v0

    nop

    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_29  #00000001
        :pswitch_25  #00000002
        :pswitch_21  #00000003
        :pswitch_1d  #00000004
        :pswitch_19  #00000005
        :pswitch_15  #00000006
        :pswitch_11  #00000007
        :pswitch_d  #00000008
        :pswitch_9  #00000009
        :pswitch_5  #0000000a
    .end packed-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    const/16 v0, 0x9

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3

    invoke-static {p1}, Landroid/bluetooth/le/IAdvertisingSetCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "android.bluetooth.le.IAdvertisingSetCallback"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    packed-switch p1, :pswitch_data_c6

    packed-switch p1, :pswitch_data_cc

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :pswitch_18  #0x5f4e5446
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_1c  #0xa
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4}, Landroid/bluetooth/le/IAdvertisingSetCallback$Stub;->onPeriodicAdvertisingEnabled(IZI)V

    goto/16 :goto_c5

    :pswitch_30  #0x9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/bluetooth/le/IAdvertisingSetCallback$Stub;->onPeriodicAdvertisingDataSet(II)V

    goto/16 :goto_c5

    :pswitch_40  #0x8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/bluetooth/le/IAdvertisingSetCallback$Stub;->onPeriodicAdvertisingParametersUpdated(II)V

    goto/16 :goto_c5

    :pswitch_50  #0x7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4}, Landroid/bluetooth/le/IAdvertisingSetCallback$Stub;->onAdvertisingParametersUpdated(III)V

    goto :goto_c5

    :pswitch_63  #0x6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/bluetooth/le/IAdvertisingSetCallback$Stub;->onScanResponseDataSet(II)V

    goto :goto_c5

    :pswitch_72  #0x5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/bluetooth/le/IAdvertisingSetCallback$Stub;->onAdvertisingDataSet(II)V

    goto :goto_c5

    :pswitch_81  #0x4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4}, Landroid/bluetooth/le/IAdvertisingSetCallback$Stub;->onAdvertisingEnabled(IZI)V

    goto :goto_c5

    :pswitch_94  #0x3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/bluetooth/le/IAdvertisingSetCallback$Stub;->onAdvertisingSetStopped(I)V

    goto :goto_c5

    :pswitch_9f  #0x2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4}, Landroid/bluetooth/le/IAdvertisingSetCallback$Stub;->onOwnAddressRead(IILjava/lang/String;)V

    goto :goto_c5

    :pswitch_b2  #0x1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4}, Landroid/bluetooth/le/IAdvertisingSetCallback$Stub;->onAdvertisingSetStarted(III)V

    nop

    :goto_c5
    return v1

    :pswitch_data_c6
    .packed-switch 0x5f4e5446
        :pswitch_18  #5f4e5446
    .end packed-switch

    :pswitch_data_cc
    .packed-switch 0x1
        :pswitch_b2  #00000001
        :pswitch_9f  #00000002
        :pswitch_94  #00000003
        :pswitch_81  #00000004
        :pswitch_72  #00000005
        :pswitch_63  #00000006
        :pswitch_50  #00000007
        :pswitch_40  #00000008
        :pswitch_30  #00000009
        :pswitch_1c  #0000000a
    .end packed-switch
.end method
