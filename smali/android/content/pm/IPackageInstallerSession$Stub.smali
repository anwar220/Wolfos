# classes.dex

.class public abstract Landroid/content/pm/IPackageInstallerSession$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Landroid/content/pm/IPackageInstallerSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/IPackageInstallerSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/IPackageInstallerSession$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.content.pm.IPackageInstallerSession"

.field static final TRANSACTION_abandon:I = 0xe

.field static final TRANSACTION_addChildSessionId:I = 0x14

.field static final TRANSACTION_addClientProgress:I = 0x2

.field static final TRANSACTION_addFile:I = 0x10

.field static final TRANSACTION_close:I = 0xb

.field static final TRANSACTION_commit:I = 0xc

.field static final TRANSACTION_getChildSessionIds:I = 0x13

.field static final TRANSACTION_getDataLoaderParams:I = 0xf

.field static final TRANSACTION_getInstallFlags:I = 0x18

.field static final TRANSACTION_getNames:I = 0x3

.field static final TRANSACTION_getParentSessionId:I = 0x16

.field static final TRANSACTION_isMultiPackage:I = 0x12

.field static final TRANSACTION_isStaged:I = 0x17

.field static final TRANSACTION_openRead:I = 0x5

.field static final TRANSACTION_openWrite:I = 0x4

.field static final TRANSACTION_removeChildSessionId:I = 0x15

.field static final TRANSACTION_removeFile:I = 0x11

.field static final TRANSACTION_removeSplit:I = 0xa

.field static final TRANSACTION_requestChecksums:I = 0x9

.field static final TRANSACTION_setChecksums:I = 0x8

.field static final TRANSACTION_setClientProgress:I = 0x1

.field static final TRANSACTION_stageViaHardLink:I = 0x7

.field static final TRANSACTION_submitSpeedInstallFile:I = 0x19

.field static final TRANSACTION_transfer:I = 0xd

