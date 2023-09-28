# classes4.dex

.class public abstract Lcom/android/internal/telecom/IInCallAdapter$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/android/internal/telecom/IInCallAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telecom/IInCallAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telecom/IInCallAdapter$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telecom.IInCallAdapter"

.field static final TRANSACTION_addConferenceParticipants:I = 0x16

.field static final TRANSACTION_answerCall:I = 0x1

.field static final TRANSACTION_conference:I = 0x12

.field static final TRANSACTION_consultativeTransfer:I = 0x6

.field static final TRANSACTION_deflectCall:I = 0x2

.field static final TRANSACTION_disconnectCall:I = 0x7

.field static final TRANSACTION_enterBackgroundAudioProcessing:I = 0xc

.field static final TRANSACTION_exitBackgroundAudioProcessing:I = 0xd

.field static final TRANSACTION_handoverTo:I = 0x21

.field static final TRANSACTION_holdCall:I = 0x8

.field static final TRANSACTION_mergeConference:I = 0x14

.field static final TRANSACTION_mute:I = 0xa

.field static final TRANSACTION_phoneAccountSelected:I = 0x11

.field static final TRANSACTION_playDtmfTone:I = 0xe

.field static final TRANSACTION_postDialContinue:I = 0x10

.field static final TRANSACTION_pullExternalCall:I = 0x19

.field static final TRANSACTION_putExtras:I = 0x1b

.field static final TRANSACTION_rejectCall:I = 0x3

.field static final TRANSACTION_rejectCallWithReason:I = 0x4

.field static final TRANSACTION_removeExtras:I = 0x1c

.field static final TRANSACTION_respondToRttRequest:I = 0x1e

.field static final TRANSACTION_sendCallEvent:I = 0x1a

.field static final TRANSACTION_sendRttRequest:I = 0x1d

.field static final TRANSACTION_setAudioRoute:I = 0xb

.field static final TRANSACTION_setRttMode:I = 0x20

.field static final TRANSACTION_splitFromConference:I = 0x13

.field static final TRANSACTION_stopDtmfTone:I = 0xf

.field static final TRANSACTION_stopRtt:I = 0x1f

.field static final TRANSACTION_swapConference:I = 0x15

.field static final TRANSACTION_transferCall:I = 0x5

.field static final TRANSACTION_turnOffProximitySensor:I = 0x18

.field static final TRANSACTION_turnOnProximitySensor:I = 0x17

