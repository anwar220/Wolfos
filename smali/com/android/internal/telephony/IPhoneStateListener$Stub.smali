# classes4.dex

.class public abstract Lcom/android/internal/telephony/IPhoneStateListener$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/android/internal/telephony/IPhoneStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IPhoneStateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/IPhoneStateListener$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.IPhoneStateListener"

.field static final TRANSACTION_onActiveDataSubIdChanged:I = 0x17

.field static final TRANSACTION_onAllowedNetworkTypesChanged:I = 0x23

.field static final TRANSACTION_onBarringInfoChanged:I = 0x20

.field static final TRANSACTION_onCallAttributesChanged:I = 0x19

.field static final TRANSACTION_onCallDisconnectCauseChanged:I = 0x1d

.field static final TRANSACTION_onCallForwardingIndicatorChanged:I = 0x4

.field static final TRANSACTION_onCallStateChanged:I = 0x7

.field static final TRANSACTION_onCarrierNetworkChange:I = 0x13

.field static final TRANSACTION_onCellInfoChanged:I = 0xb

.field static final TRANSACTION_onCellLocationChanged:I = 0x5

.field static final TRANSACTION_onDataActivationStateChanged:I = 0x11

.field static final TRANSACTION_onDataActivity:I = 0x9

.field static final TRANSACTION_onDataConnectionRealTimeInfoChanged:I = 0xe

.field static final TRANSACTION_onDataConnectionStateChanged:I = 0x8

.field static final TRANSACTION_onDataEnabledChanged:I = 0x22

.field static final TRANSACTION_onDisplayInfoChanged:I = 0x15

.field static final TRANSACTION_onEmergencyNumberListChanged:I = 0x1a

.field static final TRANSACTION_onImsCallDisconnectCauseChanged:I = 0x1e

.field static final TRANSACTION_onLegacyCallStateChanged:I = 0x6

.field static final TRANSACTION_onLinkCapacityEstimateChanged:I = 0x24

.field static final TRANSACTION_onMessageWaitingIndicatorChanged:I = 0x3

.field static final TRANSACTION_onOemHookRawEvent:I = 0x12

.field static final TRANSACTION_onOutgoingEmergencyCall:I = 0x1b

.field static final TRANSACTION_onOutgoingEmergencySms:I = 0x1c

.field static final TRANSACTION_onPhoneCapabilityChanged:I = 0x16

.field static final TRANSACTION_onPhysicalChannelConfigChanged:I = 0x21

.field static final TRANSACTION_onPreciseCallStateChanged:I = 0xc

.field static final TRANSACTION_onPreciseDataConnectionStateChanged:I = 0xd

.field static final TRANSACTION_onRadioPowerStateChanged:I = 0x18

.field static final TRANSACTION_onRegistrationFailed:I = 0x1f

.field static final TRANSACTION_onServiceStateChanged:I = 0x1

.field static final TRANSACTION_onSignalStrengthChanged:I = 0x2

.field static final TRANSACTION_onSignalStrengthsChanged:I = 0xa

.field static final TRANSACTION_onSrvccStateChanged:I = 0xf

.field static final TRANSACTION_onUserMobileDataStateChanged:I = 0x14

