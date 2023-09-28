# classes3.dex

.class public abstract Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Landroid/telephony/ims/aidl/IImsCallSessionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/aidl/IImsCallSessionListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_callQualityChanged:I = 0x29

.field static final TRANSACTION_callSessionConferenceExtendFailed:I = 0x14

.field static final TRANSACTION_callSessionConferenceExtendReceived:I = 0x15

.field static final TRANSACTION_callSessionConferenceExtended:I = 0x13

.field static final TRANSACTION_callSessionConferenceStateUpdated:I = 0x1a

.field static final TRANSACTION_callSessionDtmfReceived:I = 0x28

.field static final TRANSACTION_callSessionHandover:I = 0x1c

.field static final TRANSACTION_callSessionHandoverFailed:I = 0x1d

.field static final TRANSACTION_callSessionHeld:I = 0x7

.field static final TRANSACTION_callSessionHoldFailed:I = 0x8

.field static final TRANSACTION_callSessionHoldReceived:I = 0x9

.field static final TRANSACTION_callSessionInitiated:I = 0x4

.field static final TRANSACTION_callSessionInitiatedFailed:I = 0x5

.field static final TRANSACTION_callSessionInitiating:I = 0x1

.field static final TRANSACTION_callSessionInitiatingFailed:I = 0x2

.field static final TRANSACTION_callSessionInviteParticipantsRequestDelivered:I = 0x16

.field static final TRANSACTION_callSessionInviteParticipantsRequestFailed:I = 0x17

.field static final TRANSACTION_callSessionMayHandover:I = 0x1e

.field static final TRANSACTION_callSessionMergeComplete:I = 0xe

.field static final TRANSACTION_callSessionMergeFailed:I = 0xf

.field static final TRANSACTION_callSessionMergeStarted:I = 0xd

.field static final TRANSACTION_callSessionMultipartyStateChanged:I = 0x20

.field static final TRANSACTION_callSessionProgressing:I = 0x3

.field static final TRANSACTION_callSessionRemoveParticipantsRequestDelivered:I = 0x18

.field static final TRANSACTION_callSessionRemoveParticipantsRequestFailed:I = 0x19

.field static final TRANSACTION_callSessionResumeFailed:I = 0xb

.field static final TRANSACTION_callSessionResumeReceived:I = 0xc

.field static final TRANSACTION_callSessionResumed:I = 0xa

.field static final TRANSACTION_callSessionRtpHeaderExtensionsReceived:I = 0x2a

.field static final TRANSACTION_callSessionRttAudioIndicatorChanged:I = 0x25

.field static final TRANSACTION_callSessionRttMessageReceived:I = 0x24

.field static final TRANSACTION_callSessionRttModifyRequestReceived:I = 0x22

.field static final TRANSACTION_callSessionRttModifyResponseReceived:I = 0x23

.field static final TRANSACTION_callSessionSuppServiceReceived:I = 0x21

.field static final TRANSACTION_callSessionTerminated:I = 0x6

.field static final TRANSACTION_callSessionTransferFailed:I = 0x27

.field static final TRANSACTION_callSessionTransferred:I = 0x26

.field static final TRANSACTION_callSessionTtyModeReceived:I = 0x1f

.field static final TRANSACTION_callSessionUpdateFailed:I = 0x11

.field static final TRANSACTION_callSessionUpdateReceived:I = 0x12

.field static final TRANSACTION_callSessionUpdated:I = 0x10