.field static final TRANSACTION_unholdCall:I = 0x9


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.android.internal.telecom.IInCallAdapter"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/IInCallAdapter;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "com.android.internal.telecom.IInCallAdapter"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/internal/telecom/IInCallAdapter;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Lcom/android/internal/telecom/IInCallAdapter;

    return-object v1

    :cond_14
    new-instance v1, Lcom/android/internal/telecom/IInCallAdapter$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/telecom/IInCallAdapter$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_80

    const/4 v0, 0x0

    return-object v0

    :pswitch_5  #0x21
    const-string v0, "handoverTo"

    return-object v0

    :pswitch_8  #0x20
    const-string/jumbo v0, "setRttMode"

    return-object v0

    :pswitch_c  #0x1f
    const-string/jumbo v0, "stopRtt"

    return-object v0

    :pswitch_10  #0x1e
    const-string/jumbo v0, "respondToRttRequest"

    return-object v0

    :pswitch_14  #0x1d
    const-string/jumbo v0, "sendRttRequest"

    return-object v0

    :pswitch_18  #0x1c
    const-string/jumbo v0, "removeExtras"

    return-object v0

    :pswitch_1c  #0x1b
    const-string/jumbo v0, "putExtras"

    return-object v0

    :pswitch_20  #0x1a
    const-string/jumbo v0, "sendCallEvent"

    return-object v0

    :pswitch_24  #0x19
    const-string/jumbo v0, "pullExternalCall"

    return-object v0

    :pswitch_28  #0x18
    const-string/jumbo v0, "turnOffProximitySensor"

    return-object v0

    :pswitch_2c  #0x17
    const-string/jumbo v0, "turnOnProximitySensor"

    return-object v0

    :pswitch_30  #0x16
    const-string v0, "addConferenceParticipants"

    return-object v0

    :pswitch_33  #0x15
    const-string/jumbo v0, "swapConference"

    return-object v0

    :pswitch_37  #0x14
    const-string/jumbo v0, "mergeConference"

    return-object v0

    :pswitch_3b  #0x13
    const-string/jumbo v0, "splitFromConference"

    return-object v0

    :pswitch_3f  #0x12
    const-string v0, "conference"

    return-object v0

    :pswitch_42  #0x11
    const-string/jumbo v0, "phoneAccountSelected"

    return-object v0

    :pswitch_46  #0x10
    const-string/jumbo v0, "postDialContinue"

    return-object v0

    :pswitch_4a  #0xf
    const-string/jumbo v0, "stopDtmfTone"

    return-object v0

    :pswitch_4e  #0xe
    const-string/jumbo v0, "playDtmfTone"

    return-object v0

    :pswitch_52  #0xd
    const-string v0, "exitBackgroundAudioProcessing"

    return-object v0

    :pswitch_55  #0xc
    const-string v0, "enterBackgroundAudioProcessing"

    return-object v0

    :pswitch_58  #0xb
    const-string/jumbo v0, "setAudioRoute"

    return-object v0

    :pswitch_5c  #0xa
    const-string/jumbo v0, "mute"

    return-object v0

    :pswitch_60  #0x9
    const-string/jumbo v0, "unholdCall"

    return-object v0

    :pswitch_64  #0x8
    const-string v0, "holdCall"

    return-object v0

    :pswitch_67  #0x7
    const-string v0, "disconnectCall"

    return-object v0

    :pswitch_6a  #0x6
    const-string v0, "consultativeTransfer"

    return-object v0

    :pswitch_6d  #0x5
    const-string/jumbo v0, "transferCall"

    return-object v0

    :pswitch_71  #0x4
    const-string/jumbo v0, "rejectCallWithReason"

    return-object v0

    :pswitch_75  #0x3
    const-string/jumbo v0, "rejectCall"

    return-object v0

    :pswitch_79  #0x2
    const-string v0, "deflectCall"

    return-object v0

    :pswitch_7c  #0x1
    const-string v0, "answerCall"

    return-object v0

    nop

    :pswitch_data_80
    .packed-switch 0x1
        :pswitch_7c  #00000001
        :pswitch_79  #00000002
        :pswitch_75  #00000003
        :pswitch_71  #00000004
        :pswitch_6d  #00000005
        :pswitch_6a  #00000006
        :pswitch_67  #00000007
        :pswitch_64  #00000008
        :pswitch_60  #00000009
        :pswitch_5c  #0000000a
        :pswitch_58  #0000000b
        :pswitch_55  #0000000c
        :pswitch_52  #0000000d
        :pswitch_4e  #0000000e
        :pswitch_4a  #0000000f
        :pswitch_46  #00000010
        :pswitch_42  #00000011
        :pswitch_3f  #00000012
        :pswitch_3b  #00000013
        :pswitch_37  #00000014
        :pswitch_33  #00000015
        :pswitch_30  #00000016
        :pswitch_2c  #00000017
        :pswitch_28  #00000018
        :pswitch_24  #00000019
        :pswitch_20  #0000001a
        :pswitch_1c  #0000001b
        :pswitch_18  #0000001c
        :pswitch_14  #0000001d
        :pswitch_10  #0000001e
        :pswitch_c  #0000001f
        :pswitch_8  #00000020
        :pswitch_5  #00000021
    .end packed-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    const/16 v0, 0x20

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3

    invoke-static {p1}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "com.android.internal.telecom.IInCallAdapter"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    packed-switch p1, :pswitch_data_226

    packed-switch p1, :pswitch_data_22c

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :pswitch_18  #0x5f4e5446
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_1c  #0x21
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/PhoneAccountHandle;

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->handoverTo(Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;ILandroid/os/Bundle;)V

    goto/16 :goto_225

    :pswitch_3c  #0x20
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->setRttMode(Ljava/lang/String;I)V

    goto/16 :goto_225

    :pswitch_4c  #0x1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->stopRtt(Ljava/lang/String;)V

    goto/16 :goto_225

    :pswitch_58  #0x1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->respondToRttRequest(Ljava/lang/String;IZ)V

    goto/16 :goto_225

    :pswitch_6c  #0x1d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->sendRttRequest(Ljava/lang/String;)V

    goto/16 :goto_225

    :pswitch_78  #0x1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->removeExtras(Ljava/lang/String;Ljava/util/List;)V

    goto/16 :goto_225

    :pswitch_88  #0x1b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->putExtras(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_225

    :pswitch_9c  #0x1a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->sendCallEvent(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)V

    goto/16 :goto_225

    :pswitch_b8  #0x19
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->pullExternalCall(Ljava/lang/String;)V

    goto/16 :goto_225

    :pswitch_c4  #0x18
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->turnOffProximitySensor(Z)V

    goto/16 :goto_225

    :pswitch_d0  #0x17
    invoke-virtual {p0}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->turnOnProximitySensor()V

    goto/16 :goto_225

    :pswitch_d5  #0x16
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->addConferenceParticipants(Ljava/lang/String;Ljava/util/List;)V

    goto/16 :goto_225

    :pswitch_e7  #0x15
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->swapConference(Ljava/lang/String;)V

    goto/16 :goto_225

    :pswitch_f3  #0x14
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->mergeConference(Ljava/lang/String;)V

    goto/16 :goto_225

    :pswitch_ff  #0x13
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->splitFromConference(Ljava/lang/String;)V

    goto/16 :goto_225

    :pswitch_10b  #0x12
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->conference(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_225

    :pswitch_11b  #0x11
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/PhoneAccountHandle;

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->phoneAccountSelected(Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;Z)V

    goto/16 :goto_225

    :pswitch_133  #0x10
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->postDialContinue(Ljava/lang/String;Z)V

    goto/16 :goto_225

    :pswitch_143  #0xf
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->stopDtmfTone(Ljava/lang/String;)V

    goto/16 :goto_225

    :pswitch_14f  #0xe
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    int-to-char v3, v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->playDtmfTone(Ljava/lang/String;C)V

    goto/16 :goto_225

    :pswitch_160  #0xd
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->exitBackgroundAudioProcessing(Ljava/lang/String;Z)V

    goto/16 :goto_225

    :pswitch_170  #0xc
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->enterBackgroundAudioProcessing(Ljava/lang/String;)V

    goto/16 :goto_225

    :pswitch_17c  #0xb
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->setAudioRoute(ILjava/lang/String;)V

    goto/16 :goto_225

    :pswitch_18c  #0xa
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->mute(Z)V

    goto/16 :goto_225

    :pswitch_198  #0x9
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->unholdCall(Ljava/lang/String;)V

    goto/16 :goto_225

    :pswitch_1a4  #0x8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->holdCall(Ljava/lang/String;)V

    goto/16 :goto_225

    :pswitch_1b0  #0x7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->disconnectCall(Ljava/lang/String;)V

    goto :goto_225

    :pswitch_1bb  #0x6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->consultativeTransfer(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_225

    :pswitch_1ca  #0x5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->transferCall(Ljava/lang/String;Landroid/net/Uri;Z)V

    goto :goto_225

    :pswitch_1e1  #0x4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->rejectCallWithReason(Ljava/lang/String;I)V

    goto :goto_225

    :pswitch_1f0  #0x3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->rejectCall(Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_225

    :pswitch_203  #0x2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->deflectCall(Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_225

    :pswitch_216  #0x1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->answerCall(Ljava/lang/String;I)V

    nop

    :goto_225
    return v1

    :pswitch_data_226
    .packed-switch 0x5f4e5446
        :pswitch_18  #5f4e5446
    .end packed-switch

    :pswitch_data_22c
    .packed-switch 0x1
        :pswitch_216  #00000001
        :pswitch_203  #00000002
        :pswitch_1f0  #00000003
        :pswitch_1e1  #00000004
        :pswitch_1ca  #00000005
        :pswitch_1bb  #00000006
        :pswitch_1b0  #00000007
        :pswitch_1a4  #00000008
        :pswitch_198  #00000009
        :pswitch_18c  #0000000a
        :pswitch_17c  #0000000b
        :pswitch_170  #0000000c
        :pswitch_160  #0000000d
        :pswitch_14f  #0000000e
        :pswitch_143  #0000000f
        :pswitch_133  #00000010
        :pswitch_11b  #00000011
        :pswitch_10b  #00000012
        :pswitch_ff  #00000013
        :pswitch_f3  #00000014
        :pswitch_e7  #00000015
        :pswitch_d5  #00000016
        :pswitch_d0  #00000017
        :pswitch_c4  #00000018
        :pswitch_b8  #00000019
        :pswitch_9c  #0000001a
        :pswitch_88  #0000001b
        :pswitch_78  #0000001c
        :pswitch_6c  #0000001d
        :pswitch_58  #0000001e
        :pswitch_4c  #0000001f
        :pswitch_3c  #00000020
        :pswitch_1c  #00000021
    .end packed-switch
.end method
