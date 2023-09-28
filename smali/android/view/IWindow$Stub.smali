# classes3.dex

.class public abstract Landroid/view/IWindow$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Landroid/view/IWindow;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/IWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/IWindow$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.view.IWindow"

.field static final TRANSACTION_closeSystemDialogs:I = 0x9

.field static final TRANSACTION_dispatchAppVisibility:I = 0x7

.field static final TRANSACTION_dispatchDragEvent:I = 0xc

.field static final TRANSACTION_dispatchEnterDragArea:I = 0x15

.field static final TRANSACTION_dispatchFreeFormStackModeChanged:I = 0x14

.field static final TRANSACTION_dispatchGetNewSurface:I = 0x8

.field static final TRANSACTION_dispatchWallpaperCommand:I = 0xb

.field static final TRANSACTION_dispatchWallpaperOffsets:I = 0xa

.field static final TRANSACTION_dispatchWindowShown:I = 0xe

.field static final TRANSACTION_executeCommand:I = 0x1

.field static final TRANSACTION_hideInsets:I = 0x5

.field static final TRANSACTION_insetsControlChanged:I = 0x3

.field static final TRANSACTION_moved:I = 0x6

.field static final TRANSACTION_notifyCastMode:I = 0x11

.field static final TRANSACTION_notifyProjectionMode:I = 0x13

.field static final TRANSACTION_notifyRotationChanged:I = 0x12

.field static final TRANSACTION_requestAppKeyboardShortcuts:I = 0xf

.field static final TRANSACTION_requestScrollCapture:I = 0x10

.field static final TRANSACTION_resized:I = 0x2

.field static final TRANSACTION_showInsets:I = 0x4

