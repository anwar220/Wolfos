# classes2.dex

.class public abstract Landroid/hardware/radio/voice/IRadioVoice$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Landroid/hardware/radio/voice/IRadioVoice;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/voice/IRadioVoice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_acceptCall:I = 0x1

.field static final TRANSACTION_cancelPendingUssd:I = 0x2

.field static final TRANSACTION_conference:I = 0x3

.field static final TRANSACTION_dial:I = 0x4

.field static final TRANSACTION_emergencyDial:I = 0x5

.field static final TRANSACTION_exitEmergencyCallbackMode:I = 0x6

.field static final TRANSACTION_explicitCallTransfer:I = 0x7

.field static final TRANSACTION_getCallForwardStatus:I = 0x8

.field static final TRANSACTION_getCallWaiting:I = 0x9

.field static final TRANSACTION_getClip:I = 0xa

.field static final TRANSACTION_getClir:I = 0xb

.field static final TRANSACTION_getCurrentCalls:I = 0xc

.field static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_getLastCallFailCause:I = 0xd

.field static final TRANSACTION_getMute:I = 0xe

.field static final TRANSACTION_getPreferredVoicePrivacy:I = 0xf

.field static final TRANSACTION_getTtyMode:I = 0x10

.field static final TRANSACTION_handleStkCallSetupRequestFromSim:I = 0x11

.field static final TRANSACTION_hangup:I = 0x12

.field static final TRANSACTION_hangupForegroundResumeBackground:I = 0x13

.field static final TRANSACTION_hangupWaitingOrBackground:I = 0x14

.field static final TRANSACTION_isVoNrEnabled:I = 0x15

.field static final TRANSACTION_rejectCall:I = 0x16

.field static final TRANSACTION_responseAcknowledgement:I = 0x17

.field static final TRANSACTION_sendBurstDtmf:I = 0x18

.field static final TRANSACTION_sendCdmaFeatureCode:I = 0x19

.field static final TRANSACTION_sendDtmf:I = 0x1a

.field static final TRANSACTION_sendUssd:I = 0x1b

.field static final TRANSACTION_separateConnection:I = 0x1c

.field static final TRANSACTION_setCallForward:I = 0x1d

.field static final TRANSACTION_setCallWaiting:I = 0x1e

.field static final TRANSACTION_setClir:I = 0x1f

.field static final TRANSACTION_setMute:I = 0x20

.field static final TRANSACTION_setPreferredVoicePrivacy:I = 0x21

.field static final TRANSACTION_setResponseFunctions:I = 0x22

.field static final TRANSACTION_setTtyMode:I = 0x23

.field static final TRANSACTION_setVoNrEnabled:I = 0x24

.field static final TRANSACTION_startDtmf:I = 0x25

.field static final TRANSACTION_stopDtmf:I = 0x26

