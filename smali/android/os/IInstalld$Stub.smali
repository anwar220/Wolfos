# classes3.dex

.class public abstract Landroid/os/IInstalld$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Landroid/os/IInstalld;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IInstalld;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IInstalld$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.os.IInstalld"

.field static final TRANSACTION_changeSpeedInstallFileOwner:I = 0x35

.field static final TRANSACTION_cleanupInvalidPackageDirs:I = 0x32

.field static final TRANSACTION_clearAppData:I = 0x9

.field static final TRANSACTION_clearAppProfiles:I = 0x1a

.field static final TRANSACTION_compileLayouts:I = 0x15

.field static final TRANSACTION_controlDexOptBlocking:I = 0x14

.field static final TRANSACTION_copySystemProfile:I = 0x19

.field static final TRANSACTION_createAppData:I = 0x4

.field static final TRANSACTION_createAppDataBatched:I = 0x5

.field static final TRANSACTION_createOatDir:I = 0x22

.field static final TRANSACTION_createProfileSnapshot:I = 0x1d

.field static final TRANSACTION_createUserData:I = 0x1

.field static final TRANSACTION_deleteOdex:I = 0x25

.field static final TRANSACTION_deleteReferenceProfile:I = 0x1c

.field static final TRANSACTION_destroyAppData:I = 0xa

.field static final TRANSACTION_destroyAppDataSnapshot:I = 0x2d

.field static final TRANSACTION_destroyAppProfiles:I = 0x1b

.field static final TRANSACTION_destroyCeSnapshotsNotSpecified:I = 0x2e

.field static final TRANSACTION_destroyProfileSnapshot:I = 0x1e

.field static final TRANSACTION_destroyUserData:I = 0x2

.field static final TRANSACTION_dexopt:I = 0x13

.field static final TRANSACTION_dumpProfiles:I = 0x18

.field static final TRANSACTION_fixupAppData:I = 0xb

.field static final TRANSACTION_freeCache:I = 0x20

.field static final TRANSACTION_getAppCrates:I = 0xf

.field static final TRANSACTION_getAppSize:I = 0xc

.field static final TRANSACTION_getDataFD:I = 0x39

.field static final TRANSACTION_getExternalSize:I = 0xe

.field static final TRANSACTION_getOdexVisibility:I = 0x33

.field static final TRANSACTION_getUserCrates:I = 0x10

.field static final TRANSACTION_getUserSize:I = 0xd

.field static final TRANSACTION_hashSecondaryDexFile:I = 0x27

.field static final TRANSACTION_invalidateMounts:I = 0x28

.field static final TRANSACTION_isQuotaSupported:I = 0x29

.field static final TRANSACTION_linkFile:I = 0x23

.field static final TRANSACTION_linkNativeLibraryDirectory:I = 0x21

.field static final TRANSACTION_listDataDir:I = 0x3a

.field static final TRANSACTION_mergeProfiles:I = 0x17

.field static final TRANSACTION_migrateAppData:I = 0x8

.field static final TRANSACTION_migrateLegacyObbData:I = 0x31

.field static final TRANSACTION_moveAb:I = 0x24

.field static final TRANSACTION_moveCompleteApp:I = 0x12

.field static final TRANSACTION_moveData:I = 0x34

.field static final TRANSACTION_onPrivateVolumeRemoved:I = 0x30

.field static final TRANSACTION_prepareAppProfile:I = 0x2a

.field static final TRANSACTION_reconcileSdkData:I = 0x6

.field static final TRANSACTION_reconcileSecondaryDexFile:I = 0x26

.field static final TRANSACTION_restoreAppDataSnapshot:I = 0x2c

.field static final TRANSACTION_restoreconAppData:I = 0x7

.field static final TRANSACTION_rmPackageDir:I = 0x1f

.field static final TRANSACTION_rmdex:I = 0x16

.field static final TRANSACTION_setAppQuota:I = 0x11

.field static final TRANSACTION_setFirstBoot:I = 0x3

.field static final TRANSACTION_snapshotAppData:I = 0x2b