.field static final TRANSACTION_updatePointerIcon:I = 0xd


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.view.IWindow"

    invoke-virtual {p0, p0, v0}, Landroid/view/IWindow$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "android.view.IWindow"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/view/IWindow;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Landroid/view/IWindow;

    return-object v1

    :cond_14
    new-instance v1, Landroid/view/IWindow$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/view/IWindow$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_4e

    const/4 v0, 0x0

    return-object v0

    :pswitch_5  #0x15
    const-string v0, "dispatchEnterDragArea"

    return-object v0

    :pswitch_8  #0x14
    const-string v0, "dispatchFreeFormStackModeChanged"

    return-object v0

    :pswitch_b  #0x13
    const-string/jumbo v0, "notifyProjectionMode"

    return-object v0

    :pswitch_f  #0x12
    const-string/jumbo v0, "notifyRotationChanged"

    return-object v0

    :pswitch_13  #0x11
    const-string/jumbo v0, "notifyCastMode"

    return-object v0

    :pswitch_17  #0x10
    const-string/jumbo v0, "requestScrollCapture"

    return-object v0

    :pswitch_1b  #0xf
    const-string/jumbo v0, "requestAppKeyboardShortcuts"

    return-object v0

    :pswitch_1f  #0xe
    const-string v0, "dispatchWindowShown"

    return-object v0

    :pswitch_22  #0xd
    const-string/jumbo v0, "updatePointerIcon"

    return-object v0

    :pswitch_26  #0xc
    const-string v0, "dispatchDragEvent"

    return-object v0

    :pswitch_29  #0xb
    const-string v0, "dispatchWallpaperCommand"

    return-object v0

    :pswitch_2c  #0xa
    const-string v0, "dispatchWallpaperOffsets"

    return-object v0

    :pswitch_2f  #0x9
    const-string v0, "closeSystemDialogs"

    return-object v0

    :pswitch_32  #0x8
    const-string v0, "dispatchGetNewSurface"

    return-object v0

    :pswitch_35  #0x7
    const-string v0, "dispatchAppVisibility"

    return-object v0

    :pswitch_38  #0x6
    const-string/jumbo v0, "moved"

    return-object v0

    :pswitch_3c  #0x5
    const-string v0, "hideInsets"

    return-object v0

    :pswitch_3f  #0x4
    const-string/jumbo v0, "showInsets"

    return-object v0

    :pswitch_43  #0x3
    const-string/jumbo v0, "insetsControlChanged"

    return-object v0

    :pswitch_47  #0x2
    const-string/jumbo v0, "resized"

    return-object v0

    :pswitch_4b  #0x1
    const-string v0, "executeCommand"

    return-object v0

    :pswitch_data_4e
    .packed-switch 0x1
        :pswitch_4b  #00000001
        :pswitch_47  #00000002
        :pswitch_43  #00000003
        :pswitch_3f  #00000004
        :pswitch_3c  #00000005
        :pswitch_38  #00000006
        :pswitch_35  #00000007
        :pswitch_32  #00000008
        :pswitch_2f  #00000009
        :pswitch_2c  #0000000a
        :pswitch_29  #0000000b
        :pswitch_26  #0000000c
        :pswitch_22  #0000000d
        :pswitch_1f  #0000000e
        :pswitch_1b  #0000000f
        :pswitch_17  #00000010
        :pswitch_13  #00000011
        :pswitch_f  #00000012
        :pswitch_b  #00000013
        :pswitch_8  #00000014
        :pswitch_5  #00000015
    .end packed-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    const/16 v0, 0x14

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3

    invoke-static {p1}, Landroid/view/IWindow$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 30
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v10, p0

    move/from16 v11, p1

    move-object/from16 v12, p2

    const-string v13, "android.view.IWindow"

    const/4 v14, 0x1

    if-lt v11, v14, :cond_13

    const v0, 0xffffff

    if-gt v11, v0, :cond_13

    invoke-virtual {v12, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_13
    packed-switch v11, :pswitch_data_1e0

    move-object/from16 v15, p3

    packed-switch v11, :pswitch_data_1e6

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :pswitch_20  #0x5f4e5446
    move-object/from16 v15, p3

    invoke-virtual {v15, v13}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v14

    :pswitch_26  #0x15
    sget-object v0, Landroid/view/MotionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MotionEvent;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v10, v0}, Landroid/view/IWindow$Stub;->dispatchEnterDragArea(Landroid/view/MotionEvent;)V

    goto/16 :goto_1df

    :pswitch_36  #0x14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    sget-object v1, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v10, v0, v1}, Landroid/view/IWindow$Stub;->dispatchFreeFormStackModeChanged(ILmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;)V

    goto/16 :goto_1df

    :pswitch_4a  #0x13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v10, v0}, Landroid/view/IWindow$Stub;->notifyProjectionMode(Z)V

    goto/16 :goto_1df

    :pswitch_56  #0x12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v10, v0}, Landroid/view/IWindow$Stub;->notifyRotationChanged(Z)V

    goto/16 :goto_1df

    :pswitch_62  #0x11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v10, v0}, Landroid/view/IWindow$Stub;->notifyCastMode(Z)V

    goto/16 :goto_1df

    :pswitch_6e  #0x10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IScrollCaptureResponseListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IScrollCaptureResponseListener;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v10, v0}, Landroid/view/IWindow$Stub;->requestScrollCapture(Landroid/view/IScrollCaptureResponseListener;)V

    goto/16 :goto_1df

    :pswitch_7e  #0xf
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/os/IResultReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/os/IResultReceiver;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v10, v0, v1}, Landroid/view/IWindow$Stub;->requestAppKeyboardShortcuts(Lcom/android/internal/os/IResultReceiver;I)V

    goto/16 :goto_1df

    :pswitch_92  #0xe
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindow$Stub;->dispatchWindowShown()V

    goto/16 :goto_1df

    :pswitch_97  #0xd
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v10, v0, v1}, Landroid/view/IWindow$Stub;->updatePointerIcon(FF)V

    goto/16 :goto_1df

    :pswitch_a7  #0xc
    sget-object v0, Landroid/view/DragEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/DragEvent;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v10, v0}, Landroid/view/IWindow$Stub;->dispatchDragEvent(Landroid/view/DragEvent;)V

    goto/16 :goto_1df

    :pswitch_b7  #0xb
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Landroid/os/Bundle;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v18

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move-object v1, v7

    move v2, v8

    move v3, v9

    move/from16 v4, v16

    move-object/from16 v5, v17

    move/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/view/IWindow$Stub;->dispatchWallpaperCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)V

    goto/16 :goto_1df

    :pswitch_e8  #0xa
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v18

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move v1, v7

    move v2, v8

    move v3, v9

    move/from16 v4, v16

    move/from16 v5, v17

    move/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/view/IWindow$Stub;->dispatchWallpaperOffsets(FFFFFZ)V

    goto/16 :goto_1df

    :pswitch_113  #0x9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v10, v0}, Landroid/view/IWindow$Stub;->closeSystemDialogs(Ljava/lang/String;)V

    goto/16 :goto_1df

    :pswitch_11f  #0x8
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindow$Stub;->dispatchGetNewSurface()V

    goto/16 :goto_1df

    :pswitch_124  #0x7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v10, v0}, Landroid/view/IWindow$Stub;->dispatchAppVisibility(Z)V

    goto/16 :goto_1df

    :pswitch_130  #0x6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v10, v0, v1}, Landroid/view/IWindow$Stub;->moved(II)V

    goto/16 :goto_1df

    :pswitch_140  #0x5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v10, v0, v1}, Landroid/view/IWindow$Stub;->hideInsets(IZ)V

    goto/16 :goto_1df

    :pswitch_150  #0x4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v10, v0, v1}, Landroid/view/IWindow$Stub;->showInsets(IZ)V

    goto/16 :goto_1df

    :pswitch_160  #0x3
    sget-object v0, Landroid/view/InsetsState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/InsetsState;

    sget-object v1, Landroid/view/InsetsSourceControl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/view/InsetsSourceControl;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v10, v0, v1}, Landroid/view/IWindow$Stub;->insetsControlChanged(Landroid/view/InsetsState;[Landroid/view/InsetsSourceControl;)V

    goto :goto_1df

    :pswitch_177  #0x2
    sget-object v0, Landroid/window/ClientWindowFrames;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/window/ClientWindowFrames;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v17

    sget-object v0, Landroid/util/MergedConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Landroid/util/MergedConfiguration;

    sget-object v0, Landroid/view/InsetsState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v19, v0

    check-cast v19, Landroid/view/InsetsState;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v20

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v21

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v17

    move-object/from16 v3, v18

    move-object/from16 v4, v19

    move/from16 v5, v20

    move/from16 v6, v21

    move/from16 v7, v22

    move/from16 v8, v23

    move/from16 v9, v24

    invoke-virtual/range {v0 .. v9}, Landroid/view/IWindow$Stub;->resized(Landroid/window/ClientWindowFrames;ZLandroid/util/MergedConfiguration;Landroid/view/InsetsState;ZZIII)V

    goto :goto_1df

    :pswitch_1c8  #0x1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelFileDescriptor;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v10, v0, v1, v2}, Landroid/view/IWindow$Stub;->executeCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V

    nop

    :goto_1df
    return v14

    :pswitch_data_1e0
    .packed-switch 0x5f4e5446
        :pswitch_20  #5f4e5446
    .end packed-switch

    :pswitch_data_1e6
    .packed-switch 0x1
        :pswitch_1c8  #00000001
        :pswitch_177  #00000002
        :pswitch_160  #00000003
        :pswitch_150  #00000004
        :pswitch_140  #00000005
        :pswitch_130  #00000006
        :pswitch_124  #00000007
        :pswitch_11f  #00000008
        :pswitch_113  #00000009
        :pswitch_e8  #0000000a
        :pswitch_b7  #0000000b
        :pswitch_a7  #0000000c
        :pswitch_97  #0000000d
        :pswitch_92  #0000000e
        :pswitch_7e  #0000000f
        :pswitch_6e  #00000010
        :pswitch_62  #00000011
        :pswitch_56  #00000012
        :pswitch_4a  #00000013
        :pswitch_36  #00000014
        :pswitch_26  #00000015
    .end packed-switch
.end method
