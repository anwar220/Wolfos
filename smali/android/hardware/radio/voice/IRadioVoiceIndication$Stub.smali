# classes2.dex

.class public abstract Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Landroid/hardware/radio/voice/IRadioVoiceIndication;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/voice/IRadioVoiceIndication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_callRing:I = 0x1

.field static final TRANSACTION_callStateChanged:I = 0x2

.field static final TRANSACTION_cdmaCallWaiting:I = 0x3

.field static final TRANSACTION_cdmaInfoRec:I = 0x4

.field static final TRANSACTION_cdmaOtaProvisionStatus:I = 0x5

.field static final TRANSACTION_currentEmergencyNumberList:I = 0x6

.field static final TRANSACTION_enterEmergencyCallbackMode:I = 0x7

.field static final TRANSACTION_exitEmergencyCallbackMode:I = 0x8

.field static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_indicateRingbackTone:I = 0x9

.field static final TRANSACTION_onSupplementaryServiceIndication:I = 0xa

.field static final TRANSACTION_onUssd:I = 0xb

.field static final TRANSACTION_resendIncallMute:I = 0xc

.field static final TRANSACTION_srvccStateNotify:I = 0xd

.field static final TRANSACTION_stkCallControlAlphaNotify:I = 0xe

.field static final TRANSACTION_stkCallSetup:I = 0xf


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub;->markVintfStability()V

    sget-object v0, Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/radio/voice/IRadioVoiceIndication;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    sget-object v0, Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/radio/voice/IRadioVoiceIndication;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Landroid/hardware/radio/voice/IRadioVoiceIndication;

    return-object v1

    :cond_14
    new-instance v1, Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    sget-object v0, Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub;->DESCRIPTOR:Ljava/lang/String;

    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    sparse-switch p1, :sswitch_data_128

    packed-switch p1, :pswitch_data_136

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :sswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :sswitch_1c
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p0}, Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub;->getInterfaceVersion()I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :sswitch_27
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p0}, Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_32  #0xf
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4}, Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub;->stkCallSetup(IJ)V

    goto/16 :goto_127

    :pswitch_42  #0xe
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub;->stkCallControlAlphaNotify(ILjava/lang/String;)V

    goto/16 :goto_127

    :pswitch_52  #0xd
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub;->srvccStateNotify(II)V

    goto/16 :goto_127

    :pswitch_62  #0xc
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub;->resendIncallMute(I)V

    goto/16 :goto_127

    :pswitch_6e  #0xb
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4}, Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub;->onUssd(IILjava/lang/String;)V

    goto/16 :goto_127

    :pswitch_82  #0xa
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    sget-object v3, Landroid/hardware/radio/voice/StkCcUnsolSsResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/voice/StkCcUnsolSsResult;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub;->onSupplementaryServiceIndication(ILandroid/hardware/radio/voice/StkCcUnsolSsResult;)V

    goto/16 :goto_127

    :pswitch_96  #0x9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub;->indicateRingbackTone(IZ)V

    goto/16 :goto_127

    :pswitch_a6  #0x8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub;->exitEmergencyCallbackMode(I)V

    goto/16 :goto_127

    :pswitch_b2  #0x7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub;->enterEmergencyCallbackMode(I)V

    goto :goto_127

    :pswitch_bd  #0x6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    sget-object v3, Landroid/hardware/radio/voice/EmergencyNumber;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/hardware/radio/voice/EmergencyNumber;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub;->currentEmergencyNumberList(I[Landroid/hardware/radio/voice/EmergencyNumber;)V

    goto :goto_127

    :pswitch_d0  #0x5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub;->cdmaOtaProvisionStatus(II)V

    goto :goto_127

    :pswitch_df  #0x4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    sget-object v3, Landroid/hardware/radio/voice/CdmaInformationRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/hardware/radio/voice/CdmaInformationRecord;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub;->cdmaInfoRec(I[Landroid/hardware/radio/voice/CdmaInformationRecord;)V

    goto :goto_127

    :pswitch_f2  #0x3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    sget-object v3, Landroid/hardware/radio/voice/CdmaCallWaiting;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/voice/CdmaCallWaiting;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub;->cdmaCallWaiting(ILandroid/hardware/radio/voice/CdmaCallWaiting;)V

    goto :goto_127

    :pswitch_105  #0x2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub;->callStateChanged(I)V

    goto :goto_127

    :pswitch_110  #0x1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    sget-object v4, Landroid/hardware/radio/voice/CdmaSignalInfoRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/radio/voice/CdmaSignalInfoRecord;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4}, Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub;->callRing(IZLandroid/hardware/radio/voice/CdmaSignalInfoRecord;)V

    nop

    :goto_127
    return v1

    :sswitch_data_128
    .sparse-switch
        0xfffffe -> :sswitch_27
        0xffffff -> :sswitch_1c
        0x5f4e5446 -> :sswitch_18
    .end sparse-switch

    :pswitch_data_136
    .packed-switch 0x1
        :pswitch_110  #00000001
        :pswitch_105  #00000002
        :pswitch_f2  #00000003
        :pswitch_df  #00000004
        :pswitch_d0  #00000005
        :pswitch_bd  #00000006
        :pswitch_b2  #00000007
        :pswitch_a6  #00000008
        :pswitch_96  #00000009
        :pswitch_82  #0000000a
        :pswitch_6e  #0000000b
        :pswitch_62  #0000000c
        :pswitch_52  #0000000d
        :pswitch_42  #0000000e
        :pswitch_32  #0000000f
    .end packed-switch
.end method