.field static final TRANSACTION_speedInstallRedirectDir:I = 0x36

.field static final TRANSACTION_speedInstallUnRedirectAndDeleteDir:I = 0x37

.field static final TRANSACTION_transferData:I = 0x38

.field static final TRANSACTION_tryMountDataMirror:I = 0x2f


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.os.IInstalld"

    invoke-virtual {p0, p0, v0}, Landroid/os/IInstalld$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/IInstalld;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "android.os.IInstalld"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/os/IInstalld;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Landroid/os/IInstalld;

    return-object v1

    :cond_14
    new-instance v1, Landroid/os/IInstalld$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/IInstalld$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_ce

    const/4 v0, 0x0

    return-object v0

    :pswitch_5  #0x3a
    const-string/jumbo v0, "listDataDir"

    return-object v0

    :pswitch_9  #0x39
    const-string v0, "getDataFD"

    return-object v0

    :pswitch_c  #0x38
    const-string/jumbo v0, "transferData"

    return-object v0

    :pswitch_10  #0x37
    const-string/jumbo v0, "speedInstallUnRedirectAndDeleteDir"

    return-object v0

    :pswitch_14  #0x36
    const-string/jumbo v0, "speedInstallRedirectDir"

    return-object v0

    :pswitch_18  #0x35
    const-string v0, "changeSpeedInstallFileOwner"

    return-object v0

    :pswitch_1b  #0x34
    const-string/jumbo v0, "moveData"

    return-object v0

    :pswitch_1f  #0x33
    const-string v0, "getOdexVisibility"

    return-object v0

    :pswitch_22  #0x32
    const-string v0, "cleanupInvalidPackageDirs"

    return-object v0

    :pswitch_25  #0x31
    const-string/jumbo v0, "migrateLegacyObbData"

    return-object v0

    :pswitch_29  #0x30
    const-string/jumbo v0, "onPrivateVolumeRemoved"

    return-object v0

    :pswitch_2d  #0x2f
    const-string/jumbo v0, "tryMountDataMirror"

    return-object v0

    :pswitch_31  #0x2e
    const-string v0, "destroyCeSnapshotsNotSpecified"

    return-object v0

    :pswitch_34  #0x2d
    const-string v0, "destroyAppDataSnapshot"

    return-object v0

    :pswitch_37  #0x2c
    const-string/jumbo v0, "restoreAppDataSnapshot"

    return-object v0

    :pswitch_3b  #0x2b
    const-string/jumbo v0, "snapshotAppData"

    return-object v0

    :pswitch_3f  #0x2a
    const-string/jumbo v0, "prepareAppProfile"

    return-object v0

    :pswitch_43  #0x29
    const-string/jumbo v0, "isQuotaSupported"

    return-object v0

    :pswitch_47  #0x28
    const-string/jumbo v0, "invalidateMounts"

    return-object v0

    :pswitch_4b  #0x27
    const-string v0, "hashSecondaryDexFile"

    return-object v0

    :pswitch_4e  #0x26
    const-string/jumbo v0, "reconcileSecondaryDexFile"

    return-object v0

    :pswitch_52  #0x25
    const-string v0, "deleteOdex"

    return-object v0

    :pswitch_55  #0x24
    const-string/jumbo v0, "moveAb"

    return-object v0

    :pswitch_59  #0x23
    const-string/jumbo v0, "linkFile"

    return-object v0

    :pswitch_5d  #0x22
    const-string v0, "createOatDir"

    return-object v0

    :pswitch_60  #0x21
    const-string/jumbo v0, "linkNativeLibraryDirectory"

    return-object v0

    :pswitch_64  #0x20
    const-string v0, "freeCache"

    return-object v0

    :pswitch_67  #0x1f
    const-string/jumbo v0, "rmPackageDir"

    return-object v0

    :pswitch_6b  #0x1e
    const-string v0, "destroyProfileSnapshot"

    return-object v0

    :pswitch_6e  #0x1d
    const-string v0, "createProfileSnapshot"

    return-object v0

    :pswitch_71  #0x1c
    const-string v0, "deleteReferenceProfile"

    return-object v0

    :pswitch_74  #0x1b
    const-string v0, "destroyAppProfiles"

    return-object v0

    :pswitch_77  #0x1a
    const-string v0, "clearAppProfiles"

    return-object v0

    :pswitch_7a  #0x19
    const-string v0, "copySystemProfile"

    return-object v0

    :pswitch_7d  #0x18
    const-string v0, "dumpProfiles"

    return-object v0

    :pswitch_80  #0x17
    const-string/jumbo v0, "mergeProfiles"

    return-object v0

    :pswitch_84  #0x16
    const-string/jumbo v0, "rmdex"

    return-object v0

    :pswitch_88  #0x15
    const-string v0, "compileLayouts"

    return-object v0

    :pswitch_8b  #0x14
    const-string v0, "controlDexOptBlocking"

    return-object v0

    :pswitch_8e  #0x13
    const-string v0, "dexopt"

    return-object v0

    :pswitch_91  #0x12
    const-string/jumbo v0, "moveCompleteApp"

    return-object v0

    :pswitch_95  #0x11
    const-string/jumbo v0, "setAppQuota"

    return-object v0

    :pswitch_99  #0x10
    const-string v0, "getUserCrates"

    return-object v0

    :pswitch_9c  #0xf
    const-string v0, "getAppCrates"

    return-object v0

    :pswitch_9f  #0xe
    const-string v0, "getExternalSize"

    return-object v0

    :pswitch_a2  #0xd
    const-string v0, "getUserSize"

    return-object v0

    :pswitch_a5  #0xc
    const-string v0, "getAppSize"

    return-object v0

    :pswitch_a8  #0xb
    const-string v0, "fixupAppData"

    return-object v0

    :pswitch_ab  #0xa
    const-string v0, "destroyAppData"

    return-object v0

    :pswitch_ae  #0x9
    const-string v0, "clearAppData"

    return-object v0

    :pswitch_b1  #0x8
    const-string/jumbo v0, "migrateAppData"

    return-object v0

    :pswitch_b5  #0x7
    const-string/jumbo v0, "restoreconAppData"

    return-object v0

    :pswitch_b9  #0x6
    const-string/jumbo v0, "reconcileSdkData"

    return-object v0

    :pswitch_bd  #0x5
    const-string v0, "createAppDataBatched"

    return-object v0

    :pswitch_c0  #0x4
    const-string v0, "createAppData"

    return-object v0

    :pswitch_c3  #0x3
    const-string/jumbo v0, "setFirstBoot"

    return-object v0

    :pswitch_c7  #0x2
    const-string v0, "destroyUserData"

    return-object v0

    :pswitch_ca  #0x1
    const-string v0, "createUserData"

    return-object v0

    nop

    :pswitch_data_ce
    .packed-switch 0x1
        :pswitch_ca  #00000001
        :pswitch_c7  #00000002
        :pswitch_c3  #00000003
        :pswitch_c0  #00000004
        :pswitch_bd  #00000005
        :pswitch_b9  #00000006
        :pswitch_b5  #00000007
        :pswitch_b1  #00000008
        :pswitch_ae  #00000009
        :pswitch_ab  #0000000a
        :pswitch_a8  #0000000b
        :pswitch_a5  #0000000c
        :pswitch_a2  #0000000d
        :pswitch_9f  #0000000e
        :pswitch_9c  #0000000f
        :pswitch_99  #00000010
        :pswitch_95  #00000011
        :pswitch_91  #00000012
        :pswitch_8e  #00000013
        :pswitch_8b  #00000014
        :pswitch_88  #00000015
        :pswitch_84  #00000016
        :pswitch_80  #00000017
        :pswitch_7d  #00000018
        :pswitch_7a  #00000019
        :pswitch_77  #0000001a
        :pswitch_74  #0000001b
        :pswitch_71  #0000001c
        :pswitch_6e  #0000001d
        :pswitch_6b  #0000001e
        :pswitch_67  #0000001f
        :pswitch_64  #00000020
        :pswitch_60  #00000021
        :pswitch_5d  #00000022
        :pswitch_59  #00000023
        :pswitch_55  #00000024
        :pswitch_52  #00000025
        :pswitch_4e  #00000026
        :pswitch_4b  #00000027
        :pswitch_47  #00000028
        :pswitch_43  #00000029
        :pswitch_3f  #0000002a
        :pswitch_3b  #0000002b
        :pswitch_37  #0000002c
        :pswitch_34  #0000002d
        :pswitch_31  #0000002e
        :pswitch_2d  #0000002f
        :pswitch_29  #00000030
        :pswitch_25  #00000031
        :pswitch_22  #00000032
        :pswitch_1f  #00000033
        :pswitch_1b  #00000034
        :pswitch_18  #00000035
        :pswitch_14  #00000036
        :pswitch_10  #00000037
        :pswitch_c  #00000038
        :pswitch_9  #00000039
        :pswitch_5  #0000003a
    .end packed-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    const/16 v0, 0x39

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3

    invoke-static {p1}, Landroid/os/IInstalld$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 39
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v15, p0

    move/from16 v14, p1

    move-object/from16 v13, p2

    move-object/from16 v12, p3

    const-string v11, "android.os.IInstalld"

    const/4 v10, 0x1

    if-lt v14, v10, :cond_15

    const v0, 0xffffff

    if-gt v14, v0, :cond_15

    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_15
    packed-switch v14, :pswitch_data_876

    packed-switch v14, :pswitch_data_87c

    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :pswitch_23  #0x5f4e5446
    invoke-virtual {v12, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v10

    :pswitch_27  #0x3a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v18

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-gez v7, :cond_42

    const/4 v0, 0x0

    move-object v6, v0

    goto :goto_45

    :cond_42
    new-array v0, v7, [J

    move-object v6, v0

    :goto_45
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move-object v1, v8

    move-wide/from16 v2, v16

    move-wide/from16 v4, v18

    move-object/from16 v20, v6

    move-object v6, v9

    move/from16 v21, v7

    move-object/from16 v7, v20

    invoke-virtual/range {v0 .. v7}, Landroid/os/IInstalld$Stub;->listDataDir(Ljava/lang/String;JJLjava/util/List;[J)I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v12, v9}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    move-object/from16 v1, v20

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeLongArray([J)V

    move-object/from16 v28, v11

    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    goto/16 :goto_874

    :pswitch_6f  #0x39
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-gez v1, :cond_7b

    const/4 v2, 0x0

    goto :goto_7d

    :cond_7b
    new-array v2, v1, [Landroid/os/ParcelFileDescriptor;

    :goto_7d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v2}, Landroid/os/IInstalld$Stub;->getDataFD(Ljava/lang/String;[Landroid/os/ParcelFileDescriptor;)I

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v12, v2, v10}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    move-object/from16 v28, v11

    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    goto/16 :goto_874

    :pswitch_94  #0x38
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v19

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v24

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    move/from16 v4, v19

    move/from16 v5, v20

    move/from16 v6, v21

    move/from16 v7, v22

    move-object/from16 v8, v23

    move/from16 v9, v24

    invoke-virtual/range {v0 .. v9}, Landroid/os/IInstalld$Stub;->transferData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIIILjava/lang/String;Z)I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v28, v11

    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    goto/16 :goto_874

    :pswitch_e0  #0x37
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1}, Landroid/os/IInstalld$Stub;->speedInstallUnRedirectAndDeleteDir(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    move-object/from16 v28, v11

    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    goto/16 :goto_874

    :pswitch_fc  #0x36
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1}, Landroid/os/IInstalld$Stub;->speedInstallRedirectDir(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    move-object/from16 v28, v11

    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    goto/16 :goto_874

    :pswitch_118  #0x35
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1, v2}, Landroid/os/IInstalld$Stub;->changeSpeedInstallFileOwner(Ljava/lang/String;II)Z

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    move-object/from16 v28, v11

    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    goto/16 :goto_874

    :pswitch_138  #0x34
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move-object v1, v7

    move-object v2, v8

    move v3, v9

    move/from16 v4, v16

    move-object/from16 v5, v17

    move/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/os/IInstalld$Stub;->moveData(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;I)Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    move-object/from16 v28, v11

    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    goto/16 :goto_874

    :pswitch_16f  #0x33
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/os/IInstalld$Stub;->getOdexVisibility(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v4}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v28, v11

    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    goto/16 :goto_874

    :pswitch_193  #0x32
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1, v2}, Landroid/os/IInstalld$Stub;->cleanupInvalidPackageDirs(Ljava/lang/String;II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    goto/16 :goto_874

    :pswitch_1af  #0x31
    invoke-virtual/range {p0 .. p0}, Landroid/os/IInstalld$Stub;->migrateLegacyObbData()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    goto/16 :goto_874

    :pswitch_1bc  #0x30
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0}, Landroid/os/IInstalld$Stub;->onPrivateVolumeRemoved(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    goto/16 :goto_874

    :pswitch_1d0  #0x2f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0}, Landroid/os/IInstalld$Stub;->tryMountDataMirror(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    goto/16 :goto_874

    :pswitch_1e4  #0x2e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1, v2}, Landroid/os/IInstalld$Stub;->destroyCeSnapshotsNotSpecified(Ljava/lang/String;I[I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    goto/16 :goto_874

    :pswitch_200  #0x2d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move-object v1, v8

    move-object v2, v9

    move/from16 v3, v16

    move-wide/from16 v4, v17

    move/from16 v6, v19

    move/from16 v7, v20

    invoke-virtual/range {v0 .. v7}, Landroid/os/IInstalld$Stub;->destroyAppDataSnapshot(Ljava/lang/String;Ljava/lang/String;IJII)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    goto/16 :goto_874

    :pswitch_234  #0x2c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move-object v1, v8

    move-object v2, v9

    move/from16 v3, v16

    move-object/from16 v4, v17

    move/from16 v5, v18

    move/from16 v6, v19

    move/from16 v7, v20

    invoke-virtual/range {v0 .. v7}, Landroid/os/IInstalld$Stub;->restoreAppDataSnapshot(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;III)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    goto/16 :goto_874

    :pswitch_26e  #0x2b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move v3, v8

    move v4, v9

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/os/IInstalld$Stub;->snapshotAppData(Ljava/lang/String;Ljava/lang/String;III)J

    move-result-wide v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    move-object/from16 v28, v11

    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    goto/16 :goto_874

    :pswitch_29e  #0x2a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move-object v1, v7

    move v2, v8

    move v3, v9

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/os/IInstalld$Stub;->prepareAppProfile(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    move-object/from16 v28, v11

    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    goto/16 :goto_874

    :pswitch_2d5  #0x29
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0}, Landroid/os/IInstalld$Stub;->isQuotaSupported(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    move-object/from16 v28, v11

    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    goto/16 :goto_874

    :pswitch_2ed  #0x28
    invoke-virtual/range {p0 .. p0}, Landroid/os/IInstalld$Stub;->invalidateMounts()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    goto/16 :goto_874

    :pswitch_2fa  #0x27
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move v3, v8

    move-object v4, v9

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/os/IInstalld$Stub;->hashSecondaryDexFile(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)[B

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    move-object/from16 v28, v11

    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    goto/16 :goto_874

    :pswitch_32a  #0x26
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move-object v1, v7

    move-object v2, v8

    move v3, v9

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    move/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/os/IInstalld$Stub;->reconcileSecondaryDexFile(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    move-object/from16 v28, v11

    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    goto/16 :goto_874

    :pswitch_361  #0x25
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/os/IInstalld$Stub;->deleteOdex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    move-object/from16 v28, v11

    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    goto/16 :goto_874

    :pswitch_385  #0x24
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/os/IInstalld$Stub;->moveAb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    goto/16 :goto_874

    :pswitch_3a5  #0x23
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/os/IInstalld$Stub;->linkFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    goto/16 :goto_874

    :pswitch_3c5  #0x22
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1, v2}, Landroid/os/IInstalld$Stub;->createOatDir(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    goto/16 :goto_874

    :pswitch_3e1  #0x21
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/os/IInstalld$Stub;->linkNativeLibraryDirectory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    goto/16 :goto_874

    :pswitch_401  #0x20
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/os/IInstalld$Stub;->freeCache(Ljava/lang/String;JI)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    goto/16 :goto_874

    :pswitch_41d  #0x1f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1}, Landroid/os/IInstalld$Stub;->rmPackageDir(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    goto/16 :goto_874

    :pswitch_435  #0x1e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1}, Landroid/os/IInstalld$Stub;->destroyProfileSnapshot(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    goto/16 :goto_874

    :pswitch_44d  #0x1d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/os/IInstalld$Stub;->createProfileSnapshot(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    move-object/from16 v28, v11

    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    goto/16 :goto_874

    :pswitch_471  #0x1c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1}, Landroid/os/IInstalld$Stub;->deleteReferenceProfile(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    goto/16 :goto_874

    :pswitch_489  #0x1b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0}, Landroid/os/IInstalld$Stub;->destroyAppProfiles(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    goto/16 :goto_874

    :pswitch_49d  #0x1a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1}, Landroid/os/IInstalld$Stub;->clearAppProfiles(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    goto/16 :goto_874

    :pswitch_4b5  #0x19
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/os/IInstalld$Stub;->copySystemProfile(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v4

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    move-object/from16 v28, v11

    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    goto/16 :goto_874

    :pswitch_4d9  #0x18
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move v1, v6

    move-object v2, v7

    move-object v3, v8

    move-object v4, v9

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/os/IInstalld$Stub;->dumpProfiles(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    move-object/from16 v28, v11

    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    goto/16 :goto_874

    :pswitch_509  #0x17
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1, v2}, Landroid/os/IInstalld$Stub;->mergeProfiles(ILjava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v28, v11

    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    goto/16 :goto_874

    :pswitch_529  #0x16
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1}, Landroid/os/IInstalld$Stub;->rmdex(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    goto/16 :goto_874

    :pswitch_541  #0x15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/os/IInstalld$Stub;->compileLayouts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    move-object/from16 v28, v11

    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    goto/16 :goto_874

    :pswitch_565  #0x14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0}, Landroid/os/IInstalld$Stub;->controlDexOptBlocking(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    goto/16 :goto_874

    :pswitch_579  #0x13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v1, v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    move/from16 v2, v18

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v3, v19

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v4, v20

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    move/from16 v5, v21

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v6, v22

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    move/from16 v7, v23

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v8, v24

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v9, v25

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v26

    move v0, v10

    move-object/from16 v10, v26

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v28, v11

    move-object/from16 v11, v27

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v29

    move/from16 v12, v29

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v30

    move/from16 v13, v30

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v14, v31

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v15, v32

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v16, v33

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v16}, Landroid/os/IInstalld$Stub;->dexopt(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v8, p3

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    move-object/from16 v9, p0

    move-object/from16 v1, p2

    const/4 v10, 0x1

    goto/16 :goto_874

    :pswitch_5f4  #0x12
    move-object/from16 v28, v11

    move-object v8, v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move-object v1, v9

    move-object v2, v10

    move-object v3, v11

    move v4, v12

    move-object v5, v13

    move v6, v14

    move-object v7, v15

    invoke-virtual/range {v0 .. v7}, Landroid/os/IInstalld$Stub;->moveCompleteApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v9, p0

    move-object/from16 v1, p2

    const/4 v10, 0x1

    goto/16 :goto_874

    :pswitch_62c  #0x11
    move-object/from16 v28, v11

    move-object v8, v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v7

    move v3, v9

    move-wide v4, v10

    invoke-virtual/range {v0 .. v5}, Landroid/os/IInstalld$Stub;->setAppQuota(Ljava/lang/String;IIJ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v9, p0

    move-object/from16 v1, p2

    const/4 v10, 0x1

    goto/16 :goto_874

    :pswitch_655  #0x10
    move-object/from16 v28, v11

    move-object v8, v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v9, p0

    invoke-virtual {v9, v0, v1}, Landroid/os/IInstalld$Stub;->getUserCrates(Ljava/lang/String;I)[Landroid/os/storage/CrateMetadata;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v10, 0x1

    invoke-virtual {v8, v2, v10}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    move-object/from16 v1, p2

    goto/16 :goto_874

    :pswitch_674  #0xf
    move-object/from16 v28, v11

    move-object v8, v12

    move-object v9, v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v9, v0, v1, v2}, Landroid/os/IInstalld$Stub;->getAppCrates(Ljava/lang/String;[Ljava/lang/String;I)[Landroid/os/storage/CrateMetadata;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v8, v3, v10}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    move-object/from16 v1, p2

    goto/16 :goto_874

    :pswitch_695  #0xe
    move-object/from16 v28, v11

    move-object v8, v12

    move-object v9, v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/os/IInstalld$Stub;->getExternalSize(Ljava/lang/String;II[I)[J

    move-result-object v4

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v8, v4}, Landroid/os/Parcel;->writeLongArray([J)V

    move-object/from16 v1, p2

    goto/16 :goto_874

    :pswitch_6ba  #0xd
    move-object/from16 v28, v11

    move-object v8, v12

    move-object v9, v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/os/IInstalld$Stub;->getUserSize(Ljava/lang/String;II[I)[J

    move-result-object v4

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v8, v4}, Landroid/os/Parcel;->writeLongArray([J)V

    move-object/from16 v1, p2

    goto/16 :goto_874

    :pswitch_6df  #0xc
    move-object/from16 v28, v11

    move-object v8, v12

    move-object v9, v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move-object v1, v11

    move-object v2, v12

    move v3, v13

    move v4, v14

    move v5, v15

    move-object/from16 v6, v16

    move-object/from16 v7, v17

    invoke-virtual/range {v0 .. v7}, Landroid/os/IInstalld$Stub;->getAppSize(Ljava/lang/String;[Ljava/lang/String;III[J[Ljava/lang/String;)[J

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    move-object/from16 v1, p2

    goto/16 :goto_874

    :pswitch_71b  #0xb
    move-object/from16 v28, v11

    move-object v8, v12

    move-object v9, v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v9, v0, v1}, Landroid/os/IInstalld$Stub;->fixupAppData(Ljava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v1, p2

    goto/16 :goto_874

    :pswitch_734  #0xa
    move-object/from16 v28, v11

    move-object v8, v12

    move-object v9, v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move-object v1, v7

    move-object v2, v11

    move v3, v12

    move v4, v13

    move-wide v5, v14

    invoke-virtual/range {v0 .. v6}, Landroid/os/IInstalld$Stub;->destroyAppData(Ljava/lang/String;Ljava/lang/String;IIJ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v1, p2

    goto/16 :goto_874

    :pswitch_760  #0x9
    move-object/from16 v28, v11

    move-object v8, v12

    move-object v9, v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move-object v1, v7

    move-object v2, v11

    move v3, v12

    move v4, v13

    move-wide v5, v14

    invoke-virtual/range {v0 .. v6}, Landroid/os/IInstalld$Stub;->clearAppData(Ljava/lang/String;Ljava/lang/String;IIJ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v1, p2

    goto/16 :goto_874

    :pswitch_78c  #0x8
    move-object/from16 v28, v11

    move-object v8, v12

    move-object v9, v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/os/IInstalld$Stub;->migrateAppData(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v1, p2

    goto/16 :goto_874

    :pswitch_7ad  #0x7
    move-object/from16 v28, v11

    move-object v8, v12

    move-object v9, v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move-object v1, v7

    move-object v2, v11

    move v3, v12

    move v4, v13

    move v5, v14

    move-object v6, v15

    invoke-virtual/range {v0 .. v6}, Landroid/os/IInstalld$Stub;->restoreconAppData(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v1, p2

    goto/16 :goto_874

    :pswitch_7de  #0x6
    move-object/from16 v28, v11

    move-object v8, v12

    move-object v9, v15

    sget-object v0, Landroid/os/ReconcileSdkDataArgs;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v1, p2

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ReconcileSdkDataArgs;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v9, v0}, Landroid/os/IInstalld$Stub;->reconcileSdkData(Landroid/os/ReconcileSdkDataArgs;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_874

    :pswitch_7f7  #0x5
    move-object/from16 v28, v11

    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    sget-object v0, Landroid/os/CreateAppDataArgs;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/CreateAppDataArgs;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v9, v0}, Landroid/os/IInstalld$Stub;->createAppDataBatched([Landroid/os/CreateAppDataArgs;)[Landroid/os/CreateAppDataResult;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v8, v2, v10}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto/16 :goto_874

    :pswitch_813  #0x4
    move-object/from16 v28, v11

    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    sget-object v0, Landroid/os/CreateAppDataArgs;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/CreateAppDataArgs;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v9, v0}, Landroid/os/IInstalld$Stub;->createAppData(Landroid/os/CreateAppDataArgs;)Landroid/os/CreateAppDataResult;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v8, v2, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto :goto_874

    :pswitch_82e  #0x3
    move-object/from16 v28, v11

    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    invoke-virtual/range {p0 .. p0}, Landroid/os/IInstalld$Stub;->setFirstBoot()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_874

    :pswitch_83a  #0x2
    move-object/from16 v28, v11

    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v9, v0, v2, v3}, Landroid/os/IInstalld$Stub;->destroyUserData(Ljava/lang/String;II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_874

    :pswitch_855  #0x1
    move-object/from16 v28, v11

    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v9, v0, v2, v3, v4}, Landroid/os/IInstalld$Stub;->createUserData(Ljava/lang/String;III)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    nop

    :goto_874
    return v10

    nop

    :pswitch_data_876
    .packed-switch 0x5f4e5446
        :pswitch_23  #5f4e5446
    .end packed-switch

    :pswitch_data_87c
    .packed-switch 0x1
        :pswitch_855  #00000001
        :pswitch_83a  #00000002
        :pswitch_82e  #00000003
        :pswitch_813  #00000004
        :pswitch_7f7  #00000005
        :pswitch_7de  #00000006
        :pswitch_7ad  #00000007
        :pswitch_78c  #00000008
        :pswitch_760  #00000009
        :pswitch_734  #0000000a
        :pswitch_71b  #0000000b
        :pswitch_6df  #0000000c
        :pswitch_6ba  #0000000d
        :pswitch_695  #0000000e
        :pswitch_674  #0000000f
        :pswitch_655  #00000010
        :pswitch_62c  #00000011
        :pswitch_5f4  #00000012
        :pswitch_579  #00000013
        :pswitch_565  #00000014
        :pswitch_541  #00000015
        :pswitch_529  #00000016
        :pswitch_509  #00000017
        :pswitch_4d9  #00000018
        :pswitch_4b5  #00000019
        :pswitch_49d  #0000001a
        :pswitch_489  #0000001b
        :pswitch_471  #0000001c
        :pswitch_44d  #0000001d
        :pswitch_435  #0000001e
        :pswitch_41d  #0000001f
        :pswitch_401  #00000020
        :pswitch_3e1  #00000021
        :pswitch_3c5  #00000022
        :pswitch_3a5  #00000023
        :pswitch_385  #00000024
        :pswitch_361  #00000025
        :pswitch_32a  #00000026
        :pswitch_2fa  #00000027
        :pswitch_2ed  #00000028
        :pswitch_2d5  #00000029
        :pswitch_29e  #0000002a
        :pswitch_26e  #0000002b
        :pswitch_234  #0000002c
        :pswitch_200  #0000002d
        :pswitch_1e4  #0000002e
        :pswitch_1d0  #0000002f
        :pswitch_1bc  #00000030
        :pswitch_1af  #00000031
        :pswitch_193  #00000032
        :pswitch_16f  #00000033
        :pswitch_138  #00000034
        :pswitch_118  #00000035
        :pswitch_fc  #00000036
        :pswitch_e0  #00000037
        :pswitch_94  #00000038
        :pswitch_6f  #00000039
        :pswitch_27  #0000003a
    .end packed-switch
.end method
