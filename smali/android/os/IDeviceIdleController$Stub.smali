# classes3.dex

.class public abstract Landroid/os/IDeviceIdleController$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Landroid/os/IDeviceIdleController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IDeviceIdleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IDeviceIdleController$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.os.IDeviceIdleController"

.field static final TRANSACTION_addPowerSaveTempWhitelistApp:I = 0x12

.field static final TRANSACTION_addPowerSaveTempWhitelistAppForMms:I = 0x13

.field static final TRANSACTION_addPowerSaveTempWhitelistAppForSms:I = 0x14

.field static final TRANSACTION_addPowerSaveWhitelistApp:I = 0x1

.field static final TRANSACTION_addPowerSaveWhitelistApps:I = 0x2

.field static final TRANSACTION_exitIdle:I = 0x16

.field static final TRANSACTION_getAppIdTempWhitelist:I = 0xf

.field static final TRANSACTION_getAppIdUserWhitelist:I = 0xe

.field static final TRANSACTION_getAppIdWhitelist:I = 0xd

.field static final TRANSACTION_getAppIdWhitelistExceptIdle:I = 0xc

.field static final TRANSACTION_getFullPowerWhitelist:I = 0xb

.field static final TRANSACTION_getFullPowerWhitelistExceptIdle:I = 0xa

.field static final TRANSACTION_getRemovedSystemPowerWhitelistApps:I = 0x6

.field static final TRANSACTION_getSystemPowerWhitelist:I = 0x8

.field static final TRANSACTION_getSystemPowerWhitelistExceptIdle:I = 0x7

.field static final TRANSACTION_getUserPowerWhitelist:I = 0x9

.field static final TRANSACTION_isPowerSaveWhitelistApp:I = 0x11

.field static final TRANSACTION_isPowerSaveWhitelistExceptIdleApp:I = 0x10

.field static final TRANSACTION_removePowerSaveWhitelistApp:I = 0x3

.field static final TRANSACTION_removeSystemPowerWhitelistApp:I = 0x4

.field static final TRANSACTION_resetPreIdleTimeoutMode:I = 0x18

.field static final TRANSACTION_restoreSystemPowerWhitelistApp:I = 0x5

.field static final TRANSACTION_setPreIdleTimeoutMode:I = 0x17

