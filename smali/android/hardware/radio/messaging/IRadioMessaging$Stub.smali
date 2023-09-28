# classes2.dex

.class public abstract Landroid/hardware/radio/messaging/IRadioMessaging$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Landroid/hardware/radio/messaging/IRadioMessaging;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/messaging/IRadioMessaging;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/radio/messaging/IRadioMessaging$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_acknowledgeIncomingGsmSmsWithPdu:I = 0x1

.field static final TRANSACTION_acknowledgeLastIncomingCdmaSms:I = 0x2

.field static final TRANSACTION_acknowledgeLastIncomingGsmSms:I = 0x3

.field static final TRANSACTION_deleteSmsOnRuim:I = 0x4

.field static final TRANSACTION_deleteSmsOnSim:I = 0x5

.field static final TRANSACTION_getCdmaBroadcastConfig:I = 0x6

.field static final TRANSACTION_getGsmBroadcastConfig:I = 0x7

.field static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_getSmscAddress:I = 0x8

.field static final TRANSACTION_reportSmsMemoryStatus:I = 0x9

.field static final TRANSACTION_responseAcknowledgement:I = 0xa

.field static final TRANSACTION_sendCdmaSms:I = 0xb

.field static final TRANSACTION_sendCdmaSmsExpectMore:I = 0xc

.field static final TRANSACTION_sendImsSms:I = 0xd

.field static final TRANSACTION_sendSms:I = 0xe

.field static final TRANSACTION_sendSmsExpectMore:I = 0xf

.field static final TRANSACTION_setCdmaBroadcastActivation:I = 0x10

.field static final TRANSACTION_setCdmaBroadcastConfig:I = 0x11

.field static final TRANSACTION_setGsmBroadcastActivation:I = 0x12

.field static final TRANSACTION_setGsmBroadcastConfig:I = 0x13

.field static final TRANSACTION_setResponseFunctions:I = 0x14

.field static final TRANSACTION_setSmscAddress:I = 0x15

.field static final TRANSACTION_writeSmsToRuim:I = 0x16

