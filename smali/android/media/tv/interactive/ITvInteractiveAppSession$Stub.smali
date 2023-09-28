# classes2.dex

.class public abstract Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Landroid/media/tv/interactive/ITvInteractiveAppSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/interactive/ITvInteractiveAppSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_createBiInteractiveApp:I = 0x4

.field static final TRANSACTION_createMediaView:I = 0x1b

.field static final TRANSACTION_destroyBiInteractiveApp:I = 0x5

.field static final TRANSACTION_dispatchSurfaceChanged:I = 0x18

.field static final TRANSACTION_notifyAdResponse:I = 0x1a

.field static final TRANSACTION_notifyBroadcastInfoResponse:I = 0x19

.field static final TRANSACTION_notifyContentAllowed:I = 0x14

.field static final TRANSACTION_notifyContentBlocked:I = 0x15

.field static final TRANSACTION_notifyError:I = 0xd

.field static final TRANSACTION_notifySignalStrength:I = 0x16

.field static final TRANSACTION_notifyTrackSelected:I = 0x10

.field static final TRANSACTION_notifyTracksChanged:I = 0x11

.field static final TRANSACTION_notifyTuned:I = 0xf

.field static final TRANSACTION_notifyVideoAvailable:I = 0x12

.field static final TRANSACTION_notifyVideoUnavailable:I = 0x13

.field static final TRANSACTION_relayoutMediaView:I = 0x1c

.field static final TRANSACTION_release:I = 0xe

.field static final TRANSACTION_removeMediaView:I = 0x1d

.field static final TRANSACTION_resetInteractiveApp:I = 0x3

.field static final TRANSACTION_sendCurrentChannelLcn:I = 0x8

.field static final TRANSACTION_sendCurrentChannelUri:I = 0x7

.field static final TRANSACTION_sendCurrentTvInputId:I = 0xb

.field static final TRANSACTION_sendSigningResult:I = 0xc

.field static final TRANSACTION_sendStreamVolume:I = 0x9

.field static final TRANSACTION_sendTrackInfoList:I = 0xa

.field static final TRANSACTION_setSurface:I = 0x17

.field static final TRANSACTION_setTeletextAppEnabled:I = 0x6

.field static final TRANSACTION_startInteractiveApp:I = 0x1