.field static final TRANSACTION_callSessionUssdMessageReceived:I = 0x1b


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.telephony.ims.aidl.IImsCallSessionListener"

    invoke-virtual {p0, p0, v0}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsCallSessionListener;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "android.telephony.ims.aidl.IImsCallSessionListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Landroid/telephony/ims/aidl/IImsCallSessionListener;

    return-object v1

    :cond_14
    new-instance v1, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_84

    const/4 v0, 0x0

    return-object v0

    :pswitch_5  #0x2a
    const-string v0, "callSessionRtpHeaderExtensionsReceived"

    return-object v0

    :pswitch_8  #0x29
    const-string v0, "callQualityChanged"

    return-object v0

    :pswitch_b  #0x28
    const-string v0, "callSessionDtmfReceived"

    return-object v0

    :pswitch_e  #0x27
    const-string v0, "callSessionTransferFailed"

    return-object v0

    :pswitch_11  #0x26
    const-string v0, "callSessionTransferred"

    return-object v0

    :pswitch_14  #0x25
    const-string v0, "callSessionRttAudioIndicatorChanged"

    return-object v0

    :pswitch_17  #0x24
    const-string v0, "callSessionRttMessageReceived"

    return-object v0

    :pswitch_1a  #0x23
    const-string v0, "callSessionRttModifyResponseReceived"

    return-object v0

    :pswitch_1d  #0x22
    const-string v0, "callSessionRttModifyRequestReceived"

    return-object v0

    :pswitch_20  #0x21
    const-string v0, "callSessionSuppServiceReceived"

    return-object v0

    :pswitch_23  #0x20
    const-string v0, "callSessionMultipartyStateChanged"

    return-object v0

    :pswitch_26  #0x1f
    const-string v0, "callSessionTtyModeReceived"

    return-object v0

    :pswitch_29  #0x1e
    const-string v0, "callSessionMayHandover"

    return-object v0

    :pswitch_2c  #0x1d
    const-string v0, "callSessionHandoverFailed"

    return-object v0

    :pswitch_2f  #0x1c
    const-string v0, "callSessionHandover"

    return-object v0

    :pswitch_32  #0x1b
    const-string v0, "callSessionUssdMessageReceived"

    return-object v0

    :pswitch_35  #0x1a
    const-string v0, "callSessionConferenceStateUpdated"

    return-object v0

    :pswitch_38  #0x19
    const-string v0, "callSessionRemoveParticipantsRequestFailed"

    return-object v0

    :pswitch_3b  #0x18
    const-string v0, "callSessionRemoveParticipantsRequestDelivered"

    return-object v0

    :pswitch_3e  #0x17
    const-string v0, "callSessionInviteParticipantsRequestFailed"

    return-object v0

    :pswitch_41  #0x16
    const-string v0, "callSessionInviteParticipantsRequestDelivered"

    return-object v0

    :pswitch_44  #0x15
    const-string v0, "callSessionConferenceExtendReceived"

    return-object v0

    :pswitch_47  #0x14
    const-string v0, "callSessionConferenceExtendFailed"

    return-object v0

    :pswitch_4a  #0x13
    const-string v0, "callSessionConferenceExtended"

    return-object v0

    :pswitch_4d  #0x12
    const-string v0, "callSessionUpdateReceived"

    return-object v0

    :pswitch_50  #0x11
    const-string v0, "callSessionUpdateFailed"

    return-object v0

    :pswitch_53  #0x10
    const-string v0, "callSessionUpdated"

    return-object v0

    :pswitch_56  #0xf
    const-string v0, "callSessionMergeFailed"

    return-object v0

    :pswitch_59  #0xe
    const-string v0, "callSessionMergeComplete"

    return-object v0

    :pswitch_5c  #0xd
    const-string v0, "callSessionMergeStarted"

    return-object v0

    :pswitch_5f  #0xc
    const-string v0, "callSessionResumeReceived"

    return-object v0

    :pswitch_62  #0xb
    const-string v0, "callSessionResumeFailed"

    return-object v0

    :pswitch_65  #0xa
    const-string v0, "callSessionResumed"

    return-object v0

    :pswitch_68  #0x9
    const-string v0, "callSessionHoldReceived"

    return-object v0

    :pswitch_6b  #0x8
    const-string v0, "callSessionHoldFailed"

    return-object v0

    :pswitch_6e  #0x7
    const-string v0, "callSessionHeld"

    return-object v0

    :pswitch_71  #0x6
    const-string v0, "callSessionTerminated"

    return-object v0

    :pswitch_74  #0x5
    const-string v0, "callSessionInitiatedFailed"

    return-object v0

    :pswitch_77  #0x4
    const-string v0, "callSessionInitiated"

    return-object v0

    :pswitch_7a  #0x3
    const-string v0, "callSessionProgressing"

    return-object v0

    :pswitch_7d  #0x2
    const-string v0, "callSessionInitiatingFailed"

    return-object v0

    :pswitch_80  #0x1
    const-string v0, "callSessionInitiating"

    return-object v0

    nop

    :pswitch_data_84
    .packed-switch 0x1
        :pswitch_80  #00000001
        :pswitch_7d  #00000002
        :pswitch_7a  #00000003
        :pswitch_77  #00000004
        :pswitch_74  #00000005
        :pswitch_71  #00000006
        :pswitch_6e  #00000007
        :pswitch_6b  #00000008
        :pswitch_68  #00000009
        :pswitch_65  #0000000a
        :pswitch_62  #0000000b
        :pswitch_5f  #0000000c
        :pswitch_5c  #0000000d
        :pswitch_59  #0000000e
        :pswitch_56  #0000000f
        :pswitch_53  #00000010
        :pswitch_50  #00000011
        :pswitch_4d  #00000012
        :pswitch_4a  #00000013
        :pswitch_47  #00000014
        :pswitch_44  #00000015
        :pswitch_41  #00000016
        :pswitch_3e  #00000017
        :pswitch_3b  #00000018
        :pswitch_38  #00000019
        :pswitch_35  #0000001a
        :pswitch_32  #0000001b
        :pswitch_2f  #0000001c
        :pswitch_2c  #0000001d
        :pswitch_29  #0000001e
        :pswitch_26  #0000001f
        :pswitch_23  #00000020
        :pswitch_20  #00000021
        :pswitch_1d  #00000022
        :pswitch_1a  #00000023
        :pswitch_17  #00000024
        :pswitch_14  #00000025
        :pswitch_11  #00000026
        :pswitch_e  #00000027
        :pswitch_b  #00000028
        :pswitch_8  #00000029
        :pswitch_5  #0000002a
    .end packed-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    const/16 v0, 0x29

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3

    invoke-static {p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    const-string v0, "android.telephony.ims.aidl.IImsCallSessionListener"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    packed-switch p1, :pswitch_data_2a8

    packed-switch p1, :pswitch_data_2ae

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :pswitch_18  #0x5f4e5446
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_1c  #0x2a
    sget-object v2, Landroid/telephony/ims/RtpHeaderExtension;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionRtpHeaderExtensionsReceived(Ljava/util/List;)V

    goto/16 :goto_2a6

    :pswitch_2a  #0x29
    sget-object v2, Landroid/telephony/CallQuality;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/CallQuality;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callQualityChanged(Landroid/telephony/CallQuality;)V

    goto/16 :goto_2a6

    :pswitch_3a  #0x28
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-char v2, v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionDtmfReceived(C)V

    goto/16 :goto_2a6

    :pswitch_47  #0x27
    sget-object v2, Landroid/telephony/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/ImsReasonInfo;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionTransferFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    goto/16 :goto_2a6

    :pswitch_57  #0x26
    invoke-virtual {p0}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionTransferred()V

    goto/16 :goto_2a6

    :pswitch_5c  #0x25
    sget-object v2, Landroid/telephony/ims/ImsStreamMediaProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionRttAudioIndicatorChanged(Landroid/telephony/ims/ImsStreamMediaProfile;)V

    goto/16 :goto_2a6

    :pswitch_6c  #0x24
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionRttMessageReceived(Ljava/lang/String;)V

    goto/16 :goto_2a6

    :pswitch_78  #0x23
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionRttModifyResponseReceived(I)V

    goto/16 :goto_2a6

    :pswitch_84  #0x22
    sget-object v2, Landroid/telephony/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionRttModifyRequestReceived(Landroid/telephony/ims/ImsCallProfile;)V

    goto/16 :goto_2a6

    :pswitch_94  #0x21
    sget-object v2, Landroid/telephony/ims/ImsSuppServiceNotification;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/ImsSuppServiceNotification;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionSuppServiceReceived(Landroid/telephony/ims/ImsSuppServiceNotification;)V

    goto/16 :goto_2a6

    :pswitch_a4  #0x20
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionMultipartyStateChanged(Z)V

    goto/16 :goto_2a6

    :pswitch_b0  #0x1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionTtyModeReceived(I)V

    goto/16 :goto_2a6

    :pswitch_bc  #0x1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionMayHandover(II)V

    goto/16 :goto_2a6

    :pswitch_cc  #0x1d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    sget-object v4, Landroid/telephony/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/ims/ImsReasonInfo;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionHandoverFailed(IILandroid/telephony/ims/ImsReasonInfo;)V

    goto/16 :goto_2a6

    :pswitch_e4  #0x1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    sget-object v4, Landroid/telephony/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/ims/ImsReasonInfo;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionHandover(IILandroid/telephony/ims/ImsReasonInfo;)V

    goto/16 :goto_2a6

    :pswitch_fc  #0x1b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionUssdMessageReceived(ILjava/lang/String;)V

    goto/16 :goto_2a6

    :pswitch_10c  #0x1a
    sget-object v2, Landroid/telephony/ims/ImsConferenceState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/ImsConferenceState;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionConferenceStateUpdated(Landroid/telephony/ims/ImsConferenceState;)V

    goto/16 :goto_2a6

    :pswitch_11c  #0x19
    sget-object v2, Landroid/telephony/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/ImsReasonInfo;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionRemoveParticipantsRequestFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    goto/16 :goto_2a6

    :pswitch_12c  #0x18
    invoke-virtual {p0}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionRemoveParticipantsRequestDelivered()V

    goto/16 :goto_2a6

    :pswitch_131  #0x17
    sget-object v2, Landroid/telephony/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/ImsReasonInfo;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionInviteParticipantsRequestFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    goto/16 :goto_2a6

    :pswitch_141  #0x16
    invoke-virtual {p0}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionInviteParticipantsRequestDelivered()V

    goto/16 :goto_2a6

    :pswitch_146  #0x15
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v2

    sget-object v3, Landroid/telephony/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionConferenceExtendReceived(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V

    goto/16 :goto_2a6

    :pswitch_15e  #0x14
    sget-object v2, Landroid/telephony/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/ImsReasonInfo;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionConferenceExtendFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    goto/16 :goto_2a6

    :pswitch_16e  #0x13
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v2

    sget-object v3, Landroid/telephony/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionConferenceExtended(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V

    goto/16 :goto_2a6

    :pswitch_186  #0x12
    sget-object v2, Landroid/telephony/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionUpdateReceived(Landroid/telephony/ims/ImsCallProfile;)V

    goto/16 :goto_2a6

    :pswitch_196  #0x11
    sget-object v2, Landroid/telephony/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/ImsReasonInfo;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionUpdateFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    goto/16 :goto_2a6

    :pswitch_1a6  #0x10
    sget-object v2, Landroid/telephony/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionUpdated(Landroid/telephony/ims/ImsCallProfile;)V

    goto/16 :goto_2a6

    :pswitch_1b6  #0xf
    sget-object v2, Landroid/telephony/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/ImsReasonInfo;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionMergeFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    goto/16 :goto_2a6

    :pswitch_1c6  #0xe
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionMergeComplete(Lcom/android/ims/internal/IImsCallSession;)V

    goto/16 :goto_2a6

    :pswitch_1d6  #0xd
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v2

    sget-object v3, Landroid/telephony/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionMergeStarted(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V

    goto/16 :goto_2a6

    :pswitch_1ee  #0xc
    sget-object v2, Landroid/telephony/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionResumeReceived(Landroid/telephony/ims/ImsCallProfile;)V

    goto/16 :goto_2a6

    :pswitch_1fe  #0xb
    sget-object v2, Landroid/telephony/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/ImsReasonInfo;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionResumeFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    goto/16 :goto_2a6

    :pswitch_20e  #0xa
    sget-object v2, Landroid/telephony/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionResumed(Landroid/telephony/ims/ImsCallProfile;)V

    goto/16 :goto_2a6

    :pswitch_21e  #0x9
    sget-object v2, Landroid/telephony/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionHoldReceived(Landroid/telephony/ims/ImsCallProfile;)V

    goto/16 :goto_2a6

    :pswitch_22e  #0x8
    sget-object v2, Landroid/telephony/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/ImsReasonInfo;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionHoldFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    goto :goto_2a6

    :pswitch_23d  #0x7
    sget-object v2, Landroid/telephony/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionHeld(Landroid/telephony/ims/ImsCallProfile;)V

    goto :goto_2a6

    :pswitch_24c  #0x6
    sget-object v2, Landroid/telephony/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/ImsReasonInfo;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionTerminated(Landroid/telephony/ims/ImsReasonInfo;)V

    goto :goto_2a6

    :pswitch_25b  #0x5
    sget-object v2, Landroid/telephony/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/ImsReasonInfo;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionInitiatedFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    goto :goto_2a6

    :pswitch_26a  #0x4
    sget-object v2, Landroid/telephony/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionInitiated(Landroid/telephony/ims/ImsCallProfile;)V

    goto :goto_2a6

    :pswitch_279  #0x3
    sget-object v2, Landroid/telephony/ims/ImsStreamMediaProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionProgressing(Landroid/telephony/ims/ImsStreamMediaProfile;)V

    goto :goto_2a6

    :pswitch_288  #0x2
    sget-object v2, Landroid/telephony/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/ImsReasonInfo;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionInitiatingFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    goto :goto_2a6

    :pswitch_297  #0x1
    sget-object v2, Landroid/telephony/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionInitiating(Landroid/telephony/ims/ImsCallProfile;)V

    nop

    :goto_2a6
    return v1

    nop

    :pswitch_data_2a8
    .packed-switch 0x5f4e5446
        :pswitch_18  #5f4e5446
    .end packed-switch

    :pswitch_data_2ae
    .packed-switch 0x1
        :pswitch_297  #00000001
        :pswitch_288  #00000002
        :pswitch_279  #00000003
        :pswitch_26a  #00000004
        :pswitch_25b  #00000005
        :pswitch_24c  #00000006
        :pswitch_23d  #00000007
        :pswitch_22e  #00000008
        :pswitch_21e  #00000009
        :pswitch_20e  #0000000a
        :pswitch_1fe  #0000000b
        :pswitch_1ee  #0000000c
        :pswitch_1d6  #0000000d
        :pswitch_1c6  #0000000e
        :pswitch_1b6  #0000000f
        :pswitch_1a6  #00000010
        :pswitch_196  #00000011
        :pswitch_186  #00000012
        :pswitch_16e  #00000013
        :pswitch_15e  #00000014
        :pswitch_146  #00000015
        :pswitch_141  #00000016
        :pswitch_131  #00000017
        :pswitch_12c  #00000018
        :pswitch_11c  #00000019
        :pswitch_10c  #0000001a
        :pswitch_fc  #0000001b
        :pswitch_e4  #0000001c
        :pswitch_cc  #0000001d
        :pswitch_bc  #0000001e
        :pswitch_b0  #0000001f
        :pswitch_a4  #00000020
        :pswitch_94  #00000021
        :pswitch_84  #00000022
        :pswitch_78  #00000023
        :pswitch_6c  #00000024
        :pswitch_5c  #00000025
        :pswitch_57  #00000026
        :pswitch_47  #00000027
        :pswitch_3a  #00000028
        :pswitch_2a  #00000029
        :pswitch_1c  #0000002a
    .end packed-switch
.end method
