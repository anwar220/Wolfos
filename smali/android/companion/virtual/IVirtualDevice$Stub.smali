# classes.dex

.class public abstract Landroid/companion/virtual/IVirtualDevice$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Landroid/companion/virtual/IVirtualDevice;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/companion/virtual/IVirtualDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/companion/virtual/IVirtualDevice$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_close:I = 0x2

.field static final TRANSACTION_createVirtualKeyboard:I = 0x5

.field static final TRANSACTION_createVirtualMouse:I = 0x6

.field static final TRANSACTION_createVirtualTouchscreen:I = 0x7

.field static final TRANSACTION_getAssociationId:I = 0x1

.field static final TRANSACTION_getCursorPosition:I = 0xf

.field static final TRANSACTION_launchPendingIntent:I = 0xe

.field static final TRANSACTION_onAudioSessionEnded:I = 0x4

.field static final TRANSACTION_onAudioSessionStarting:I = 0x3

.field static final TRANSACTION_sendButtonEvent:I = 0xa

.field static final TRANSACTION_sendKeyEvent:I = 0x9

.field static final TRANSACTION_sendRelativeEvent:I = 0xb

.field static final TRANSACTION_sendScrollEvent:I = 0xc

.field static final TRANSACTION_sendTouchEvent:I = 0xd

.field static final TRANSACTION_setShowPointerIcon:I = 0x10

