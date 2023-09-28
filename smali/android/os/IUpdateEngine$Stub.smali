# classes3.dex

.class public abstract Landroid/os/IUpdateEngine$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Landroid/os/IUpdateEngine;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IUpdateEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IUpdateEngine$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.os.IUpdateEngine"

.field static final TRANSACTION_allocateSpaceForPayload:I = 0xc

.field static final TRANSACTION_applyPayload:I = 0x1

.field static final TRANSACTION_applyPayloadFd:I = 0x2

.field static final TRANSACTION_bind:I = 0x3

.field static final TRANSACTION_cancel:I = 0x7

.field static final TRANSACTION_cleanupSuccessfulUpdate:I = 0xd

.field static final TRANSACTION_resetShouldSwitchSlotOnReboot:I = 0xa

.field static final TRANSACTION_resetStatus:I = 0x8

.field static final TRANSACTION_resume:I = 0x6

.field static final TRANSACTION_setShouldSwitchSlotOnReboot:I = 0x9

.field static final TRANSACTION_suspend:I = 0x5

.field static final TRANSACTION_unbind:I = 0x4

.field static final TRANSACTION_verifyPayloadApplicable:I = 0xb


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.os.IUpdateEngine"

    invoke-virtual {p0, p0, v0}, Landroid/os/IUpdateEngine$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/IUpdateEngine;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "android.os.IUpdateEngine"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/os/IUpdateEngine;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Landroid/os/IUpdateEngine;

    return-object v1

    :cond_14
    new-instance v1, Landroid/os/IUpdateEngine$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/IUpdateEngine$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_34

    const/4 v0, 0x0

    return-object v0

    :pswitch_5  #0xd
    const-string v0, "cleanupSuccessfulUpdate"

    return-object v0

    :pswitch_8  #0xc
    const-string v0, "allocateSpaceForPayload"

    return-object v0

    :pswitch_b  #0xb
    const-string/jumbo v0, "verifyPayloadApplicable"

    return-object v0

    :pswitch_f  #0xa
    const-string/jumbo v0, "resetShouldSwitchSlotOnReboot"

    return-object v0

    :pswitch_13  #0x9
    const-string/jumbo v0, "setShouldSwitchSlotOnReboot"

    return-object v0

    :pswitch_17  #0x8
    const-string/jumbo v0, "resetStatus"

    return-object v0

    :pswitch_1b  #0x7
    const-string v0, "cancel"

    return-object v0

    :pswitch_1e  #0x6
    const-string/jumbo v0, "resume"

    return-object v0

    :pswitch_22  #0x5
    const-string/jumbo v0, "suspend"

    return-object v0

    :pswitch_26  #0x4
    const-string/jumbo v0, "unbind"

    return-object v0

    :pswitch_2a  #0x3
    const-string v0, "bind"

    return-object v0

    :pswitch_2d  #0x2
    const-string v0, "applyPayloadFd"

    return-object v0

    :pswitch_30  #0x1
    const-string v0, "applyPayload"

    return-object v0

    nop

    :pswitch_data_34
    .packed-switch 0x1
        :pswitch_30  #00000001
        :pswitch_2d  #00000002
        :pswitch_2a  #00000003
        :pswitch_26  #00000004
        :pswitch_22  #00000005
        :pswitch_1e  #00000006
        :pswitch_1b  #00000007
        :pswitch_17  #00000008
        :pswitch_13  #00000009
        :pswitch_f  #0000000a
        :pswitch_b  #0000000b
        :pswitch_8  #0000000c
        :pswitch_5  #0000000d
    .end packed-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    const/16 v0, 0xc

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3

    invoke-static {p1}, Landroid/os/IUpdateEngine$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    const-string v11, "android.os.IUpdateEngine"

    const/4 v12, 0x1

    if-lt v8, v12, :cond_15

    const v0, 0xffffff

    if-gt v8, v0, :cond_15

    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_15
    packed-switch v8, :pswitch_data_10e

    packed-switch v8, :pswitch_data_114

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :pswitch_20  #0x5f4e5446
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v12

    :pswitch_24  #0xd
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IUpdateEngineCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IUpdateEngineCallback;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0}, Landroid/os/IUpdateEngine$Stub;->cleanupSuccessfulUpdate(Landroid/os/IUpdateEngineCallback;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_10d

    :pswitch_37  #0xc
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0, v1}, Landroid/os/IUpdateEngine$Stub;->allocateSpaceForPayload(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_10d

    :pswitch_4e  #0xb
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0}, Landroid/os/IUpdateEngine$Stub;->verifyPayloadApplicable(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_10d

    :pswitch_61  #0xa
    invoke-virtual/range {p0 .. p0}, Landroid/os/IUpdateEngine$Stub;->resetShouldSwitchSlotOnReboot()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_10d

    :pswitch_69  #0x9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0}, Landroid/os/IUpdateEngine$Stub;->setShouldSwitchSlotOnReboot(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_10d

    :pswitch_78  #0x8
    invoke-virtual/range {p0 .. p0}, Landroid/os/IUpdateEngine$Stub;->resetStatus()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_10d

    :pswitch_80  #0x7
    invoke-virtual/range {p0 .. p0}, Landroid/os/IUpdateEngine$Stub;->cancel()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_10d

    :pswitch_88  #0x6
    invoke-virtual/range {p0 .. p0}, Landroid/os/IUpdateEngine$Stub;->resume()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_10d

    :pswitch_90  #0x5
    invoke-virtual/range {p0 .. p0}, Landroid/os/IUpdateEngine$Stub;->suspend()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_10d

    :pswitch_98  #0x4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IUpdateEngineCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IUpdateEngineCallback;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0}, Landroid/os/IUpdateEngine$Stub;->unbind(Landroid/os/IUpdateEngineCallback;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_10d

    :pswitch_ae  #0x3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IUpdateEngineCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IUpdateEngineCallback;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0}, Landroid/os/IUpdateEngine$Stub;->bind(Landroid/os/IUpdateEngineCallback;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_10d

    :pswitch_c4  #0x2
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/os/ParcelFileDescriptor;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move-object v1, v13

    move-wide v2, v14

    move-wide/from16 v4, v16

    move-object/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/os/IUpdateEngine$Stub;->applyPayloadFd(Landroid/os/ParcelFileDescriptor;JJ[Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_10d

    :pswitch_eb  #0x1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move-object v1, v13

    move-wide v2, v14

    move-wide/from16 v4, v16

    move-object/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/os/IUpdateEngine$Stub;->applyPayload(Ljava/lang/String;JJ[Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    nop

    :goto_10d
    return v12

    :pswitch_data_10e
    .packed-switch 0x5f4e5446
        :pswitch_20  #5f4e5446
    .end packed-switch

    :pswitch_data_114
    .packed-switch 0x1
        :pswitch_eb  #00000001
        :pswitch_c4  #00000002
        :pswitch_ae  #00000003
        :pswitch_98  #00000004
        :pswitch_90  #00000005
        :pswitch_88  #00000006
        :pswitch_80  #00000007
        :pswitch_78  #00000008
        :pswitch_69  #00000009
        :pswitch_61  #0000000a
        :pswitch_4e  #0000000b
        :pswitch_37  #0000000c
        :pswitch_24  #0000000d
    .end packed-switch
.end method