.field static final TRANSACTION_write:I = 0x6


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.content.pm.IPackageInstallerSession"

    invoke-virtual {p0, p0, v0}, Landroid/content/pm/IPackageInstallerSession$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageInstallerSession;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "android.content.pm.IPackageInstallerSession"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/content/pm/IPackageInstallerSession;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Landroid/content/pm/IPackageInstallerSession;

    return-object v1

    :cond_14
    new-instance v1, Landroid/content/pm/IPackageInstallerSession$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/content/pm/IPackageInstallerSession$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_5c

    const/4 v0, 0x0

    return-object v0

    :pswitch_5  #0x19
    const-string/jumbo v0, "submitSpeedInstallFile"

    return-object v0

    :pswitch_9  #0x18
    const-string v0, "getInstallFlags"

    return-object v0

    :pswitch_c  #0x17
    const-string v0, "isStaged"

    return-object v0

    :pswitch_f  #0x16
    const-string v0, "getParentSessionId"

    return-object v0

    :pswitch_12  #0x15
    const-string/jumbo v0, "removeChildSessionId"

    return-object v0

    :pswitch_16  #0x14
    const-string v0, "addChildSessionId"

    return-object v0

    :pswitch_19  #0x13
    const-string v0, "getChildSessionIds"

    return-object v0

    :pswitch_1c  #0x12
    const-string v0, "isMultiPackage"

    return-object v0

    :pswitch_1f  #0x11
    const-string/jumbo v0, "removeFile"

    return-object v0

    :pswitch_23  #0x10
    const-string v0, "addFile"

    return-object v0

    :pswitch_26  #0xf
    const-string v0, "getDataLoaderParams"

    return-object v0

    :pswitch_29  #0xe
    const-string v0, "abandon"

    return-object v0

    :pswitch_2c  #0xd
    const-string/jumbo v0, "transfer"

    return-object v0

    :pswitch_30  #0xc
    const-string v0, "commit"

    return-object v0

    :pswitch_33  #0xb
    const-string v0, "close"

    return-object v0

    :pswitch_36  #0xa
    const-string/jumbo v0, "removeSplit"

    return-object v0

    :pswitch_3a  #0x9
    const-string/jumbo v0, "requestChecksums"

    return-object v0

    :pswitch_3e  #0x8
    const-string/jumbo v0, "setChecksums"

    return-object v0

    :pswitch_42  #0x7
    const-string/jumbo v0, "stageViaHardLink"

    return-object v0

    :pswitch_46  #0x6
    const-string/jumbo v0, "write"

    return-object v0

    :pswitch_4a  #0x5
    const-string/jumbo v0, "openRead"

    return-object v0

    :pswitch_4e  #0x4
    const-string/jumbo v0, "openWrite"

    return-object v0

    :pswitch_52  #0x3
    const-string v0, "getNames"

    return-object v0

    :pswitch_55  #0x2
    const-string v0, "addClientProgress"

    return-object v0

    :pswitch_58  #0x1
    const-string/jumbo v0, "setClientProgress"

    return-object v0

    :pswitch_data_5c
    .packed-switch 0x1
        :pswitch_58  #00000001
        :pswitch_55  #00000002
        :pswitch_52  #00000003
        :pswitch_4e  #00000004
        :pswitch_4a  #00000005
        :pswitch_46  #00000006
        :pswitch_42  #00000007
        :pswitch_3e  #00000008
        :pswitch_3a  #00000009
        :pswitch_36  #0000000a
        :pswitch_33  #0000000b
        :pswitch_30  #0000000c
        :pswitch_2c  #0000000d
        :pswitch_29  #0000000e
        :pswitch_26  #0000000f
        :pswitch_23  #00000010
        :pswitch_1f  #00000011
        :pswitch_1c  #00000012
        :pswitch_19  #00000013
        :pswitch_16  #00000014
        :pswitch_12  #00000015
        :pswitch_f  #00000016
        :pswitch_c  #00000017
        :pswitch_9  #00000018
        :pswitch_5  #00000019
    .end packed-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    const/16 v0, 0x18

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3

    invoke-static {p1}, Landroid/content/pm/IPackageInstallerSession$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    const-string v11, "android.content.pm.IPackageInstallerSession"

    const/4 v12, 0x1

    if-lt v8, v12, :cond_15

    const v0, 0xffffff

    if-gt v8, v0, :cond_15

    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_15
    packed-switch v8, :pswitch_data_1fc

    packed-switch v8, :pswitch_data_202

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :pswitch_20  #0x5f4e5446
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v12

    :pswitch_24  #0x19
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0}, Landroid/content/pm/IPackageInstallerSession$Stub;->submitSpeedInstallFile(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_1fb

    :pswitch_37  #0x18
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageInstallerSession$Stub;->getInstallFlags()I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1fb

    :pswitch_43  #0x17
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageInstallerSession$Stub;->isStaged()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_1fb

    :pswitch_4f  #0x16
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageInstallerSession$Stub;->getParentSessionId()I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1fb

    :pswitch_5b  #0x15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0}, Landroid/content/pm/IPackageInstallerSession$Stub;->removeChildSessionId(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1fb

    :pswitch_6a  #0x14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0}, Landroid/content/pm/IPackageInstallerSession$Stub;->addChildSessionId(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1fb

    :pswitch_79  #0x13
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageInstallerSession$Stub;->getChildSessionIds()[I

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_1fb

    :pswitch_85  #0x12
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageInstallerSession$Stub;->isMultiPackage()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_1fb

    :pswitch_91  #0x11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0, v1}, Landroid/content/pm/IPackageInstallerSession$Stub;->removeFile(ILjava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1fb

    :pswitch_a4  #0x10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v18

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move v1, v13

    move-object v2, v14

    move-wide v3, v15

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/content/pm/IPackageInstallerSession$Stub;->addFile(ILjava/lang/String;J[B[B)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1fb

    :pswitch_cc  #0xf
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageInstallerSession$Stub;->getDataLoaderParams()Landroid/content/pm/DataLoaderParamsParcel;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v0, v12}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_1fb

    :pswitch_d8  #0xe
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageInstallerSession$Stub;->abandon()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1fb

    :pswitch_e0  #0xd
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0}, Landroid/content/pm/IPackageInstallerSession$Stub;->transfer(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1fb

    :pswitch_ef  #0xc
    sget-object v0, Landroid/content/IntentSender;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/IntentSender;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0, v1}, Landroid/content/pm/IPackageInstallerSession$Stub;->commit(Landroid/content/IntentSender;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1fb

    :pswitch_106  #0xb
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageInstallerSession$Stub;->close()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1fb

    :pswitch_10e  #0xa
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0}, Landroid/content/pm/IPackageInstallerSession$Stub;->removeSplit(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1fb

    :pswitch_11d  #0x9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v15

    invoke-virtual {v9, v15}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/IOnChecksumsReadyListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IOnChecksumsReadyListener;

    move-result-object v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v13

    move v3, v14

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/IPackageInstallerSession$Stub;->requestChecksums(Ljava/lang/String;IILjava/util/List;Landroid/content/pm/IOnChecksumsReadyListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1fb

    :pswitch_151  #0x8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/content/pm/Checksum;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/content/pm/Checksum;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0, v1, v2}, Landroid/content/pm/IPackageInstallerSession$Stub;->setChecksums(Ljava/lang/String;[Landroid/content/pm/Checksum;[B)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1fb

    :pswitch_16c  #0x7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0}, Landroid/content/pm/IPackageInstallerSession$Stub;->stageViaHardLink(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1fb

    :pswitch_17b  #0x6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v16

    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Landroid/os/ParcelFileDescriptor;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move-object v1, v13

    move-wide v2, v14

    move-wide/from16 v4, v16

    move-object/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/content/pm/IPackageInstallerSession$Stub;->write(Ljava/lang/String;JJLandroid/os/ParcelFileDescriptor;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_1fb

    :pswitch_1a3  #0x5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0}, Landroid/content/pm/IPackageInstallerSession$Stub;->openRead(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v1, v12}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto :goto_1fb

    :pswitch_1b5  #0x4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move-object v1, v6

    move-wide v2, v13

    move-wide v4, v15

    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/IPackageInstallerSession$Stub;->openWrite(Ljava/lang/String;JJ)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v0, v12}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto :goto_1fb

    :pswitch_1d4  #0x3
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageInstallerSession$Stub;->getNames()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto :goto_1fb

    :pswitch_1df  #0x2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0}, Landroid/content/pm/IPackageInstallerSession$Stub;->addClientProgress(F)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_1fb

    :pswitch_1ed  #0x1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0}, Landroid/content/pm/IPackageInstallerSession$Stub;->setClientProgress(F)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    nop

    :goto_1fb
    return v12

    :pswitch_data_1fc
    .packed-switch 0x5f4e5446
        :pswitch_20  #5f4e5446
    .end packed-switch

    :pswitch_data_202
    .packed-switch 0x1
        :pswitch_1ed  #00000001
        :pswitch_1df  #00000002
        :pswitch_1d4  #00000003
        :pswitch_1b5  #00000004
        :pswitch_1a3  #00000005
        :pswitch_17b  #00000006
        :pswitch_16c  #00000007
        :pswitch_151  #00000008
        :pswitch_11d  #00000009
        :pswitch_10e  #0000000a
        :pswitch_106  #0000000b
        :pswitch_ef  #0000000c
        :pswitch_e0  #0000000d
        :pswitch_d8  #0000000e
        :pswitch_cc  #0000000f
        :pswitch_a4  #00000010
        :pswitch_91  #00000011
        :pswitch_85  #00000012
        :pswitch_79  #00000013
        :pswitch_6a  #00000014
        :pswitch_5b  #00000015
        :pswitch_4f  #00000016
        :pswitch_43  #00000017
        :pswitch_37  #00000018
        :pswitch_24  #00000019
    .end packed-switch
.end method
