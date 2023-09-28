# classes2.dex

.class public abstract Landroid/media/tv/ITvInputSession$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Landroid/media/tv/ITvInputSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/ITvInputSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/ITvInputSession$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.media.tv.ITvInputSession"

.field static final TRANSACTION_appPrivateCommand:I = 0xa

.field static final TRANSACTION_createOverlayView:I = 0xb

.field static final TRANSACTION_dispatchSurfaceChanged:I = 0x4

.field static final TRANSACTION_pauseRecording:I = 0x17

.field static final TRANSACTION_relayoutOverlayView:I = 0xc

.field static final TRANSACTION_release:I = 0x1

.field static final TRANSACTION_removeBroadcastInfo:I = 0x1a

.field static final TRANSACTION_removeOverlayView:I = 0xd

.field static final TRANSACTION_requestAd:I = 0x1b

.field static final TRANSACTION_requestBroadcastInfo:I = 0x19

.field static final TRANSACTION_resumeRecording:I = 0x18

.field static final TRANSACTION_selectTrack:I = 0x8

.field static final TRANSACTION_setCaptionEnabled:I = 0x7

.field static final TRANSACTION_setInteractiveAppNotificationEnabled:I = 0x9

.field static final TRANSACTION_setMain:I = 0x2

.field static final TRANSACTION_setSurface:I = 0x3

.field static final TRANSACTION_setVolume:I = 0x5

.field static final TRANSACTION_startRecording:I = 0x15

.field static final TRANSACTION_stopRecording:I = 0x16

.field static final TRANSACTION_timeShiftEnablePositionTracking:I = 0x14

.field static final TRANSACTION_timeShiftPause:I = 0x10

.field static final TRANSACTION_timeShiftPlay:I = 0xf

.field static final TRANSACTION_timeShiftResume:I = 0x11

.field static final TRANSACTION_timeShiftSeekTo:I = 0x12

.field static final TRANSACTION_timeShiftSetPlaybackParams:I = 0x13

.field static final TRANSACTION_tune:I = 0x6

