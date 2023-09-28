# classes2.dex

.class public abstract Landroid/hardware/radio/sim/IRadioSim$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Landroid/hardware/radio/sim/IRadioSim;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/sim/IRadioSim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/radio/sim/IRadioSim$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_areUiccApplicationsEnabled:I = 0x1

.field static final TRANSACTION_changeIccPin2ForApp:I = 0x2

.field static final TRANSACTION_changeIccPinForApp:I = 0x3

.field static final TRANSACTION_enableUiccApplications:I = 0x4

.field static final TRANSACTION_getAllowedCarriers:I = 0x5

.field static final TRANSACTION_getCdmaSubscription:I = 0x6

.field static final TRANSACTION_getCdmaSubscriptionSource:I = 0x7

.field static final TRANSACTION_getFacilityLockForApp:I = 0x8

.field static final TRANSACTION_getIccCardStatus:I = 0x9

.field static final TRANSACTION_getImsiForApp:I = 0xa

.field static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_getSimPhonebookCapacity:I = 0xb

.field static final TRANSACTION_getSimPhonebookRecords:I = 0xc

.field static final TRANSACTION_iccCloseLogicalChannel:I = 0xd

.field static final TRANSACTION_iccIoForApp:I = 0xe

.field static final TRANSACTION_iccOpenLogicalChannel:I = 0xf

.field static final TRANSACTION_iccTransmitApduBasicChannel:I = 0x10

.field static final TRANSACTION_iccTransmitApduLogicalChannel:I = 0x11

.field static final TRANSACTION_reportStkServiceIsRunning:I = 0x12

.field static final TRANSACTION_requestIccSimAuthentication:I = 0x13

.field static final TRANSACTION_responseAcknowledgement:I = 0x14

.field static final TRANSACTION_sendEnvelope:I = 0x15

.field static final TRANSACTION_sendEnvelopeWithStatus:I = 0x16

.field static final TRANSACTION_sendTerminalResponseToSim:I = 0x17

.field static final TRANSACTION_setAllowedCarriers:I = 0x18

.field static final TRANSACTION_setCarrierInfoForImsiEncryption:I = 0x19

.field static final TRANSACTION_setCdmaSubscriptionSource:I = 0x1a

.field static final TRANSACTION_setFacilityLockForApp:I = 0x1b

.field static final TRANSACTION_setResponseFunctions:I = 0x1c

.field static final TRANSACTION_setSimCardPower:I = 0x1d

.field static final TRANSACTION_setUiccSubscription:I = 0x1e

.field static final TRANSACTION_supplyIccPin2ForApp:I = 0x1f

.field static final TRANSACTION_supplyIccPinForApp:I = 0x20

.field static final TRANSACTION_supplyIccPuk2ForApp:I = 0x21

.field static final TRANSACTION_supplyIccPukForApp:I = 0x22

.field static final TRANSACTION_supplySimDepersonalization:I = 0x23