.field static final TRANSACTION_stopInteractiveApp:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.media.tv.interactive.ITvInteractiveAppSession"

    invoke-virtual {p0, p0, v0}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/media/tv/interactive/ITvInteractiveAppSession;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "android.media.tv.interactive.ITvInteractiveAppSession"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/media/tv/interactive/ITvInteractiveAppSession;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Landroid/media/tv/interactive/ITvInteractiveAppSession;

    return-object v1

    :cond_14
    new-instance v1, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_5c

    const/4 v0, 0x0

    return-object v0

    :pswitch_5  #0x1d
    const-string v0, "removeMediaView"

    return-object v0

    :pswitch_8  #0x1c
    const-string v0, "relayoutMediaView"

    return-object v0

    :pswitch_b  #0x1b
    const-string v0, "createMediaView"

    return-object v0

    :pswitch_e  #0x1a
    const-string v0, "notifyAdResponse"

    return-object v0

    :pswitch_11  #0x19
    const-string v0, "notifyBroadcastInfoResponse"

    return-object v0

    :pswitch_14  #0x18
    const-string v0, "dispatchSurfaceChanged"

    return-object v0

    :pswitch_17  #0x17
    const-string v0, "setSurface"

    return-object v0

    :pswitch_1a  #0x16
    const-string v0, "notifySignalStrength"

    return-object v0

    :pswitch_1d  #0x15
    const-string v0, "notifyContentBlocked"

    return-object v0

    :pswitch_20  #0x14
    const-string v0, "notifyContentAllowed"

    return-object v0

    :pswitch_23  #0x13
    const-string v0, "notifyVideoUnavailable"

    return-object v0

    :pswitch_26  #0x12
    const-string v0, "notifyVideoAvailable"

    return-object v0

    :pswitch_29  #0x11
    const-string v0, "notifyTracksChanged"

    return-object v0

    :pswitch_2c  #0x10
    const-string v0, "notifyTrackSelected"

    return-object v0

    :pswitch_2f  #0xf
    const-string v0, "notifyTuned"

    return-object v0

    :pswitch_32  #0xe
    const-string v0, "release"

    return-object v0

    :pswitch_35  #0xd
    const-string v0, "notifyError"

    return-object v0

    :pswitch_38  #0xc
    const-string v0, "sendSigningResult"

    return-object v0

    :pswitch_3b  #0xb
    const-string v0, "sendCurrentTvInputId"

    return-object v0

    :pswitch_3e  #0xa
    const-string v0, "sendTrackInfoList"

    return-object v0

    :pswitch_41  #0x9
    const-string v0, "sendStreamVolume"

    return-object v0

    :pswitch_44  #0x8
    const-string v0, "sendCurrentChannelLcn"

    return-object v0

    :pswitch_47  #0x7
    const-string v0, "sendCurrentChannelUri"

    return-object v0

    :pswitch_4a  #0x6
    const-string v0, "setTeletextAppEnabled"

    return-object v0

    :pswitch_4d  #0x5
    const-string v0, "destroyBiInteractiveApp"

    return-object v0

    :pswitch_50  #0x4
    const-string v0, "createBiInteractiveApp"

    return-object v0

    :pswitch_53  #0x3
    const-string v0, "resetInteractiveApp"

    return-object v0

    :pswitch_56  #0x2
    const-string v0, "stopInteractiveApp"

    return-object v0

    :pswitch_59  #0x1
    const-string v0, "startInteractiveApp"

    return-object v0

    :pswitch_data_5c
    .packed-switch 0x1
        :pswitch_59  #00000001
        :pswitch_56  #00000002
        :pswitch_53  #00000003
        :pswitch_50  #00000004
        :pswitch_4d  #00000005
        :pswitch_4a  #00000006
        :pswitch_47  #00000007
        :pswitch_44  #00000008
        :pswitch_41  #00000009
        :pswitch_3e  #0000000a
        :pswitch_3b  #0000000b
        :pswitch_38  #0000000c
        :pswitch_35  #0000000d
        :pswitch_32  #0000000e
        :pswitch_2f  #0000000f
        :pswitch_2c  #00000010
        :pswitch_29  #00000011
        :pswitch_26  #00000012
        :pswitch_23  #00000013
        :pswitch_20  #00000014
        :pswitch_1d  #00000015
        :pswitch_1a  #00000016
        :pswitch_17  #00000017
        :pswitch_14  #00000018
        :pswitch_11  #00000019
        :pswitch_e  #0000001a
        :pswitch_b  #0000001b
        :pswitch_8  #0000001c
        :pswitch_5  #0000001d
    .end packed-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    const/16 v0, 0x1c

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3

    invoke-static {p1}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    const-string v0, "android.media.tv.interactive.ITvInteractiveAppSession"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    packed-switch p1, :pswitch_data_186

    packed-switch p1, :pswitch_data_18c

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :pswitch_18  #0x5f4e5446
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_1c  #0x1d
    invoke-virtual {p0}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->removeMediaView()V

    goto/16 :goto_185

    :pswitch_21  #0x1c
    sget-object v2, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->relayoutMediaView(Landroid/graphics/Rect;)V

    goto/16 :goto_185

    :pswitch_31  #0x1b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    sget-object v3, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->createMediaView(Landroid/os/IBinder;Landroid/graphics/Rect;)V

    goto/16 :goto_185

    :pswitch_45  #0x1a
    sget-object v2, Landroid/media/tv/AdResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/tv/AdResponse;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->notifyAdResponse(Landroid/media/tv/AdResponse;)V

    goto/16 :goto_185

    :pswitch_55  #0x19
    sget-object v2, Landroid/media/tv/BroadcastInfoResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/tv/BroadcastInfoResponse;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->notifyBroadcastInfoResponse(Landroid/media/tv/BroadcastInfoResponse;)V

    goto/16 :goto_185

    :pswitch_65  #0x18
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->dispatchSurfaceChanged(III)V

    goto/16 :goto_185

    :pswitch_79  #0x17
    sget-object v2, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/Surface;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->setSurface(Landroid/view/Surface;)V

    goto/16 :goto_185

    :pswitch_89  #0x16
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->notifySignalStrength(I)V

    goto/16 :goto_185

    :pswitch_95  #0x15
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->notifyContentBlocked(Ljava/lang/String;)V

    goto/16 :goto_185

    :pswitch_a1  #0x14
    invoke-virtual {p0}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->notifyContentAllowed()V

    goto/16 :goto_185

    :pswitch_a6  #0x13
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->notifyVideoUnavailable(I)V

    goto/16 :goto_185

    :pswitch_b2  #0x12
    invoke-virtual {p0}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->notifyVideoAvailable()V

    goto/16 :goto_185

    :pswitch_b7  #0x11
    sget-object v2, Landroid/media/tv/TvTrackInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->notifyTracksChanged(Ljava/util/List;)V

    goto/16 :goto_185

    :pswitch_c5  #0x10
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->notifyTrackSelected(ILjava/lang/String;)V

    goto/16 :goto_185

    :pswitch_d5  #0xf
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->notifyTuned(Landroid/net/Uri;)V

    goto/16 :goto_185

    :pswitch_e5  #0xe
    invoke-virtual {p0}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->release()V

    goto/16 :goto_185

    :pswitch_ea  #0xd
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->notifyError(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_185

    :pswitch_fe  #0xc
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->sendSigningResult(Ljava/lang/String;[B)V

    goto/16 :goto_185

    :pswitch_10e  #0xb
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->sendCurrentTvInputId(Ljava/lang/String;)V

    goto/16 :goto_185

    :pswitch_11a  #0xa
    sget-object v2, Landroid/media/tv/TvTrackInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->sendTrackInfoList(Ljava/util/List;)V

    goto :goto_185

    :pswitch_127  #0x9
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->sendStreamVolume(F)V

    goto :goto_185

    :pswitch_132  #0x8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->sendCurrentChannelLcn(I)V

    goto :goto_185

    :pswitch_13d  #0x7
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->sendCurrentChannelUri(Landroid/net/Uri;)V

    goto :goto_185

    :pswitch_14c  #0x6
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->setTeletextAppEnabled(Z)V

    goto :goto_185

    :pswitch_157  #0x5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->destroyBiInteractiveApp(Ljava/lang/String;)V

    goto :goto_185

    :pswitch_162  #0x4
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->createBiInteractiveApp(Landroid/net/Uri;Landroid/os/Bundle;)V

    goto :goto_185

    :pswitch_179  #0x3
    invoke-virtual {p0}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->resetInteractiveApp()V

    goto :goto_185

    :pswitch_17d  #0x2
    invoke-virtual {p0}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->stopInteractiveApp()V

    goto :goto_185

    :pswitch_181  #0x1
    invoke-virtual {p0}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->startInteractiveApp()V

    nop

    :goto_185
    return v1

    :pswitch_data_186
    .packed-switch 0x5f4e5446
        :pswitch_18  #5f4e5446
    .end packed-switch

    :pswitch_data_18c
    .packed-switch 0x1
        :pswitch_181  #00000001
        :pswitch_17d  #00000002
        :pswitch_179  #00000003
        :pswitch_162  #00000004
        :pswitch_157  #00000005
        :pswitch_14c  #00000006
        :pswitch_13d  #00000007
        :pswitch_132  #00000008
        :pswitch_127  #00000009
        :pswitch_11a  #0000000a
        :pswitch_10e  #0000000b
        :pswitch_fe  #0000000c
        :pswitch_ea  #0000000d
        :pswitch_e5  #0000000e
        :pswitch_d5  #0000000f
        :pswitch_c5  #00000010
        :pswitch_b7  #00000011
        :pswitch_b2  #00000012
        :pswitch_a6  #00000013
        :pswitch_a1  #00000014
        :pswitch_95  #00000015
        :pswitch_89  #00000016
        :pswitch_79  #00000017
        :pswitch_65  #00000018
        :pswitch_55  #00000019
        :pswitch_45  #0000001a
        :pswitch_31  #0000001b
        :pswitch_21  #0000001c
        :pswitch_1c  #0000001d
    .end packed-switch
.end method