.field static final TRANSACTION_unregisterInputDevice:I = 0x8


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.companion.virtual.IVirtualDevice"

    invoke-virtual {p0, p0, v0}, Landroid/companion/virtual/IVirtualDevice$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/companion/virtual/IVirtualDevice;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "android.companion.virtual.IVirtualDevice"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/companion/virtual/IVirtualDevice;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Landroid/companion/virtual/IVirtualDevice;

    return-object v1

    :cond_14
    new-instance v1, Landroid/companion/virtual/IVirtualDevice$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/companion/virtual/IVirtualDevice$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_3e

    const/4 v0, 0x0

    return-object v0

    :pswitch_5  #0x10
    const-string/jumbo v0, "setShowPointerIcon"

    return-object v0

    :pswitch_9  #0xf
    const-string v0, "getCursorPosition"

    return-object v0

    :pswitch_c  #0xe
    const-string v0, "launchPendingIntent"

    return-object v0

    :pswitch_f  #0xd
    const-string/jumbo v0, "sendTouchEvent"

    return-object v0

    :pswitch_13  #0xc
    const-string/jumbo v0, "sendScrollEvent"

    return-object v0

    :pswitch_17  #0xb
    const-string/jumbo v0, "sendRelativeEvent"

    return-object v0

    :pswitch_1b  #0xa
    const-string/jumbo v0, "sendButtonEvent"

    return-object v0

    :pswitch_1f  #0x9
    const-string/jumbo v0, "sendKeyEvent"

    return-object v0

    :pswitch_23  #0x8
    const-string/jumbo v0, "unregisterInputDevice"

    return-object v0

    :pswitch_27  #0x7
    const-string v0, "createVirtualTouchscreen"

    return-object v0

    :pswitch_2a  #0x6
    const-string v0, "createVirtualMouse"

    return-object v0

    :pswitch_2d  #0x5
    const-string v0, "createVirtualKeyboard"

    return-object v0

    :pswitch_30  #0x4
    const-string/jumbo v0, "onAudioSessionEnded"

    return-object v0

    :pswitch_34  #0x3
    const-string/jumbo v0, "onAudioSessionStarting"

    return-object v0

    :pswitch_38  #0x2
    const-string v0, "close"

    return-object v0

    :pswitch_3b  #0x1
    const-string v0, "getAssociationId"

    return-object v0

    :pswitch_data_3e
    .packed-switch 0x1
        :pswitch_3b  #00000001
        :pswitch_38  #00000002
        :pswitch_34  #00000003
        :pswitch_30  #00000004
        :pswitch_2d  #00000005
        :pswitch_2a  #00000006
        :pswitch_27  #00000007
        :pswitch_23  #00000008
        :pswitch_1f  #00000009
        :pswitch_1b  #0000000a
        :pswitch_17  #0000000b
        :pswitch_13  #0000000c
        :pswitch_f  #0000000d
        :pswitch_c  #0000000e
        :pswitch_9  #0000000f
        :pswitch_5  #00000010
    .end packed-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    const/16 v0, 0xf

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3

    invoke-static {p1}, Landroid/companion/virtual/IVirtualDevice$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
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

    const-string v11, "android.companion.virtual.IVirtualDevice"

    const/4 v12, 0x1

    if-lt v8, v12, :cond_15

    const v0, 0xffffff

    if-gt v8, v0, :cond_15

    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_15
    packed-switch v8, :pswitch_data_1b4

    packed-switch v8, :pswitch_data_1ba

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :pswitch_20  #0x5f4e5446
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v12

    :pswitch_24  #0x10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0}, Landroid/companion/virtual/IVirtualDevice$Stub;->setShowPointerIcon(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1b2

    :pswitch_33  #0xf
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0}, Landroid/companion/virtual/IVirtualDevice$Stub;->getCursorPosition(Landroid/os/IBinder;)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v1, v12}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_1b2

    :pswitch_46  #0xe
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    sget-object v1, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    sget-object v2, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ResultReceiver;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0, v1, v2}, Landroid/companion/virtual/IVirtualDevice$Stub;->launchPendingIntent(ILandroid/app/PendingIntent;Landroid/os/ResultReceiver;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1b2

    :pswitch_65  #0xd
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    sget-object v1, Landroid/hardware/input/VirtualTouchEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/input/VirtualTouchEvent;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0, v1}, Landroid/companion/virtual/IVirtualDevice$Stub;->sendTouchEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualTouchEvent;)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_1b2

    :pswitch_80  #0xc
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    sget-object v1, Landroid/hardware/input/VirtualMouseScrollEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/input/VirtualMouseScrollEvent;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0, v1}, Landroid/companion/virtual/IVirtualDevice$Stub;->sendScrollEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualMouseScrollEvent;)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_1b2

    :pswitch_9b  #0xb
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    sget-object v1, Landroid/hardware/input/VirtualMouseRelativeEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/input/VirtualMouseRelativeEvent;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0, v1}, Landroid/companion/virtual/IVirtualDevice$Stub;->sendRelativeEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualMouseRelativeEvent;)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_1b2

    :pswitch_b6  #0xa
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    sget-object v1, Landroid/hardware/input/VirtualMouseButtonEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/input/VirtualMouseButtonEvent;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0, v1}, Landroid/companion/virtual/IVirtualDevice$Stub;->sendButtonEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualMouseButtonEvent;)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_1b2

    :pswitch_d1  #0x9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    sget-object v1, Landroid/hardware/input/VirtualKeyEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/input/VirtualKeyEvent;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0, v1}, Landroid/companion/virtual/IVirtualDevice$Stub;->sendKeyEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualKeyEvent;)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_1b2

    :pswitch_ec  #0x8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0}, Landroid/companion/virtual/IVirtualDevice$Stub;->unregisterInputDevice(Landroid/os/IBinder;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1b2

    :pswitch_fb  #0x7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v17

    sget-object v0, Landroid/graphics/Point;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Landroid/graphics/Point;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move v1, v13

    move-object v2, v14

    move v3, v15

    move/from16 v4, v16

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/companion/virtual/IVirtualDevice$Stub;->createVirtualTouchscreen(ILjava/lang/String;IILandroid/os/IBinder;Landroid/graphics/Point;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1b2

    :pswitch_12f  #0x6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move v1, v6

    move-object v2, v13

    move v3, v14

    move v4, v15

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/companion/virtual/IVirtualDevice$Stub;->createVirtualMouse(ILjava/lang/String;IILandroid/os/IBinder;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_1b2

    :pswitch_155  #0x5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move v1, v6

    move-object v2, v13

    move v3, v14

    move v4, v15

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/companion/virtual/IVirtualDevice$Stub;->createVirtualKeyboard(ILjava/lang/String;IILandroid/os/IBinder;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_1b2

    :pswitch_17b  #0x4
    invoke-virtual/range {p0 .. p0}, Landroid/companion/virtual/IVirtualDevice$Stub;->onAudioSessionEnded()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_1b2

    :pswitch_182  #0x3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/companion/virtual/audio/IAudioRoutingCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/companion/virtual/audio/IAudioRoutingCallback;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/companion/virtual/audio/IAudioConfigChangedCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/companion/virtual/audio/IAudioConfigChangedCallback;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0, v1, v2}, Landroid/companion/virtual/IVirtualDevice$Stub;->onAudioSessionStarting(ILandroid/companion/virtual/audio/IAudioRoutingCallback;Landroid/companion/virtual/audio/IAudioConfigChangedCallback;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_1b2

    :pswitch_1a0  #0x2
    invoke-virtual/range {p0 .. p0}, Landroid/companion/virtual/IVirtualDevice$Stub;->close()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_1b2

    :pswitch_1a7  #0x1
    invoke-virtual/range {p0 .. p0}, Landroid/companion/virtual/IVirtualDevice$Stub;->getAssociationId()I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    nop

    :goto_1b2
    return v12

    nop

    :pswitch_data_1b4
    .packed-switch 0x5f4e5446
        :pswitch_20  #5f4e5446
    .end packed-switch

    :pswitch_data_1ba
    .packed-switch 0x1
        :pswitch_1a7  #00000001
        :pswitch_1a0  #00000002
        :pswitch_182  #00000003
        :pswitch_17b  #00000004
        :pswitch_155  #00000005
        :pswitch_12f  #00000006
        :pswitch_fb  #00000007
        :pswitch_ec  #00000008
        :pswitch_d1  #00000009
        :pswitch_b6  #0000000a
        :pswitch_9b  #0000000b
        :pswitch_80  #0000000c
        :pswitch_65  #0000000d
        :pswitch_46  #0000000e
        :pswitch_33  #0000000f
        :pswitch_24  #00000010
    .end packed-switch
.end method