.field static final TRANSACTION_writeSmsToSim:I = 0x17


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/radio/messaging/IRadioMessaging$Stub;->markVintfStability()V

    sget-object v0, Landroid/hardware/radio/messaging/IRadioMessaging$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/hardware/radio/messaging/IRadioMessaging$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/radio/messaging/IRadioMessaging;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    sget-object v0, Landroid/hardware/radio/messaging/IRadioMessaging$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/radio/messaging/IRadioMessaging;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Landroid/hardware/radio/messaging/IRadioMessaging;

    return-object v1

    :cond_14
    new-instance v1, Landroid/hardware/radio/messaging/IRadioMessaging$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/radio/messaging/IRadioMessaging$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-object v0, Landroid/hardware/radio/messaging/IRadioMessaging$Stub;->DESCRIPTOR:Ljava/lang/String;

    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    sparse-switch p1, :sswitch_data_1bc

    packed-switch p1, :pswitch_data_1ca

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :sswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :sswitch_1c
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p0}, Landroid/hardware/radio/messaging/IRadioMessaging$Stub;->getInterfaceVersion()I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :sswitch_27
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p0}, Landroid/hardware/radio/messaging/IRadioMessaging$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_32  #0x17
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    sget-object v3, Landroid/hardware/radio/messaging/SmsWriteArgs;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/messaging/SmsWriteArgs;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/messaging/IRadioMessaging$Stub;->writeSmsToSim(ILandroid/hardware/radio/messaging/SmsWriteArgs;)V

    goto/16 :goto_1bb

    :pswitch_46  #0x16
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    sget-object v3, Landroid/hardware/radio/messaging/CdmaSmsWriteArgs;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/messaging/CdmaSmsWriteArgs;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/messaging/IRadioMessaging$Stub;->writeSmsToRuim(ILandroid/hardware/radio/messaging/CdmaSmsWriteArgs;)V

    goto/16 :goto_1bb

    :pswitch_5a  #0x15
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/messaging/IRadioMessaging$Stub;->setSmscAddress(ILjava/lang/String;)V

    goto/16 :goto_1bb

    :pswitch_6a  #0x14
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/radio/messaging/IRadioMessagingResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/radio/messaging/IRadioMessagingResponse;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/radio/messaging/IRadioMessagingIndication$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/radio/messaging/IRadioMessagingIndication;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/messaging/IRadioMessaging$Stub;->setResponseFunctions(Landroid/hardware/radio/messaging/IRadioMessagingResponse;Landroid/hardware/radio/messaging/IRadioMessagingIndication;)V

    goto/16 :goto_1bb

    :pswitch_82  #0x13
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    sget-object v3, Landroid/hardware/radio/messaging/GsmBroadcastSmsConfigInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/hardware/radio/messaging/GsmBroadcastSmsConfigInfo;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/messaging/IRadioMessaging$Stub;->setGsmBroadcastConfig(I[Landroid/hardware/radio/messaging/GsmBroadcastSmsConfigInfo;)V

    goto/16 :goto_1bb

    :pswitch_96  #0x12
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/messaging/IRadioMessaging$Stub;->setGsmBroadcastActivation(IZ)V

    goto/16 :goto_1bb

    :pswitch_a6  #0x11
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    sget-object v3, Landroid/hardware/radio/messaging/CdmaBroadcastSmsConfigInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/hardware/radio/messaging/CdmaBroadcastSmsConfigInfo;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/messaging/IRadioMessaging$Stub;->setCdmaBroadcastConfig(I[Landroid/hardware/radio/messaging/CdmaBroadcastSmsConfigInfo;)V

    goto/16 :goto_1bb

    :pswitch_ba  #0x10
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/messaging/IRadioMessaging$Stub;->setCdmaBroadcastActivation(IZ)V

    goto/16 :goto_1bb

    :pswitch_ca  #0xf
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    sget-object v3, Landroid/hardware/radio/messaging/GsmSmsMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/messaging/GsmSmsMessage;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/messaging/IRadioMessaging$Stub;->sendSmsExpectMore(ILandroid/hardware/radio/messaging/GsmSmsMessage;)V

    goto/16 :goto_1bb

    :pswitch_de  #0xe
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    sget-object v3, Landroid/hardware/radio/messaging/GsmSmsMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/messaging/GsmSmsMessage;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/messaging/IRadioMessaging$Stub;->sendSms(ILandroid/hardware/radio/messaging/GsmSmsMessage;)V

    goto/16 :goto_1bb

    :pswitch_f2  #0xd
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    sget-object v3, Landroid/hardware/radio/messaging/ImsSmsMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/messaging/ImsSmsMessage;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/messaging/IRadioMessaging$Stub;->sendImsSms(ILandroid/hardware/radio/messaging/ImsSmsMessage;)V

    goto/16 :goto_1bb

    :pswitch_106  #0xc
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    sget-object v3, Landroid/hardware/radio/messaging/CdmaSmsMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/messaging/CdmaSmsMessage;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/messaging/IRadioMessaging$Stub;->sendCdmaSmsExpectMore(ILandroid/hardware/radio/messaging/CdmaSmsMessage;)V

    goto/16 :goto_1bb

    :pswitch_11a  #0xb
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    sget-object v3, Landroid/hardware/radio/messaging/CdmaSmsMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/messaging/CdmaSmsMessage;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/messaging/IRadioMessaging$Stub;->sendCdmaSms(ILandroid/hardware/radio/messaging/CdmaSmsMessage;)V

    goto/16 :goto_1bb

    :pswitch_12e  #0xa
    invoke-virtual {p0}, Landroid/hardware/radio/messaging/IRadioMessaging$Stub;->responseAcknowledgement()V

    goto/16 :goto_1bb

    :pswitch_133  #0x9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/messaging/IRadioMessaging$Stub;->reportSmsMemoryStatus(IZ)V

    goto/16 :goto_1bb

    :pswitch_143  #0x8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/hardware/radio/messaging/IRadioMessaging$Stub;->getSmscAddress(I)V

    goto :goto_1bb

    :pswitch_14e  #0x7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/hardware/radio/messaging/IRadioMessaging$Stub;->getGsmBroadcastConfig(I)V

    goto :goto_1bb

    :pswitch_159  #0x6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/hardware/radio/messaging/IRadioMessaging$Stub;->getCdmaBroadcastConfig(I)V

    goto :goto_1bb

    :pswitch_164  #0x5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/messaging/IRadioMessaging$Stub;->deleteSmsOnSim(II)V

    goto :goto_1bb

    :pswitch_173  #0x4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/messaging/IRadioMessaging$Stub;->deleteSmsOnRuim(II)V

    goto :goto_1bb

    :pswitch_182  #0x3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4}, Landroid/hardware/radio/messaging/IRadioMessaging$Stub;->acknowledgeLastIncomingGsmSms(IZI)V

    goto :goto_1bb

    :pswitch_195  #0x2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    sget-object v3, Landroid/hardware/radio/messaging/CdmaSmsAck;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/messaging/CdmaSmsAck;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/messaging/IRadioMessaging$Stub;->acknowledgeLastIncomingCdmaSms(ILandroid/hardware/radio/messaging/CdmaSmsAck;)V

    goto :goto_1bb

    :pswitch_1a8  #0x1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4}, Landroid/hardware/radio/messaging/IRadioMessaging$Stub;->acknowledgeIncomingGsmSmsWithPdu(IZLjava/lang/String;)V

    nop

    :goto_1bb
    return v1

    :sswitch_data_1bc
    .sparse-switch
        0xfffffe -> :sswitch_27
        0xffffff -> :sswitch_1c
        0x5f4e5446 -> :sswitch_18
    .end sparse-switch

    :pswitch_data_1ca
    .packed-switch 0x1
        :pswitch_1a8  #00000001
        :pswitch_195  #00000002
        :pswitch_182  #00000003
        :pswitch_173  #00000004
        :pswitch_164  #00000005
        :pswitch_159  #00000006
        :pswitch_14e  #00000007
        :pswitch_143  #00000008
        :pswitch_133  #00000009
        :pswitch_12e  #0000000a
        :pswitch_11a  #0000000b
        :pswitch_106  #0000000c
        :pswitch_f2  #0000000d
        :pswitch_de  #0000000e
        :pswitch_ca  #0000000f
        :pswitch_ba  #00000010
        :pswitch_a6  #00000011
        :pswitch_96  #00000012
        :pswitch_82  #00000013
        :pswitch_6a  #00000014
        :pswitch_5a  #00000015
        :pswitch_46  #00000016
        :pswitch_32  #00000017
    .end packed-switch
.end method