.field static final TRANSACTION_whitelistAppTemporarily:I = 0x15


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.os.IDeviceIdleController"

    invoke-virtual {p0, p0, v0}, Landroid/os/IDeviceIdleController$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceIdleController;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "android.os.IDeviceIdleController"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/os/IDeviceIdleController;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Landroid/os/IDeviceIdleController;

    return-object v1

    :cond_14
    new-instance v1, Landroid/os/IDeviceIdleController$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/IDeviceIdleController$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_56

    const/4 v0, 0x0

    return-object v0

    :pswitch_5  #0x18
    const-string/jumbo v0, "resetPreIdleTimeoutMode"

    return-object v0

    :pswitch_9  #0x17
    const-string/jumbo v0, "setPreIdleTimeoutMode"

    return-object v0

    :pswitch_d  #0x16
    const-string v0, "exitIdle"

    return-object v0

    :pswitch_10  #0x15
    const-string/jumbo v0, "whitelistAppTemporarily"

    return-object v0

    :pswitch_14  #0x14
    const-string v0, "addPowerSaveTempWhitelistAppForSms"

    return-object v0

    :pswitch_17  #0x13
    const-string v0, "addPowerSaveTempWhitelistAppForMms"

    return-object v0

    :pswitch_1a  #0x12
    const-string v0, "addPowerSaveTempWhitelistApp"

    return-object v0

    :pswitch_1d  #0x11
    const-string/jumbo v0, "isPowerSaveWhitelistApp"

    return-object v0

    :pswitch_21  #0x10
    const-string/jumbo v0, "isPowerSaveWhitelistExceptIdleApp"

    return-object v0

    :pswitch_25  #0xf
    const-string v0, "getAppIdTempWhitelist"

    return-object v0

    :pswitch_28  #0xe
    const-string v0, "getAppIdUserWhitelist"

    return-object v0

    :pswitch_2b  #0xd
    const-string v0, "getAppIdWhitelist"

    return-object v0

    :pswitch_2e  #0xc
    const-string v0, "getAppIdWhitelistExceptIdle"

    return-object v0

    :pswitch_31  #0xb
    const-string v0, "getFullPowerWhitelist"

    return-object v0

    :pswitch_34  #0xa
    const-string v0, "getFullPowerWhitelistExceptIdle"

    return-object v0

    :pswitch_37  #0x9
    const-string v0, "getUserPowerWhitelist"

    return-object v0

    :pswitch_3a  #0x8
    const-string v0, "getSystemPowerWhitelist"

    return-object v0

    :pswitch_3d  #0x7
    const-string v0, "getSystemPowerWhitelistExceptIdle"

    return-object v0

    :pswitch_40  #0x6
    const-string v0, "getRemovedSystemPowerWhitelistApps"

    return-object v0

    :pswitch_43  #0x5
    const-string/jumbo v0, "restoreSystemPowerWhitelistApp"

    return-object v0

    :pswitch_47  #0x4
    const-string/jumbo v0, "removeSystemPowerWhitelistApp"

    return-object v0

    :pswitch_4b  #0x3
    const-string/jumbo v0, "removePowerSaveWhitelistApp"

    return-object v0

    :pswitch_4f  #0x2
    const-string v0, "addPowerSaveWhitelistApps"

    return-object v0

    :pswitch_52  #0x1
    const-string v0, "addPowerSaveWhitelistApp"

    return-object v0

    nop

    :pswitch_data_56
    .packed-switch 0x1
        :pswitch_52  #00000001
        :pswitch_4f  #00000002
        :pswitch_4b  #00000003
        :pswitch_47  #00000004
        :pswitch_43  #00000005
        :pswitch_40  #00000006
        :pswitch_3d  #00000007
        :pswitch_3a  #00000008
        :pswitch_37  #00000009
        :pswitch_34  #0000000a
        :pswitch_31  #0000000b
        :pswitch_2e  #0000000c
        :pswitch_2b  #0000000d
        :pswitch_28  #0000000e
        :pswitch_25  #0000000f
        :pswitch_21  #00000010
        :pswitch_1d  #00000011
        :pswitch_1a  #00000012
        :pswitch_17  #00000013
        :pswitch_14  #00000014
        :pswitch_10  #00000015
        :pswitch_d  #00000016
        :pswitch_9  #00000017
        :pswitch_5  #00000018
    .end packed-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    const/16 v0, 0x17

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3

    invoke-static {p1}, Landroid/os/IDeviceIdleController$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    move-object/from16 v9, p3

    const-string v10, "android.os.IDeviceIdleController"

    const/4 v11, 0x1

    if-lt v8, v11, :cond_16

    const v0, 0xffffff

    if-gt v8, v0, :cond_16

    move-object/from16 v12, p2

    invoke-virtual {v12, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    goto :goto_18

    :cond_16
    move-object/from16 v12, p2

    :goto_18
    packed-switch v8, :pswitch_data_1bc

    packed-switch v8, :pswitch_data_1c2

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :pswitch_23  #0x5f4e5446
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v11

    :pswitch_27  #0x18
    invoke-virtual/range {p0 .. p0}, Landroid/os/IDeviceIdleController$Stub;->resetPreIdleTimeoutMode()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1bb

    :pswitch_2f  #0x17
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0}, Landroid/os/IDeviceIdleController$Stub;->setPreIdleTimeoutMode(I)I

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1bb

    :pswitch_42  #0x16
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0}, Landroid/os/IDeviceIdleController$Stub;->exitIdle(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1bb

    :pswitch_51  #0x15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/os/IDeviceIdleController$Stub;->whitelistAppTemporarily(Ljava/lang/String;IILjava/lang/String;)J

    move-result-wide v4

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_1bb

    :pswitch_70  #0x14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/os/IDeviceIdleController$Stub;->addPowerSaveTempWhitelistAppForSms(Ljava/lang/String;IILjava/lang/String;)J

    move-result-wide v4

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_1bb

    :pswitch_8f  #0x13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/os/IDeviceIdleController$Stub;->addPowerSaveTempWhitelistAppForMms(Ljava/lang/String;IILjava/lang/String;)J

    move-result-wide v4

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_1bb

    :pswitch_ae  #0x12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move-object v1, v13

    move-wide v2, v14

    move/from16 v4, v16

    move/from16 v5, v17

    move-object/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/os/IDeviceIdleController$Stub;->addPowerSaveTempWhitelistApp(Ljava/lang/String;JIILjava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1bb

    :pswitch_d7  #0x11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0}, Landroid/os/IDeviceIdleController$Stub;->isPowerSaveWhitelistApp(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_1bb

    :pswitch_ea  #0x10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0}, Landroid/os/IDeviceIdleController$Stub;->isPowerSaveWhitelistExceptIdleApp(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_1bb

    :pswitch_fd  #0xf
    invoke-virtual/range {p0 .. p0}, Landroid/os/IDeviceIdleController$Stub;->getAppIdTempWhitelist()[I

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_1bb

    :pswitch_109  #0xe
    invoke-virtual/range {p0 .. p0}, Landroid/os/IDeviceIdleController$Stub;->getAppIdUserWhitelist()[I

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_1bb

    :pswitch_115  #0xd
    invoke-virtual/range {p0 .. p0}, Landroid/os/IDeviceIdleController$Stub;->getAppIdWhitelist()[I

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_1bb

    :pswitch_121  #0xc
    invoke-virtual/range {p0 .. p0}, Landroid/os/IDeviceIdleController$Stub;->getAppIdWhitelistExceptIdle()[I

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_1bb

    :pswitch_12d  #0xb
    invoke-virtual/range {p0 .. p0}, Landroid/os/IDeviceIdleController$Stub;->getFullPowerWhitelist()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_1bb

    :pswitch_139  #0xa
    invoke-virtual/range {p0 .. p0}, Landroid/os/IDeviceIdleController$Stub;->getFullPowerWhitelistExceptIdle()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_1bb

    :pswitch_145  #0x9
    invoke-virtual/range {p0 .. p0}, Landroid/os/IDeviceIdleController$Stub;->getUserPowerWhitelist()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto :goto_1bb

    :pswitch_150  #0x8
    invoke-virtual/range {p0 .. p0}, Landroid/os/IDeviceIdleController$Stub;->getSystemPowerWhitelist()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto :goto_1bb

    :pswitch_15b  #0x7
    invoke-virtual/range {p0 .. p0}, Landroid/os/IDeviceIdleController$Stub;->getSystemPowerWhitelistExceptIdle()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto :goto_1bb

    :pswitch_166  #0x6
    invoke-virtual/range {p0 .. p0}, Landroid/os/IDeviceIdleController$Stub;->getRemovedSystemPowerWhitelistApps()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto :goto_1bb

    :pswitch_171  #0x5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0}, Landroid/os/IDeviceIdleController$Stub;->restoreSystemPowerWhitelistApp(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_1bb

    :pswitch_17f  #0x4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0}, Landroid/os/IDeviceIdleController$Stub;->removeSystemPowerWhitelistApp(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_1bb

    :pswitch_18d  #0x3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0}, Landroid/os/IDeviceIdleController$Stub;->removePowerSaveWhitelistApp(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_1bb

    :pswitch_19b  #0x2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0}, Landroid/os/IDeviceIdleController$Stub;->addPowerSaveWhitelistApps(Ljava/util/List;)I

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1bb

    :pswitch_1ad  #0x1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0}, Landroid/os/IDeviceIdleController$Stub;->addPowerSaveWhitelistApp(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    nop

    :goto_1bb
    return v11

    :pswitch_data_1bc
    .packed-switch 0x5f4e5446
        :pswitch_23  #5f4e5446
    .end packed-switch

    :pswitch_data_1c2
    .packed-switch 0x1
        :pswitch_1ad  #00000001
        :pswitch_19b  #00000002
        :pswitch_18d  #00000003
        :pswitch_17f  #00000004
        :pswitch_171  #00000005
        :pswitch_166  #00000006
        :pswitch_15b  #00000007
        :pswitch_150  #00000008
        :pswitch_145  #00000009
        :pswitch_139  #0000000a
        :pswitch_12d  #0000000b
        :pswitch_121  #0000000c
        :pswitch_115  #0000000d
        :pswitch_109  #0000000e
        :pswitch_fd  #0000000f
        :pswitch_ea  #00000010
        :pswitch_d7  #00000011
        :pswitch_ae  #00000012
        :pswitch_8f  #00000013
        :pswitch_70  #00000014
        :pswitch_51  #00000015
        :pswitch_42  #00000016
        :pswitch_2f  #00000017
        :pswitch_27  #00000018
    .end packed-switch
.end method
