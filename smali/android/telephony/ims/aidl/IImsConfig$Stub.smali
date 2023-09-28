# classes3.dex

.class public abstract Landroid/telephony/ims/aidl/IImsConfig$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Landroid/telephony/ims/aidl/IImsConfig;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/aidl/IImsConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/aidl/IImsConfig$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_addImsConfigCallback:I = 0x1

.field static final TRANSACTION_addRcsConfigCallback:I = 0xa

.field static final TRANSACTION_getConfigInt:I = 0x3

.field static final TRANSACTION_getConfigString:I = 0x4

.field static final TRANSACTION_notifyIntImsConfigChanged:I = 0xe

.field static final TRANSACTION_notifyRcsAutoConfigurationReceived:I = 0x8

.field static final TRANSACTION_notifyRcsAutoConfigurationRemoved:I = 0x9

.field static final TRANSACTION_notifyStringImsConfigChanged:I = 0xf

.field static final TRANSACTION_removeImsConfigCallback:I = 0x2

.field static final TRANSACTION_removeRcsConfigCallback:I = 0xb

.field static final TRANSACTION_setConfigInt:I = 0x5

.field static final TRANSACTION_setConfigString:I = 0x6

.field static final TRANSACTION_setRcsClientConfiguration:I = 0xd

.field static final TRANSACTION_triggerRcsReconfiguration:I = 0xc