.field static final TRANSACTION_onVoiceActivationStateChanged:I = 0x10


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.android.internal.telephony.IPhoneStateListener"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IPhoneStateListener;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "com.android.internal.telephony.IPhoneStateListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/internal/telephony/IPhoneStateListener;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Lcom/android/internal/telephony/IPhoneStateListener;

    return-object v1

    :cond_14
    new-instance v1, Lcom/android/internal/telephony/IPhoneStateListener$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/IPhoneStateListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_96

    const/4 v0, 0x0

    return-object v0

    :pswitch_5  #0x24
    const-string/jumbo v0, "onLinkCapacityEstimateChanged"

    return-object v0

    :pswitch_9  #0x23
    const-string/jumbo v0, "onAllowedNetworkTypesChanged"

    return-object v0

    :pswitch_d  #0x22
    const-string/jumbo v0, "onDataEnabledChanged"

    return-object v0

    :pswitch_11  #0x21
    const-string/jumbo v0, "onPhysicalChannelConfigChanged"

    return-object v0

    :pswitch_15  #0x20
    const-string/jumbo v0, "onBarringInfoChanged"

    return-object v0

    :pswitch_19  #0x1f
    const-string/jumbo v0, "onRegistrationFailed"

    return-object v0

    :pswitch_1d  #0x1e
    const-string/jumbo v0, "onImsCallDisconnectCauseChanged"

    return-object v0

    :pswitch_21  #0x1d
    const-string/jumbo v0, "onCallDisconnectCauseChanged"

    return-object v0

    :pswitch_25  #0x1c
    const-string/jumbo v0, "onOutgoingEmergencySms"

    return-object v0

    :pswitch_29  #0x1b
    const-string/jumbo v0, "onOutgoingEmergencyCall"

    return-object v0

    :pswitch_2d  #0x1a
    const-string/jumbo v0, "onEmergencyNumberListChanged"

    return-object v0

    :pswitch_31  #0x19
    const-string/jumbo v0, "onCallAttributesChanged"

    return-object v0

    :pswitch_35  #0x18
    const-string/jumbo v0, "onRadioPowerStateChanged"

    return-object v0

    :pswitch_39  #0x17
    const-string/jumbo v0, "onActiveDataSubIdChanged"

    return-object v0

    :pswitch_3d  #0x16
    const-string/jumbo v0, "onPhoneCapabilityChanged"

    return-object v0

    :pswitch_41  #0x15
    const-string/jumbo v0, "onDisplayInfoChanged"

    return-object v0

    :pswitch_45  #0x14
    const-string/jumbo v0, "onUserMobileDataStateChanged"

    return-object v0

    :pswitch_49  #0x13
    const-string/jumbo v0, "onCarrierNetworkChange"

    return-object v0

    :pswitch_4d  #0x12
    const-string/jumbo v0, "onOemHookRawEvent"

    return-object v0

    :pswitch_51  #0x11
    const-string/jumbo v0, "onDataActivationStateChanged"

    return-object v0

    :pswitch_55  #0x10
    const-string/jumbo v0, "onVoiceActivationStateChanged"

    return-object v0

    :pswitch_59  #0xf
    const-string/jumbo v0, "onSrvccStateChanged"

    return-object v0

    :pswitch_5d  #0xe
    const-string/jumbo v0, "onDataConnectionRealTimeInfoChanged"

    return-object v0

    :pswitch_61  #0xd
    const-string/jumbo v0, "onPreciseDataConnectionStateChanged"

    return-object v0

    :pswitch_65  #0xc
    const-string/jumbo v0, "onPreciseCallStateChanged"

    return-object v0

    :pswitch_69  #0xb
    const-string/jumbo v0, "onCellInfoChanged"

    return-object v0

    :pswitch_6d  #0xa
    const-string/jumbo v0, "onSignalStrengthsChanged"

    return-object v0

    :pswitch_71  #0x9
    const-string/jumbo v0, "onDataActivity"

    return-object v0

    :pswitch_75  #0x8
    const-string/jumbo v0, "onDataConnectionStateChanged"

    return-object v0

    :pswitch_79  #0x7
    const-string/jumbo v0, "onCallStateChanged"

    return-object v0

    :pswitch_7d  #0x6
    const-string/jumbo v0, "onLegacyCallStateChanged"

    return-object v0

    :pswitch_81  #0x5
    const-string/jumbo v0, "onCellLocationChanged"

    return-object v0

    :pswitch_85  #0x4
    const-string/jumbo v0, "onCallForwardingIndicatorChanged"

    return-object v0

    :pswitch_89  #0x3
    const-string/jumbo v0, "onMessageWaitingIndicatorChanged"

    return-object v0

    :pswitch_8d  #0x2
    const-string/jumbo v0, "onSignalStrengthChanged"

    return-object v0

    :pswitch_91  #0x1
    const-string/jumbo v0, "onServiceStateChanged"

    return-object v0

    nop

    :pswitch_data_96
    .packed-switch 0x1
        :pswitch_91  #00000001
        :pswitch_8d  #00000002
        :pswitch_89  #00000003
        :pswitch_85  #00000004
        :pswitch_81  #00000005
        :pswitch_7d  #00000006
        :pswitch_79  #00000007
        :pswitch_75  #00000008
        :pswitch_71  #00000009
        :pswitch_6d  #0000000a
        :pswitch_69  #0000000b
        :pswitch_65  #0000000c
        :pswitch_61  #0000000d
        :pswitch_5d  #0000000e
        :pswitch_59  #0000000f
        :pswitch_55  #00000010
        :pswitch_51  #00000011
        :pswitch_4d  #00000012
        :pswitch_49  #00000013
        :pswitch_45  #00000014
        :pswitch_41  #00000015
        :pswitch_3d  #00000016
        :pswitch_39  #00000017
        :pswitch_35  #00000018
        :pswitch_31  #00000019
        :pswitch_2d  #0000001a
        :pswitch_29  #0000001b
        :pswitch_25  #0000001c
        :pswitch_21  #0000001d
        :pswitch_1d  #0000001e
        :pswitch_19  #0000001f
        :pswitch_15  #00000020
        :pswitch_11  #00000021
        :pswitch_d  #00000022
        :pswitch_9  #00000023
        :pswitch_5  #00000024
    .end packed-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    const/16 v0, 0x23

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3

    invoke-static {p1}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    const-string v9, "com.android.internal.telephony.IPhoneStateListener"

    const/4 v10, 0x1

    if-lt v7, v10, :cond_13

    const v0, 0xffffff

    if-gt v7, v0, :cond_13

    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_13
    packed-switch v7, :pswitch_data_24a

    move-object/from16 v11, p3

    packed-switch v7, :pswitch_data_250

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :pswitch_20  #0x5f4e5446
    move-object/from16 v11, p3

    invoke-virtual {v11, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v10

    :pswitch_26  #0x24
    sget-object v0, Landroid/telephony/LinkCapacityEstimate;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onLinkCapacityEstimateChanged(Ljava/util/List;)V

    goto/16 :goto_248

    :pswitch_34  #0x23
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1, v2}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onAllowedNetworkTypesChanged(IJ)V

    goto/16 :goto_248

    :pswitch_44  #0x22
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onDataEnabledChanged(ZI)V

    goto/16 :goto_248

    :pswitch_54  #0x21
    sget-object v0, Landroid/telephony/PhysicalChannelConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onPhysicalChannelConfigChanged(Ljava/util/List;)V

    goto/16 :goto_248

    :pswitch_62  #0x20
    sget-object v0, Landroid/telephony/BarringInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/BarringInfo;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onBarringInfoChanged(Landroid/telephony/BarringInfo;)V

    goto/16 :goto_248

    :pswitch_72  #0x1f
    sget-object v0, Landroid/telephony/CellIdentity;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/telephony/CellIdentity;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move-object v1, v12

    move-object v2, v13

    move v3, v14

    move v4, v15

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onRegistrationFailed(Landroid/telephony/CellIdentity;Ljava/lang/String;III)V

    goto/16 :goto_248

    :pswitch_9b  #0x1e
    sget-object v0, Landroid/telephony/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/ims/ImsReasonInfo;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onImsCallDisconnectCauseChanged(Landroid/telephony/ims/ImsReasonInfo;)V

    goto/16 :goto_248

    :pswitch_ab  #0x1d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onCallDisconnectCauseChanged(II)V

    goto/16 :goto_248

    :pswitch_bb  #0x1c
    sget-object v0, Landroid/telephony/emergency/EmergencyNumber;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/emergency/EmergencyNumber;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onOutgoingEmergencySms(Landroid/telephony/emergency/EmergencyNumber;I)V

    goto/16 :goto_248

    :pswitch_cf  #0x1b
    sget-object v0, Landroid/telephony/emergency/EmergencyNumber;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/emergency/EmergencyNumber;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onOutgoingEmergencyCall(Landroid/telephony/emergency/EmergencyNumber;I)V

    goto/16 :goto_248

    :pswitch_e3  #0x1a
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v1}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onEmergencyNumberListChanged(Ljava/util/Map;)V

    goto/16 :goto_248

    :pswitch_f7  #0x19
    sget-object v0, Landroid/telephony/CallAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CallAttributes;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onCallAttributesChanged(Landroid/telephony/CallAttributes;)V

    goto/16 :goto_248

    :pswitch_107  #0x18
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onRadioPowerStateChanged(I)V

    goto/16 :goto_248

    :pswitch_113  #0x17
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onActiveDataSubIdChanged(I)V

    goto/16 :goto_248

    :pswitch_11f  #0x16
    sget-object v0, Landroid/telephony/PhoneCapability;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/PhoneCapability;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onPhoneCapabilityChanged(Landroid/telephony/PhoneCapability;)V

    goto/16 :goto_248

    :pswitch_12f  #0x15
    sget-object v0, Landroid/telephony/TelephonyDisplayInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyDisplayInfo;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onDisplayInfoChanged(Landroid/telephony/TelephonyDisplayInfo;)V

    goto/16 :goto_248

    :pswitch_13f  #0x14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onUserMobileDataStateChanged(Z)V

    goto/16 :goto_248

    :pswitch_14b  #0x13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onCarrierNetworkChange(Z)V

    goto/16 :goto_248

    :pswitch_157  #0x12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onOemHookRawEvent([B)V

    goto/16 :goto_248

    :pswitch_163  #0x11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onDataActivationStateChanged(I)V

    goto/16 :goto_248

    :pswitch_16f  #0x10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onVoiceActivationStateChanged(I)V

    goto/16 :goto_248

    :pswitch_17b  #0xf
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onSrvccStateChanged(I)V

    goto/16 :goto_248

    :pswitch_187  #0xe
    sget-object v0, Landroid/telephony/DataConnectionRealTimeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/DataConnectionRealTimeInfo;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onDataConnectionRealTimeInfoChanged(Landroid/telephony/DataConnectionRealTimeInfo;)V

    goto/16 :goto_248

    :pswitch_197  #0xd
    sget-object v0, Landroid/telephony/PreciseDataConnectionState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/PreciseDataConnectionState;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onPreciseDataConnectionStateChanged(Landroid/telephony/PreciseDataConnectionState;)V

    goto/16 :goto_248

    :pswitch_1a7  #0xc
    sget-object v0, Landroid/telephony/PreciseCallState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/PreciseCallState;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onPreciseCallStateChanged(Landroid/telephony/PreciseCallState;)V

    goto/16 :goto_248

    :pswitch_1b7  #0xb
    sget-object v0, Landroid/telephony/CellInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onCellInfoChanged(Ljava/util/List;)V

    goto/16 :goto_248

    :pswitch_1c5  #0xa
    sget-object v0, Landroid/telephony/SignalStrength;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SignalStrength;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V

    goto/16 :goto_248

    :pswitch_1d5  #0x9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onDataActivity(I)V

    goto :goto_248

    :pswitch_1e0  #0x8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onDataConnectionStateChanged(II)V

    goto :goto_248

    :pswitch_1ef  #0x7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onCallStateChanged(I)V

    goto :goto_248

    :pswitch_1fa  #0x6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onLegacyCallStateChanged(ILjava/lang/String;)V

    goto :goto_248

    :pswitch_209  #0x5
    sget-object v0, Landroid/telephony/CellIdentity;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellIdentity;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onCellLocationChanged(Landroid/telephony/CellIdentity;)V

    goto :goto_248

    :pswitch_218  #0x4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onCallForwardingIndicatorChanged(Z)V

    goto :goto_248

    :pswitch_223  #0x3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onMessageWaitingIndicatorChanged(Z)V

    goto :goto_248

    :pswitch_22e  #0x2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onSignalStrengthChanged(I)V

    goto :goto_248

    :pswitch_239  #0x1
    sget-object v0, Landroid/telephony/ServiceState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/ServiceState;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onServiceStateChanged(Landroid/telephony/ServiceState;)V

    nop

    :goto_248
    return v10

    nop

    :pswitch_data_24a
    .packed-switch 0x5f4e5446
        :pswitch_20  #5f4e5446
    .end packed-switch

    :pswitch_data_250
    .packed-switch 0x1
        :pswitch_239  #00000001
        :pswitch_22e  #00000002
        :pswitch_223  #00000003
        :pswitch_218  #00000004
        :pswitch_209  #00000005
        :pswitch_1fa  #00000006
        :pswitch_1ef  #00000007
        :pswitch_1e0  #00000008
        :pswitch_1d5  #00000009
        :pswitch_1c5  #0000000a
        :pswitch_1b7  #0000000b
        :pswitch_1a7  #0000000c
        :pswitch_197  #0000000d
        :pswitch_187  #0000000e
        :pswitch_17b  #0000000f
        :pswitch_16f  #00000010
        :pswitch_163  #00000011
        :pswitch_157  #00000012
        :pswitch_14b  #00000013
        :pswitch_13f  #00000014
        :pswitch_12f  #00000015
        :pswitch_11f  #00000016
        :pswitch_113  #00000017
        :pswitch_107  #00000018
        :pswitch_f7  #00000019
        :pswitch_e3  #0000001a
        :pswitch_cf  #0000001b
        :pswitch_bb  #0000001c
        :pswitch_ab  #0000001d
        :pswitch_9b  #0000001e
        :pswitch_72  #0000001f
        :pswitch_62  #00000020
        :pswitch_54  #00000021
        :pswitch_44  #00000022
        :pswitch_34  #00000023
        :pswitch_26  #00000024
    .end packed-switch
.end method