.field static final TRANSACTION_switchWaitingOrHoldingAndActive:I = 0x27


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/radio/voice/IRadioVoice$Stub;->markVintfStability()V

    sget-object v0, Landroid/hardware/radio/voice/IRadioVoice$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/hardware/radio/voice/IRadioVoice$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/radio/voice/IRadioVoice;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    sget-object v0, Landroid/hardware/radio/voice/IRadioVoice$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/radio/voice/IRadioVoice;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Landroid/hardware/radio/voice/IRadioVoice;

    return-object v1

    :cond_14
    new-instance v1, Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v8, p0

    move/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    sget-object v12, Landroid/hardware/radio/voice/IRadioVoice$Stub;->DESCRIPTOR:Ljava/lang/String;

    const/4 v13, 0x1

    if-lt v9, v13, :cond_15

    const v0, 0xffffff

    if-gt v9, v0, :cond_15

    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_15
    sparse-switch v9, :sswitch_data_29a

    packed-switch v9, :pswitch_data_2a8

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :sswitch_20
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v13

    :sswitch_24
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/voice/IRadioVoice$Stub;->getInterfaceVersion()I

    move-result v0

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v13

    :sswitch_2f
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/voice/IRadioVoice$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v13

    :pswitch_3a  #0x27
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v8, v0}, Landroid/hardware/radio/voice/IRadioVoice$Stub;->switchWaitingOrHoldingAndActive(I)V

    goto/16 :goto_298

    :pswitch_46  #0x26
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v8, v0}, Landroid/hardware/radio/voice/IRadioVoice$Stub;->stopDtmf(I)V

    goto/16 :goto_298

    :pswitch_52  #0x25
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v8, v0, v1}, Landroid/hardware/radio/voice/IRadioVoice$Stub;->startDtmf(ILjava/lang/String;)V

    goto/16 :goto_298

    :pswitch_62  #0x24
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v8, v0, v1}, Landroid/hardware/radio/voice/IRadioVoice$Stub;->setVoNrEnabled(IZ)V

    goto/16 :goto_298

    :pswitch_72  #0x23
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v8, v0, v1}, Landroid/hardware/radio/voice/IRadioVoice$Stub;->setTtyMode(II)V

    goto/16 :goto_298

    :pswitch_82  #0x22
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/radio/voice/IRadioVoiceResponse;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/radio/voice/IRadioVoiceIndication;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v8, v0, v1}, Landroid/hardware/radio/voice/IRadioVoice$Stub;->setResponseFunctions(Landroid/hardware/radio/voice/IRadioVoiceResponse;Landroid/hardware/radio/voice/IRadioVoiceIndication;)V

    goto/16 :goto_298

    :pswitch_9a  #0x21
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v8, v0, v1}, Landroid/hardware/radio/voice/IRadioVoice$Stub;->setPreferredVoicePrivacy(IZ)V

    goto/16 :goto_298

    :pswitch_aa  #0x20
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v8, v0, v1}, Landroid/hardware/radio/voice/IRadioVoice$Stub;->setMute(IZ)V

    goto/16 :goto_298

    :pswitch_ba  #0x1f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v8, v0, v1}, Landroid/hardware/radio/voice/IRadioVoice$Stub;->setClir(II)V

    goto/16 :goto_298

    :pswitch_ca  #0x1e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v8, v0, v1, v2}, Landroid/hardware/radio/voice/IRadioVoice$Stub;->setCallWaiting(IZI)V

    goto/16 :goto_298

    :pswitch_de  #0x1d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    sget-object v1, Landroid/hardware/radio/voice/CallForwardInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/voice/CallForwardInfo;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v8, v0, v1}, Landroid/hardware/radio/voice/IRadioVoice$Stub;->setCallForward(ILandroid/hardware/radio/voice/CallForwardInfo;)V

    goto/16 :goto_298

    :pswitch_f2  #0x1c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v8, v0, v1}, Landroid/hardware/radio/voice/IRadioVoice$Stub;->separateConnection(II)V

    goto/16 :goto_298

    :pswitch_102  #0x1b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v8, v0, v1}, Landroid/hardware/radio/voice/IRadioVoice$Stub;->sendUssd(ILjava/lang/String;)V

    goto/16 :goto_298

    :pswitch_112  #0x1a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v8, v0, v1}, Landroid/hardware/radio/voice/IRadioVoice$Stub;->sendDtmf(ILjava/lang/String;)V

    goto/16 :goto_298

    :pswitch_122  #0x19
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v8, v0, v1}, Landroid/hardware/radio/voice/IRadioVoice$Stub;->sendCdmaFeatureCode(ILjava/lang/String;)V

    goto/16 :goto_298

    :pswitch_132  #0x18
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/hardware/radio/voice/IRadioVoice$Stub;->sendBurstDtmf(ILjava/lang/String;II)V

    goto/16 :goto_298

    :pswitch_14a  #0x17
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/voice/IRadioVoice$Stub;->responseAcknowledgement()V

    goto/16 :goto_298

    :pswitch_14f  #0x16
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v8, v0}, Landroid/hardware/radio/voice/IRadioVoice$Stub;->rejectCall(I)V

    goto/16 :goto_298

    :pswitch_15b  #0x15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v8, v0}, Landroid/hardware/radio/voice/IRadioVoice$Stub;->isVoNrEnabled(I)V

    goto/16 :goto_298

    :pswitch_167  #0x14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v8, v0}, Landroid/hardware/radio/voice/IRadioVoice$Stub;->hangupWaitingOrBackground(I)V

    goto/16 :goto_298

    :pswitch_173  #0x13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v8, v0}, Landroid/hardware/radio/voice/IRadioVoice$Stub;->hangupForegroundResumeBackground(I)V

    goto/16 :goto_298

    :pswitch_17f  #0x12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v8, v0, v1}, Landroid/hardware/radio/voice/IRadioVoice$Stub;->hangup(II)V

    goto/16 :goto_298

    :pswitch_18f  #0x11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v8, v0, v1}, Landroid/hardware/radio/voice/IRadioVoice$Stub;->handleStkCallSetupRequestFromSim(IZ)V

    goto/16 :goto_298

    :pswitch_19f  #0x10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v8, v0}, Landroid/hardware/radio/voice/IRadioVoice$Stub;->getTtyMode(I)V

    goto/16 :goto_298

    :pswitch_1ab  #0xf
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v8, v0}, Landroid/hardware/radio/voice/IRadioVoice$Stub;->getPreferredVoicePrivacy(I)V

    goto/16 :goto_298

    :pswitch_1b7  #0xe
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v8, v0}, Landroid/hardware/radio/voice/IRadioVoice$Stub;->getMute(I)V

    goto/16 :goto_298

    :pswitch_1c3  #0xd
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v8, v0}, Landroid/hardware/radio/voice/IRadioVoice$Stub;->getLastCallFailCause(I)V

    goto/16 :goto_298

    :pswitch_1cf  #0xc
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v8, v0}, Landroid/hardware/radio/voice/IRadioVoice$Stub;->getCurrentCalls(I)V

    goto/16 :goto_298

    :pswitch_1db  #0xb
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v8, v0}, Landroid/hardware/radio/voice/IRadioVoice$Stub;->getClir(I)V

    goto/16 :goto_298

    :pswitch_1e7  #0xa
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v8, v0}, Landroid/hardware/radio/voice/IRadioVoice$Stub;->getClip(I)V

    goto/16 :goto_298

    :pswitch_1f3  #0x9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v8, v0, v1}, Landroid/hardware/radio/voice/IRadioVoice$Stub;->getCallWaiting(II)V

    goto/16 :goto_298

    :pswitch_203  #0x8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    sget-object v1, Landroid/hardware/radio/voice/CallForwardInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/voice/CallForwardInfo;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v8, v0, v1}, Landroid/hardware/radio/voice/IRadioVoice$Stub;->getCallForwardStatus(ILandroid/hardware/radio/voice/CallForwardInfo;)V

    goto/16 :goto_298

    :pswitch_217  #0x7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v8, v0}, Landroid/hardware/radio/voice/IRadioVoice$Stub;->explicitCallTransfer(I)V

    goto/16 :goto_298

    :pswitch_223  #0x6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v8, v0}, Landroid/hardware/radio/voice/IRadioVoice$Stub;->exitEmergencyCallbackMode(I)V

    goto :goto_298

    :pswitch_22e  #0x5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    sget-object v0, Landroid/hardware/radio/voice/Dial;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/hardware/radio/voice/Dial;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v19

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v20

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move v1, v14

    move-object v2, v15

    move/from16 v3, v16

    move-object/from16 v4, v17

    move/from16 v5, v18

    move/from16 v6, v19

    move/from16 v7, v20

    invoke-virtual/range {v0 .. v7}, Landroid/hardware/radio/voice/IRadioVoice$Stub;->emergencyDial(ILandroid/hardware/radio/voice/Dial;I[Ljava/lang/String;IZZ)V

    goto :goto_298

    :pswitch_264  #0x4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    sget-object v1, Landroid/hardware/radio/voice/Dial;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/voice/Dial;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v8, v0, v1}, Landroid/hardware/radio/voice/IRadioVoice$Stub;->dial(ILandroid/hardware/radio/voice/Dial;)V

    goto :goto_298

    :pswitch_277  #0x3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v8, v0}, Landroid/hardware/radio/voice/IRadioVoice$Stub;->conference(I)V

    goto :goto_298

    :pswitch_282  #0x2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v8, v0}, Landroid/hardware/radio/voice/IRadioVoice$Stub;->cancelPendingUssd(I)V

    goto :goto_298

    :pswitch_28d  #0x1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v8, v0}, Landroid/hardware/radio/voice/IRadioVoice$Stub;->acceptCall(I)V

    nop

    :goto_298
    return v13

    nop

    :sswitch_data_29a
    .sparse-switch
        0xfffffe -> :sswitch_2f
        0xffffff -> :sswitch_24
        0x5f4e5446 -> :sswitch_20
    .end sparse-switch

    :pswitch_data_2a8
    .packed-switch 0x1
        :pswitch_28d  #00000001
        :pswitch_282  #00000002
        :pswitch_277  #00000003
        :pswitch_264  #00000004
        :pswitch_22e  #00000005
        :pswitch_223  #00000006
        :pswitch_217  #00000007
        :pswitch_203  #00000008
        :pswitch_1f3  #00000009
        :pswitch_1e7  #0000000a
        :pswitch_1db  #0000000b
        :pswitch_1cf  #0000000c
        :pswitch_1c3  #0000000d
        :pswitch_1b7  #0000000e
        :pswitch_1ab  #0000000f
        :pswitch_19f  #00000010
        :pswitch_18f  #00000011
        :pswitch_17f  #00000012
        :pswitch_173  #00000013
        :pswitch_167  #00000014
        :pswitch_15b  #00000015
        :pswitch_14f  #00000016
        :pswitch_14a  #00000017
        :pswitch_132  #00000018
        :pswitch_122  #00000019
        :pswitch_112  #0000001a
        :pswitch_102  #0000001b
        :pswitch_f2  #0000001c
        :pswitch_de  #0000001d
        :pswitch_ca  #0000001e
        :pswitch_ba  #0000001f
        :pswitch_aa  #00000020
        :pswitch_9a  #00000021
        :pswitch_82  #00000022
        :pswitch_72  #00000023
        :pswitch_62  #00000024
        :pswitch_52  #00000025
        :pswitch_46  #00000026
        :pswitch_3a  #00000027
    .end packed-switch
.end method