.field static final TRANSACTION_updateImsCarrierConfigs:I = 0x7


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.telephony.ims.aidl.IImsConfig"

    invoke-virtual {p0, p0, v0}, Landroid/telephony/ims/aidl/IImsConfig$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsConfig;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "android.telephony.ims.aidl.IImsConfig"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/telephony/ims/aidl/IImsConfig;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Landroid/telephony/ims/aidl/IImsConfig;

    return-object v1

    :cond_14
    new-instance v1, Landroid/telephony/ims/aidl/IImsConfig$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/telephony/ims/aidl/IImsConfig$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_3e

    const/4 v0, 0x0

    return-object v0

    :pswitch_5  #0xf
    const-string/jumbo v0, "notifyStringImsConfigChanged"

    return-object v0

    :pswitch_9  #0xe
    const-string/jumbo v0, "notifyIntImsConfigChanged"

    return-object v0

    :pswitch_d  #0xd
    const-string/jumbo v0, "setRcsClientConfiguration"

    return-object v0

    :pswitch_11  #0xc
    const-string/jumbo v0, "triggerRcsReconfiguration"

    return-object v0

    :pswitch_15  #0xb
    const-string/jumbo v0, "removeRcsConfigCallback"

    return-object v0

    :pswitch_19  #0xa
    const-string v0, "addRcsConfigCallback"

    return-object v0

    :pswitch_1c  #0x9
    const-string/jumbo v0, "notifyRcsAutoConfigurationRemoved"

    return-object v0

    :pswitch_20  #0x8
    const-string/jumbo v0, "notifyRcsAutoConfigurationReceived"

    return-object v0

    :pswitch_24  #0x7
    const-string/jumbo v0, "updateImsCarrierConfigs"

    return-object v0

    :pswitch_28  #0x6
    const-string/jumbo v0, "setConfigString"

    return-object v0

    :pswitch_2c  #0x5
    const-string/jumbo v0, "setConfigInt"

    return-object v0

    :pswitch_30  #0x4
    const-string v0, "getConfigString"

    return-object v0

    :pswitch_33  #0x3
    const-string v0, "getConfigInt"

    return-object v0

    :pswitch_36  #0x2
    const-string/jumbo v0, "removeImsConfigCallback"

    return-object v0

    :pswitch_3a  #0x1
    const-string v0, "addImsConfigCallback"

    return-object v0

    nop

    :pswitch_data_3e
    .packed-switch 0x1
        :pswitch_3a  #00000001
        :pswitch_36  #00000002
        :pswitch_33  #00000003
        :pswitch_30  #00000004
        :pswitch_2c  #00000005
        :pswitch_28  #00000006
        :pswitch_24  #00000007
        :pswitch_20  #00000008
        :pswitch_1c  #00000009
        :pswitch_19  #0000000a
        :pswitch_15  #0000000b
        :pswitch_11  #0000000c
        :pswitch_d  #0000000d
        :pswitch_9  #0000000e
        :pswitch_5  #0000000f
    .end packed-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    const/16 v0, 0xe

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3

    invoke-static {p1}, Landroid/telephony/ims/aidl/IImsConfig$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    const-string v0, "android.telephony.ims.aidl.IImsConfig"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    packed-switch p1, :pswitch_data_126

    packed-switch p1, :pswitch_data_12c

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :pswitch_18  #0x5f4e5446
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_1c  #0xf
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/telephony/ims/aidl/IImsConfig$Stub;->notifyStringImsConfigChanged(ILjava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_125

    :pswitch_2f  #0xe
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/telephony/ims/aidl/IImsConfig$Stub;->notifyIntImsConfigChanged(II)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_125

    :pswitch_42  #0xd
    sget-object v2, Landroid/telephony/ims/RcsClientConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/RcsClientConfiguration;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/IImsConfig$Stub;->setRcsClientConfiguration(Landroid/telephony/ims/RcsClientConfiguration;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_125

    :pswitch_55  #0xc
    invoke-virtual {p0}, Landroid/telephony/ims/aidl/IImsConfig$Stub;->triggerRcsReconfiguration()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_125

    :pswitch_5d  #0xb
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/ims/aidl/IRcsConfigCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IRcsConfigCallback;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/IImsConfig$Stub;->removeRcsConfigCallback(Landroid/telephony/ims/aidl/IRcsConfigCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_125

    :pswitch_70  #0xa
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/ims/aidl/IRcsConfigCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IRcsConfigCallback;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/IImsConfig$Stub;->addRcsConfigCallback(Landroid/telephony/ims/aidl/IRcsConfigCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_125

    :pswitch_83  #0x9
    invoke-virtual {p0}, Landroid/telephony/ims/aidl/IImsConfig$Stub;->notifyRcsAutoConfigurationRemoved()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_125

    :pswitch_8b  #0x8
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/telephony/ims/aidl/IImsConfig$Stub;->notifyRcsAutoConfigurationReceived([BZ)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_125

    :pswitch_9e  #0x7
    sget-object v2, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PersistableBundle;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/IImsConfig$Stub;->updateImsCarrierConfigs(Landroid/os/PersistableBundle;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_125

    :pswitch_b1  #0x6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/telephony/ims/aidl/IImsConfig$Stub;->setConfigString(ILjava/lang/String;)I

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_125

    :pswitch_c7  #0x5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/telephony/ims/aidl/IImsConfig$Stub;->setConfigInt(II)I

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_125

    :pswitch_dd  #0x4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/IImsConfig$Stub;->getConfigString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_125

    :pswitch_ef  #0x3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/IImsConfig$Stub;->getConfigInt(I)I

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_125

    :pswitch_101  #0x2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/ims/aidl/IImsConfigCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsConfigCallback;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/IImsConfig$Stub;->removeImsConfigCallback(Landroid/telephony/ims/aidl/IImsConfigCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_125

    :pswitch_113  #0x1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/ims/aidl/IImsConfigCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsConfigCallback;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/IImsConfig$Stub;->addImsConfigCallback(Landroid/telephony/ims/aidl/IImsConfigCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    nop

    :goto_125
    return v1

    :pswitch_data_126
    .packed-switch 0x5f4e5446
        :pswitch_18  #5f4e5446
    .end packed-switch

    :pswitch_data_12c
    .packed-switch 0x1
        :pswitch_113  #00000001
        :pswitch_101  #00000002
        :pswitch_ef  #00000003
        :pswitch_dd  #00000004
        :pswitch_c7  #00000005
        :pswitch_b1  #00000006
        :pswitch_9e  #00000007
        :pswitch_8b  #00000008
        :pswitch_83  #00000009
        :pswitch_70  #0000000a
        :pswitch_5d  #0000000b
        :pswitch_55  #0000000c
        :pswitch_42  #0000000d
        :pswitch_2f  #0000000e
        :pswitch_1c  #0000000f
    .end packed-switch
.end method
