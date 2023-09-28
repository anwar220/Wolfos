# classes.dex

.class public abstract Landroid/hardware/fingerprint/IUdfpsOverlayController$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Landroid/hardware/fingerprint/IUdfpsOverlayController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/fingerprint/IUdfpsOverlayController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/fingerprint/IUdfpsOverlayController$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_hideUdfpsOverlay:I = 0x2

.field static final TRANSACTION_onAcquired:I = 0x3

.field static final TRANSACTION_onEnrollmentHelp:I = 0x5

.field static final TRANSACTION_onEnrollmentProgress:I = 0x4

.field static final TRANSACTION_setDebugMessage:I = 0x6

.field static final TRANSACTION_showUdfpsOverlay:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.hardware.fingerprint.IUdfpsOverlayController"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/fingerprint/IUdfpsOverlayController$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/fingerprint/IUdfpsOverlayController;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "android.hardware.fingerprint.IUdfpsOverlayController"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/fingerprint/IUdfpsOverlayController;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Landroid/hardware/fingerprint/IUdfpsOverlayController;

    return-object v1

    :cond_14
    new-instance v1, Landroid/hardware/fingerprint/IUdfpsOverlayController$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/fingerprint/IUdfpsOverlayController$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_1c

    const/4 v0, 0x0

    return-object v0

    :pswitch_5  #0x6
    const-string/jumbo v0, "setDebugMessage"

    return-object v0

    :pswitch_9  #0x5
    const-string/jumbo v0, "onEnrollmentHelp"

    return-object v0

    :pswitch_d  #0x4
    const-string/jumbo v0, "onEnrollmentProgress"

    return-object v0

    :pswitch_11  #0x3
    const-string/jumbo v0, "onAcquired"

    return-object v0

    :pswitch_15  #0x2
    const-string v0, "hideUdfpsOverlay"

    return-object v0

    :pswitch_18  #0x1
    const-string/jumbo v0, "showUdfpsOverlay"

    return-object v0

    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_18  #00000001
        :pswitch_15  #00000002
        :pswitch_11  #00000003
        :pswitch_d  #00000004
        :pswitch_9  #00000005
        :pswitch_5  #00000006
    .end packed-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    const/4 v0, 0x5

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3

    invoke-static {p1}, Landroid/hardware/fingerprint/IUdfpsOverlayController$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    const-string v8, "android.hardware.fingerprint.IUdfpsOverlayController"

    const/4 v9, 0x1

    if-lt v7, v9, :cond_14

    const v0, 0xffffff

    if-gt v7, v0, :cond_14

    move-object/from16 v10, p2

    invoke-virtual {v10, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    goto :goto_16

    :cond_14
    move-object/from16 v10, p2

    :goto_16
    packed-switch v7, :pswitch_data_90

    move-object/from16 v11, p3

    packed-switch v7, :pswitch_data_96

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :pswitch_23  #0x5f4e5446
    move-object/from16 v11, p3

    invoke-virtual {v11, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v9

    :pswitch_29  #0x6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1}, Landroid/hardware/fingerprint/IUdfpsOverlayController$Stub;->setDebugMessage(ILjava/lang/String;)V

    goto :goto_8e

    :pswitch_38  #0x5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Landroid/hardware/fingerprint/IUdfpsOverlayController$Stub;->onEnrollmentHelp(I)V

    goto :goto_8e

    :pswitch_43  #0x4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1}, Landroid/hardware/fingerprint/IUdfpsOverlayController$Stub;->onEnrollmentProgress(II)V

    goto :goto_8e

    :pswitch_52  #0x3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1}, Landroid/hardware/fingerprint/IUdfpsOverlayController$Stub;->onAcquired(II)V

    goto :goto_8e

    :pswitch_61  #0x2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Landroid/hardware/fingerprint/IUdfpsOverlayController$Stub;->hideUdfpsOverlay(I)V

    goto :goto_8e

    :pswitch_6c  #0x1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/fingerprint/IUdfpsOverlayControllerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/fingerprint/IUdfpsOverlayControllerCallback;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move-wide v1, v12

    move v3, v14

    move v4, v15

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/fingerprint/IUdfpsOverlayController$Stub;->showUdfpsOverlay(JIILandroid/hardware/fingerprint/IUdfpsOverlayControllerCallback;)V

    nop

    :goto_8e
    return v9

    nop

    :pswitch_data_90
    .packed-switch 0x5f4e5446
        :pswitch_23  #5f4e5446
    .end packed-switch

    :pswitch_data_96
    .packed-switch 0x1
        :pswitch_6c  #00000001
        :pswitch_61  #00000002
        :pswitch_52  #00000003
        :pswitch_43  #00000004
        :pswitch_38  #00000005
        :pswitch_29  #00000006
    .end packed-switch
.end method
