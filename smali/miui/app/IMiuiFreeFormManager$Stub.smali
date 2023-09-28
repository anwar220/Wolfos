# classes4.dex

.class public abstract Lmiui/app/IMiuiFreeFormManager$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Lmiui/app/IMiuiFreeFormManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/IMiuiFreeFormManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/app/IMiuiFreeFormManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_getAllFreeFormStackInfosOnDisplay:I = 0x1

.field static final TRANSACTION_getAllPinedFreeFormStackInfosOnDisplay:I = 0x14

.field static final TRANSACTION_getFirstUseMiuiFreeForm:I = 0xd

.field static final TRANSACTION_getFirstUseTipConfirmTimes:I = 0xb

.field static final TRANSACTION_getFreeFormStackInfoByActivity:I = 0x2

.field static final TRANSACTION_getFreeFormStackInfoByStackId:I = 0x4

.field static final TRANSACTION_getFreeFormStackInfoByWindow:I = 0x3

.field static final TRANSACTION_getFreeFormStackToAvoid:I = 0xa

.field static final TRANSACTION_getMaxMiuiFreeFormStackCountForFlashBack:I = 0x5

.field static final TRANSACTION_hidePinFloatingWindow:I = 0x12

.field static final TRANSACTION_isSupportPin:I = 0x13

.field static final TRANSACTION_notifyCameraStateChanged:I = 0x8

.field static final TRANSACTION_openCameraInFreeForm:I = 0x9

.field static final TRANSACTION_registerFreeformCallback:I = 0x6

.field static final TRANSACTION_setFirstUseMiuiFreeForm:I = 0xe

.field static final TRANSACTION_setFirstUseTipConfirmTimes:I = 0xc

.field static final TRANSACTION_trackClickSmallWindowEvent:I = 0xf

.field static final TRANSACTION_unPinFloatingWindow:I = 0x11

.field static final TRANSACTION_unregisterFreeformCallback:I = 0x7