.field static final TRANSACTION_updateSimPhonebookRecords:I = 0x24


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/radio/sim/IRadioSim$Stub;->markVintfStability()V

    sget-object v0, Landroid/hardware/radio/sim/IRadioSim$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/hardware/radio/sim/IRadioSim$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/radio/sim/IRadioSim;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    sget-object v0, Landroid/hardware/radio/sim/IRadioSim$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/radio/sim/IRadioSim;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Landroid/hardware/radio/sim/IRadioSim;

    return-object v1

    :cond_14
    new-instance v1, Landroid/hardware/radio/sim/IRadioSim$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/radio/sim/IRadioSim$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v7, p0

    move/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    sget-object v11, Landroid/hardware/radio/sim/IRadioSim$Stub;->DESCRIPTOR:Ljava/lang/String;

    const/4 v12, 0x1

    if-lt v8, v12, :cond_15

    const v0, 0xffffff

    if-gt v8, v0, :cond_15

    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_15
    sparse-switch v8, :sswitch_data_2d8

    packed-switch v8, :pswitch_data_2e6

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :sswitch_20
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v12

    :sswitch_24
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/sim/IRadioSim$Stub;->getInterfaceVersion()I

    move-result v0

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :sswitch_2f
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/sim/IRadioSim$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v12

    :pswitch_3a  #0x24
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    sget-object v1, Landroid/hardware/radio/sim/PhonebookRecordInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/sim/PhonebookRecordInfo;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/sim/IRadioSim$Stub;->updateSimPhonebookRecords(ILandroid/hardware/radio/sim/PhonebookRecordInfo;)V

    goto/16 :goto_2d6

    :pswitch_4e  #0x23
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0, v1, v2}, Landroid/hardware/radio/sim/IRadioSim$Stub;->supplySimDepersonalization(IILjava/lang/String;)V

    goto/16 :goto_2d6

    :pswitch_62  #0x22
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/hardware/radio/sim/IRadioSim$Stub;->supplyIccPukForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2d6

    :pswitch_7a  #0x21
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/hardware/radio/sim/IRadioSim$Stub;->supplyIccPuk2ForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2d6

    :pswitch_92  #0x20
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0, v1, v2}, Landroid/hardware/radio/sim/IRadioSim$Stub;->supplyIccPinForApp(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2d6

    :pswitch_a6  #0x1f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0, v1, v2}, Landroid/hardware/radio/sim/IRadioSim$Stub;->supplyIccPin2ForApp(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2d6

    :pswitch_ba  #0x1e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    sget-object v1, Landroid/hardware/radio/sim/SelectUiccSub;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/sim/SelectUiccSub;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/sim/IRadioSim$Stub;->setUiccSubscription(ILandroid/hardware/radio/sim/SelectUiccSub;)V

    goto/16 :goto_2d6

    :pswitch_ce  #0x1d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/sim/IRadioSim$Stub;->setSimCardPower(II)V

    goto/16 :goto_2d6

    :pswitch_de  #0x1c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/radio/sim/IRadioSimResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/radio/sim/IRadioSimResponse;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/radio/sim/IRadioSimIndication$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/radio/sim/IRadioSimIndication;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/sim/IRadioSim$Stub;->setResponseFunctions(Landroid/hardware/radio/sim/IRadioSimResponse;Landroid/hardware/radio/sim/IRadioSimIndication;)V

    goto/16 :goto_2d6

    :pswitch_f6  #0x1b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move v1, v13

    move-object v2, v14

    move v3, v15

    move-object/from16 v4, v16

    move/from16 v5, v17

    move-object/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/radio/sim/IRadioSim$Stub;->setFacilityLockForApp(ILjava/lang/String;ZLjava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_2d6

    :pswitch_121  #0x1a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/sim/IRadioSim$Stub;->setCdmaSubscriptionSource(II)V

    goto/16 :goto_2d6

    :pswitch_131  #0x19
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    sget-object v1, Landroid/hardware/radio/sim/ImsiEncryptionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/sim/ImsiEncryptionInfo;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/sim/IRadioSim$Stub;->setCarrierInfoForImsiEncryption(ILandroid/hardware/radio/sim/ImsiEncryptionInfo;)V

    goto/16 :goto_2d6

    :pswitch_145  #0x18
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    sget-object v1, Landroid/hardware/radio/sim/CarrierRestrictions;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/sim/CarrierRestrictions;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0, v1, v2}, Landroid/hardware/radio/sim/IRadioSim$Stub;->setAllowedCarriers(ILandroid/hardware/radio/sim/CarrierRestrictions;I)V

    goto/16 :goto_2d6

    :pswitch_15d  #0x17
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/sim/IRadioSim$Stub;->sendTerminalResponseToSim(ILjava/lang/String;)V

    goto/16 :goto_2d6

    :pswitch_16d  #0x16
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/sim/IRadioSim$Stub;->sendEnvelopeWithStatus(ILjava/lang/String;)V

    goto/16 :goto_2d6

    :pswitch_17d  #0x15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/sim/IRadioSim$Stub;->sendEnvelope(ILjava/lang/String;)V

    goto/16 :goto_2d6

    :pswitch_18d  #0x14
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/sim/IRadioSim$Stub;->responseAcknowledgement()V

    goto/16 :goto_2d6

    :pswitch_192  #0x13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/hardware/radio/sim/IRadioSim$Stub;->requestIccSimAuthentication(IILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2d6

    :pswitch_1aa  #0x12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0}, Landroid/hardware/radio/sim/IRadioSim$Stub;->reportStkServiceIsRunning(I)V

    goto/16 :goto_2d6

    :pswitch_1b6  #0x11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    sget-object v1, Landroid/hardware/radio/sim/SimApdu;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/sim/SimApdu;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/sim/IRadioSim$Stub;->iccTransmitApduLogicalChannel(ILandroid/hardware/radio/sim/SimApdu;)V

    goto/16 :goto_2d6

    :pswitch_1ca  #0x10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    sget-object v1, Landroid/hardware/radio/sim/SimApdu;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/sim/SimApdu;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/sim/IRadioSim$Stub;->iccTransmitApduBasicChannel(ILandroid/hardware/radio/sim/SimApdu;)V

    goto/16 :goto_2d6

    :pswitch_1de  #0xf
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0, v1, v2}, Landroid/hardware/radio/sim/IRadioSim$Stub;->iccOpenLogicalChannel(ILjava/lang/String;I)V

    goto/16 :goto_2d6

    :pswitch_1f2  #0xe
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    sget-object v1, Landroid/hardware/radio/sim/IccIo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/sim/IccIo;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/sim/IRadioSim$Stub;->iccIoForApp(ILandroid/hardware/radio/sim/IccIo;)V

    goto/16 :goto_2d6

    :pswitch_206  #0xd
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/sim/IRadioSim$Stub;->iccCloseLogicalChannel(II)V

    goto/16 :goto_2d6

    :pswitch_216  #0xc
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0}, Landroid/hardware/radio/sim/IRadioSim$Stub;->getSimPhonebookRecords(I)V

    goto/16 :goto_2d6

    :pswitch_222  #0xb
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0}, Landroid/hardware/radio/sim/IRadioSim$Stub;->getSimPhonebookCapacity(I)V

    goto/16 :goto_2d6

    :pswitch_22e  #0xa
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/sim/IRadioSim$Stub;->getImsiForApp(ILjava/lang/String;)V

    goto/16 :goto_2d6

    :pswitch_23e  #0x9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0}, Landroid/hardware/radio/sim/IRadioSim$Stub;->getIccCardStatus(I)V

    goto/16 :goto_2d6

    :pswitch_24a  #0x8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move v1, v6

    move-object v2, v13

    move-object v3, v14

    move v4, v15

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/radio/sim/IRadioSim$Stub;->getFacilityLockForApp(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_2d6

    :pswitch_26d  #0x7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0}, Landroid/hardware/radio/sim/IRadioSim$Stub;->getCdmaSubscriptionSource(I)V

    goto :goto_2d6

    :pswitch_278  #0x6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0}, Landroid/hardware/radio/sim/IRadioSim$Stub;->getCdmaSubscription(I)V

    goto :goto_2d6

    :pswitch_283  #0x5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0}, Landroid/hardware/radio/sim/IRadioSim$Stub;->getAllowedCarriers(I)V

    goto :goto_2d6

    :pswitch_28e  #0x4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/sim/IRadioSim$Stub;->enableUiccApplications(IZ)V

    goto :goto_2d6

    :pswitch_29d  #0x3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/hardware/radio/sim/IRadioSim$Stub;->changeIccPinForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2d6

    :pswitch_2b4  #0x2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/hardware/radio/sim/IRadioSim$Stub;->changeIccPin2ForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2d6

    :pswitch_2cb  #0x1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0}, Landroid/hardware/radio/sim/IRadioSim$Stub;->areUiccApplicationsEnabled(I)V

    nop

    :goto_2d6
    return v12

    nop

    :sswitch_data_2d8
    .sparse-switch
        0xfffffe -> :sswitch_2f
        0xffffff -> :sswitch_24
        0x5f4e5446 -> :sswitch_20
    .end sparse-switch

    :pswitch_data_2e6
    .packed-switch 0x1
        :pswitch_2cb  #00000001
        :pswitch_2b4  #00000002
        :pswitch_29d  #00000003
        :pswitch_28e  #00000004
        :pswitch_283  #00000005
        :pswitch_278  #00000006
        :pswitch_26d  #00000007
        :pswitch_24a  #00000008
        :pswitch_23e  #00000009
        :pswitch_22e  #0000000a
        :pswitch_222  #0000000b
        :pswitch_216  #0000000c
        :pswitch_206  #0000000d
        :pswitch_1f2  #0000000e
        :pswitch_1de  #0000000f
        :pswitch_1ca  #00000010
        :pswitch_1b6  #00000011
        :pswitch_1aa  #00000012
        :pswitch_192  #00000013
        :pswitch_18d  #00000014
        :pswitch_17d  #00000015
        :pswitch_16d  #00000016
        :pswitch_15d  #00000017
        :pswitch_145  #00000018
        :pswitch_131  #00000019
        :pswitch_121  #0000001a
        :pswitch_f6  #0000001b
        :pswitch_de  #0000001c
        :pswitch_ce  #0000001d
        :pswitch_ba  #0000001e
        :pswitch_a6  #0000001f
        :pswitch_92  #00000020
        :pswitch_7a  #00000021
        :pswitch_62  #00000022
        :pswitch_4e  #00000023
        :pswitch_3a  #00000024
    .end packed-switch
.end method