.field static final TRANSACTION_unblockContent:I = 0xe


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.media.tv.ITvInputSession"

    invoke-virtual {p0, p0, v0}, Landroid/media/tv/ITvInputSession$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/media/tv/ITvInputSession;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "android.media.tv.ITvInputSession"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/media/tv/ITvInputSession;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Landroid/media/tv/ITvInputSession;

    return-object v1

    :cond_14
    new-instance v1, Landroid/media/tv/ITvInputSession$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/tv/ITvInputSession$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_56

    const/4 v0, 0x0

    return-object v0

    :pswitch_5  #0x1b
    const-string v0, "requestAd"

    return-object v0

    :pswitch_8  #0x1a
    const-string v0, "removeBroadcastInfo"

    return-object v0

    :pswitch_b  #0x19
    const-string v0, "requestBroadcastInfo"

    return-object v0

    :pswitch_e  #0x18
    const-string v0, "resumeRecording"

    return-object v0

    :pswitch_11  #0x17
    const-string v0, "pauseRecording"

    return-object v0

    :pswitch_14  #0x16
    const-string v0, "stopRecording"

    return-object v0

    :pswitch_17  #0x15
    const-string v0, "startRecording"

    return-object v0

    :pswitch_1a  #0x14
    const-string v0, "timeShiftEnablePositionTracking"

    return-object v0

    :pswitch_1d  #0x13
    const-string v0, "timeShiftSetPlaybackParams"

    return-object v0

    :pswitch_20  #0x12
    const-string v0, "timeShiftSeekTo"

    return-object v0

    :pswitch_23  #0x11
    const-string v0, "timeShiftResume"

    return-object v0

    :pswitch_26  #0x10
    const-string v0, "timeShiftPause"

    return-object v0

    :pswitch_29  #0xf
    const-string v0, "timeShiftPlay"

    return-object v0

    :pswitch_2c  #0xe
    const-string v0, "unblockContent"

    return-object v0

    :pswitch_2f  #0xd
    const-string v0, "removeOverlayView"

    return-object v0

    :pswitch_32  #0xc
    const-string v0, "relayoutOverlayView"

    return-object v0

    :pswitch_35  #0xb
    const-string v0, "createOverlayView"

    return-object v0

    :pswitch_38  #0xa
    const-string v0, "appPrivateCommand"

    return-object v0

    :pswitch_3b  #0x9
    const-string v0, "setInteractiveAppNotificationEnabled"

    return-object v0

    :pswitch_3e  #0x8
    const-string v0, "selectTrack"

    return-object v0

    :pswitch_41  #0x7
    const-string v0, "setCaptionEnabled"

    return-object v0

    :pswitch_44  #0x6
    const-string v0, "tune"

    return-object v0

    :pswitch_47  #0x5
    const-string v0, "setVolume"

    return-object v0

    :pswitch_4a  #0x4
    const-string v0, "dispatchSurfaceChanged"

    return-object v0

    :pswitch_4d  #0x3
    const-string v0, "setSurface"

    return-object v0

    :pswitch_50  #0x2
    const-string v0, "setMain"

    return-object v0

    :pswitch_53  #0x1
    const-string v0, "release"

    return-object v0

    :pswitch_data_56
    .packed-switch 0x1
        :pswitch_53  #00000001
        :pswitch_50  #00000002
        :pswitch_4d  #00000003
        :pswitch_4a  #00000004
        :pswitch_47  #00000005
        :pswitch_44  #00000006
        :pswitch_41  #00000007
        :pswitch_3e  #00000008
        :pswitch_3b  #00000009
        :pswitch_38  #0000000a
        :pswitch_35  #0000000b
        :pswitch_32  #0000000c
        :pswitch_2f  #0000000d
        :pswitch_2c  #0000000e
        :pswitch_29  #0000000f
        :pswitch_26  #00000010
        :pswitch_23  #00000011
        :pswitch_20  #00000012
        :pswitch_1d  #00000013
        :pswitch_1a  #00000014
        :pswitch_17  #00000015
        :pswitch_14  #00000016
        :pswitch_11  #00000017
        :pswitch_e  #00000018
        :pswitch_b  #00000019
        :pswitch_8  #0000001a
        :pswitch_5  #0000001b
    .end packed-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    const/16 v0, 0x1a

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3

    invoke-static {p1}, Landroid/media/tv/ITvInputSession$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    const-string v0, "android.media.tv.ITvInputSession"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    packed-switch p1, :pswitch_data_18a

    packed-switch p1, :pswitch_data_190

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :pswitch_18  #0x5f4e5446
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_1c  #0x1b
    sget-object v2, Landroid/media/tv/AdRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/tv/AdRequest;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/tv/ITvInputSession$Stub;->requestAd(Landroid/media/tv/AdRequest;)V

    goto/16 :goto_188

    :pswitch_2c  #0x1a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/tv/ITvInputSession$Stub;->removeBroadcastInfo(I)V

    goto/16 :goto_188

    :pswitch_38  #0x19
    sget-object v2, Landroid/media/tv/BroadcastInfoRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/tv/BroadcastInfoRequest;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/tv/ITvInputSession$Stub;->requestBroadcastInfo(Landroid/media/tv/BroadcastInfoRequest;)V

    goto/16 :goto_188

    :pswitch_48  #0x18
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/tv/ITvInputSession$Stub;->resumeRecording(Landroid/os/Bundle;)V

    goto/16 :goto_188

    :pswitch_58  #0x17
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/tv/ITvInputSession$Stub;->pauseRecording(Landroid/os/Bundle;)V

    goto/16 :goto_188

    :pswitch_68  #0x16
    invoke-virtual {p0}, Landroid/media/tv/ITvInputSession$Stub;->stopRecording()V

    goto/16 :goto_188

    :pswitch_6d  #0x15
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/media/tv/ITvInputSession$Stub;->startRecording(Landroid/net/Uri;Landroid/os/Bundle;)V

    goto/16 :goto_188

    :pswitch_85  #0x14
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/tv/ITvInputSession$Stub;->timeShiftEnablePositionTracking(Z)V

    goto/16 :goto_188

    :pswitch_91  #0x13
    sget-object v2, Landroid/media/PlaybackParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/PlaybackParams;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/tv/ITvInputSession$Stub;->timeShiftSetPlaybackParams(Landroid/media/PlaybackParams;)V

    goto/16 :goto_188

    :pswitch_a1  #0x12
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/media/tv/ITvInputSession$Stub;->timeShiftSeekTo(J)V

    goto/16 :goto_188

    :pswitch_ad  #0x11
    invoke-virtual {p0}, Landroid/media/tv/ITvInputSession$Stub;->timeShiftResume()V

    goto/16 :goto_188

    :pswitch_b2  #0x10
    invoke-virtual {p0}, Landroid/media/tv/ITvInputSession$Stub;->timeShiftPause()V

    goto/16 :goto_188

    :pswitch_b7  #0xf
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/tv/ITvInputSession$Stub;->timeShiftPlay(Landroid/net/Uri;)V

    goto/16 :goto_188

    :pswitch_c7  #0xe
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/tv/ITvInputSession$Stub;->unblockContent(Ljava/lang/String;)V

    goto/16 :goto_188

    :pswitch_d3  #0xd
    invoke-virtual {p0}, Landroid/media/tv/ITvInputSession$Stub;->removeOverlayView()V

    goto/16 :goto_188

    :pswitch_d8  #0xc
    sget-object v2, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/tv/ITvInputSession$Stub;->relayoutOverlayView(Landroid/graphics/Rect;)V

    goto/16 :goto_188

    :pswitch_e8  #0xb
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    sget-object v3, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/media/tv/ITvInputSession$Stub;->createOverlayView(Landroid/os/IBinder;Landroid/graphics/Rect;)V

    goto/16 :goto_188

    :pswitch_fc  #0xa
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/media/tv/ITvInputSession$Stub;->appPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_188

    :pswitch_110  #0x9
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/tv/ITvInputSession$Stub;->setInteractiveAppNotificationEnabled(Z)V

    goto :goto_188

    :pswitch_11b  #0x8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/media/tv/ITvInputSession$Stub;->selectTrack(ILjava/lang/String;)V

    goto :goto_188

    :pswitch_12a  #0x7
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/tv/ITvInputSession$Stub;->setCaptionEnabled(Z)V

    goto :goto_188

    :pswitch_135  #0x6
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/media/tv/ITvInputSession$Stub;->tune(Landroid/net/Uri;Landroid/os/Bundle;)V

    goto :goto_188

    :pswitch_14c  #0x5
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/tv/ITvInputSession$Stub;->setVolume(F)V

    goto :goto_188

    :pswitch_157  #0x4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4}, Landroid/media/tv/ITvInputSession$Stub;->dispatchSurfaceChanged(III)V

    goto :goto_188

    :pswitch_16a  #0x3
    sget-object v2, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/Surface;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/tv/ITvInputSession$Stub;->setSurface(Landroid/view/Surface;)V

    goto :goto_188

    :pswitch_179  #0x2
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/tv/ITvInputSession$Stub;->setMain(Z)V

    goto :goto_188

    :pswitch_184  #0x1
    invoke-virtual {p0}, Landroid/media/tv/ITvInputSession$Stub;->release()V

    nop

    :goto_188
    return v1

    nop

    :pswitch_data_18a
    .packed-switch 0x5f4e5446
        :pswitch_18  #5f4e5446
    .end packed-switch

    :pswitch_data_190
    .packed-switch 0x1
        :pswitch_184  #00000001
        :pswitch_179  #00000002
        :pswitch_16a  #00000003
        :pswitch_157  #00000004
        :pswitch_14c  #00000005
        :pswitch_135  #00000006
        :pswitch_12a  #00000007
        :pswitch_11b  #00000008
        :pswitch_110  #00000009
        :pswitch_fc  #0000000a
        :pswitch_e8  #0000000b
        :pswitch_d8  #0000000c
        :pswitch_d3  #0000000d
        :pswitch_c7  #0000000e
        :pswitch_b7  #0000000f
        :pswitch_b2  #00000010
        :pswitch_ad  #00000011
        :pswitch_a1  #00000012
        :pswitch_91  #00000013
        :pswitch_85  #00000014
        :pswitch_6d  #00000015
        :pswitch_68  #00000016
        :pswitch_58  #00000017
        :pswitch_48  #00000018
        :pswitch_38  #00000019
        :pswitch_2c  #0000001a
        :pswitch_1c  #0000001b
    .end packed-switch
.end method