.field static final TRANSACTION_updatePinFloatingWindowPos:I = 0x10


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "miui.app.IMiuiFreeFormManager"

    invoke-virtual {p0, p0, v0}, Lmiui/app/IMiuiFreeFormManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lmiui/app/IMiuiFreeFormManager;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string/jumbo v0, "miui.app.IMiuiFreeFormManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_15

    instance-of v1, v0, Lmiui/app/IMiuiFreeFormManager;

    if-eqz v1, :cond_15

    move-object v1, v0

    check-cast v1, Lmiui/app/IMiuiFreeFormManager;

    return-object v1

    :cond_15
    new-instance v1, Lmiui/app/IMiuiFreeFormManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lmiui/app/IMiuiFreeFormManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_4a

    const/4 v0, 0x0

    return-object v0

    :pswitch_5  #0x14
    const-string v0, "getAllPinedFreeFormStackInfosOnDisplay"

    return-object v0

    :pswitch_8  #0x13
    const-string v0, "isSupportPin"

    return-object v0

    :pswitch_b  #0x12
    const-string v0, "hidePinFloatingWindow"

    return-object v0

    :pswitch_e  #0x11
    const-string/jumbo v0, "unPinFloatingWindow"

    return-object v0

    :pswitch_12  #0x10
    const-string/jumbo v0, "updatePinFloatingWindowPos"

    return-object v0

    :pswitch_16  #0xf
    const-string/jumbo v0, "trackClickSmallWindowEvent"

    return-object v0

    :pswitch_1a  #0xe
    const-string/jumbo v0, "setFirstUseMiuiFreeForm"

    return-object v0

    :pswitch_1e  #0xd
    const-string v0, "getFirstUseMiuiFreeForm"

    return-object v0

    :pswitch_21  #0xc
    const-string/jumbo v0, "setFirstUseTipConfirmTimes"

    return-object v0

    :pswitch_25  #0xb
    const-string v0, "getFirstUseTipConfirmTimes"

    return-object v0

    :pswitch_28  #0xa
    const-string v0, "getFreeFormStackToAvoid"

    return-object v0

    :pswitch_2b  #0x9
    const-string/jumbo v0, "openCameraInFreeForm"

    return-object v0

    :pswitch_2f  #0x8
    const-string/jumbo v0, "notifyCameraStateChanged"

    return-object v0

    :pswitch_33  #0x7
    const-string/jumbo v0, "unregisterFreeformCallback"

    return-object v0

    :pswitch_37  #0x6
    const-string/jumbo v0, "registerFreeformCallback"

    return-object v0

    :pswitch_3b  #0x5
    const-string v0, "getMaxMiuiFreeFormStackCountForFlashBack"

    return-object v0

    :pswitch_3e  #0x4
    const-string v0, "getFreeFormStackInfoByStackId"

    return-object v0

    :pswitch_41  #0x3
    const-string v0, "getFreeFormStackInfoByWindow"

    return-object v0

    :pswitch_44  #0x2
    const-string v0, "getFreeFormStackInfoByActivity"

    return-object v0

    :pswitch_47  #0x1
    const-string v0, "getAllFreeFormStackInfosOnDisplay"

    return-object v0

    :pswitch_data_4a
    .packed-switch 0x1
        :pswitch_47  #00000001
        :pswitch_44  #00000002
        :pswitch_41  #00000003
        :pswitch_3e  #00000004
        :pswitch_3b  #00000005
        :pswitch_37  #00000006
        :pswitch_33  #00000007
        :pswitch_2f  #00000008
        :pswitch_2b  #00000009
        :pswitch_28  #0000000a
        :pswitch_25  #0000000b
        :pswitch_21  #0000000c
        :pswitch_1e  #0000000d
        :pswitch_1a  #0000000e
        :pswitch_16  #0000000f
        :pswitch_12  #00000010
        :pswitch_e  #00000011
        :pswitch_b  #00000012
        :pswitch_8  #00000013
        :pswitch_5  #00000014
    .end packed-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    const/16 v0, 0x13

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3

    invoke-static {p1}, Lmiui/app/IMiuiFreeFormManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    move-object/from16 v9, p3

    const-string/jumbo v10, "miui.app.IMiuiFreeFormManager"

    const/4 v11, 0x1

    if-lt v7, v11, :cond_16

    const v0, 0xffffff

    if-gt v7, v0, :cond_16

    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_16
    packed-switch v7, :pswitch_data_18c

    packed-switch v7, :pswitch_data_192

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :pswitch_21  #0x5f4e5446
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v11

    :pswitch_25  #0x14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Lmiui/app/IMiuiFreeFormManager$Stub;->getAllPinedFreeFormStackInfosOnDisplay(I)Ljava/util/List;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_18b

    :pswitch_38  #0x13
    invoke-virtual/range {p0 .. p0}, Lmiui/app/IMiuiFreeFormManager$Stub;->isSupportPin()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_18b

    :pswitch_44  #0x12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Lmiui/app/IMiuiFreeFormManager$Stub;->hidePinFloatingWindow(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_18b

    :pswitch_53  #0x11
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/graphics/Rect;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move-object v1, v12

    move v2, v13

    move v3, v14

    move v4, v15

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lmiui/app/IMiuiFreeFormManager$Stub;->unPinFloatingWindow(Landroid/graphics/Rect;IFFZ)Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_18b

    :pswitch_83  #0x10
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1}, Lmiui/app/IMiuiFreeFormManager$Stub;->updatePinFloatingWindowPos(Landroid/graphics/Rect;I)V

    goto/16 :goto_18b

    :pswitch_97  #0xf
    invoke-virtual/range {p0 .. p0}, Lmiui/app/IMiuiFreeFormManager$Stub;->trackClickSmallWindowEvent()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_18b

    :pswitch_9f  #0xe
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Lmiui/app/IMiuiFreeFormManager$Stub;->setFirstUseMiuiFreeForm(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_18b

    :pswitch_ae  #0xd
    invoke-virtual/range {p0 .. p0}, Lmiui/app/IMiuiFreeFormManager$Stub;->getFirstUseMiuiFreeForm()I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_18b

    :pswitch_ba  #0xc
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Lmiui/app/IMiuiFreeFormManager$Stub;->setFirstUseTipConfirmTimes(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_18b

    :pswitch_c9  #0xb
    invoke-virtual/range {p0 .. p0}, Lmiui/app/IMiuiFreeFormManager$Stub;->getFirstUseTipConfirmTimes()I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_18b

    :pswitch_d5  #0xa
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1}, Lmiui/app/IMiuiFreeFormManager$Stub;->getFreeFormStackToAvoid(ILjava/lang/String;)Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v2, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_18b

    :pswitch_ec  #0x9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Lmiui/app/IMiuiFreeFormManager$Stub;->openCameraInFreeForm(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_18b

    :pswitch_ff  #0x8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1}, Lmiui/app/IMiuiFreeFormManager$Stub;->notifyCameraStateChanged(Ljava/lang/String;I)V

    goto/16 :goto_18b

    :pswitch_10f  #0x7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lmiui/app/IFreeformCallback$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/app/IFreeformCallback;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Lmiui/app/IMiuiFreeFormManager$Stub;->unregisterFreeformCallback(Lmiui/app/IFreeformCallback;)V

    goto :goto_18b

    :pswitch_11e  #0x6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lmiui/app/IFreeformCallback$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/app/IFreeformCallback;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Lmiui/app/IMiuiFreeFormManager$Stub;->registerFreeformCallback(Lmiui/app/IFreeformCallback;)V

    goto :goto_18b

    :pswitch_12d  #0x5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1}, Lmiui/app/IMiuiFreeFormManager$Stub;->getMaxMiuiFreeFormStackCountForFlashBack(Ljava/lang/String;Z)I

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_18b

    :pswitch_143  #0x4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Lmiui/app/IMiuiFreeFormManager$Stub;->getFreeFormStackInfoByStackId(I)Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto :goto_18b

    :pswitch_155  #0x3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Lmiui/app/IMiuiFreeFormManager$Stub;->getFreeFormStackInfoByWindow(Landroid/os/IBinder;)Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto :goto_18b

    :pswitch_167  #0x2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Lmiui/app/IMiuiFreeFormManager$Stub;->getFreeFormStackInfoByActivity(Landroid/os/IBinder;)Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto :goto_18b

    :pswitch_179  #0x1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Lmiui/app/IMiuiFreeFormManager$Stub;->getAllFreeFormStackInfosOnDisplay(I)Ljava/util/List;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    nop

    :goto_18b
    return v11

    :pswitch_data_18c
    .packed-switch 0x5f4e5446
        :pswitch_21  #5f4e5446
    .end packed-switch

    :pswitch_data_192
    .packed-switch 0x1
        :pswitch_179  #00000001
        :pswitch_167  #00000002
        :pswitch_155  #00000003
        :pswitch_143  #00000004
        :pswitch_12d  #00000005
        :pswitch_11e  #00000006
        :pswitch_10f  #00000007
        :pswitch_ff  #00000008
        :pswitch_ec  #00000009
        :pswitch_d5  #0000000a
        :pswitch_c9  #0000000b
        :pswitch_ba  #0000000c
        :pswitch_ae  #0000000d
        :pswitch_9f  #0000000e
        :pswitch_97  #0000000f
        :pswitch_83  #00000010
        :pswitch_53  #00000011
        :pswitch_44  #00000012
        :pswitch_38  #00000013
        :pswitch_25  #00000014
    .end packed-switch
.end method
