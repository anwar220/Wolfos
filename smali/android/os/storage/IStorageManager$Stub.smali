# classes3.dex

.class public abstract Landroid/os/storage/IStorageManager$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Landroid/os/storage/IStorageManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/storage/IStorageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/storage/IStorageManager$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.os.storage.IStorageManager"

.field static final TRANSACTION_abortChanges:I = 0x58

.field static final TRANSACTION_abortIdleMaintenance:I = 0x51

.field static final TRANSACTION_addUserKeyAuth:I = 0x47

.field static final TRANSACTION_allocateBytes:I = 0x4f

.field static final TRANSACTION_benchmark:I = 0x3c

.field static final TRANSACTION_clearUserKeyAuth:I = 0x59

.field static final TRANSACTION_commitChanges:I = 0x54

.field static final TRANSACTION_createUserKey:I = 0x3e

.field static final TRANSACTION_destroyUserKey:I = 0x3f

.field static final TRANSACTION_destroyUserStorage:I = 0x44

.field static final TRANSACTION_disableAppDataIsolation:I = 0x5b

.field static final TRANSACTION_fixateNewestUserKeyAuth:I = 0x48

.field static final TRANSACTION_fixupAppDir:I = 0x5a

.field static final TRANSACTION_fixupAppDirRecursive:I = 0x63

.field static final TRANSACTION_forgetAllVolumes:I = 0x39

.field static final TRANSACTION_forgetVolume:I = 0x38

.field static final TRANSACTION_format:I = 0x32

.field static final TRANSACTION_fstrim:I = 0x49

.field static final TRANSACTION_getAllocatableBytes:I = 0x4e

.field static final TRANSACTION_getCacheQuotaBytes:I = 0x4c

.field static final TRANSACTION_getCacheSizeBytes:I = 0x4d

.field static final TRANSACTION_getCloudMediaProvider:I = 0x62

.field static final TRANSACTION_getDisks:I = 0x2d

.field static final TRANSACTION_getExtMGearInterface:I = 0x52

.field static final TRANSACTION_getExternalStorageMountMode:I = 0x5f

.field static final TRANSACTION_getManageSpaceActivityIntent:I = 0x5c

.field static final TRANSACTION_getMountedObbPath:I = 0x19

.field static final TRANSACTION_getPrimaryStorageUuid:I = 0x3a

.field static final TRANSACTION_getVolumeList:I = 0x1e

.field static final TRANSACTION_getVolumeRecords:I = 0x2f

.field static final TRANSACTION_getVolumes:I = 0x2e

.field static final TRANSACTION_isAppIoBlocked:I = 0x60

.field static final TRANSACTION_isObbMounted:I = 0x18

.field static final TRANSACTION_isUserKeyUnlocked:I = 0x42

.field static final TRANSACTION_lastMaintenance:I = 0x2a

.field static final TRANSACTION_lockUserKey:I = 0x41

.field static final TRANSACTION_mkdirs:I = 0x23

.field static final TRANSACTION_mount:I = 0x30

.field static final TRANSACTION_mountObb:I = 0x16

.field static final TRANSACTION_mountProxyFileDescriptorBridge:I = 0x4a

.field static final TRANSACTION_moveStorageQuickly:I = 0x64

.field static final TRANSACTION_needsCheckpoint:I = 0x57

.field static final TRANSACTION_notifyAppIoBlocked:I = 0x5d

.field static final TRANSACTION_notifyAppIoResumed:I = 0x5e

.field static final TRANSACTION_openProxyFileDescriptor:I = 0x4b

.field static final TRANSACTION_partitionMixed:I = 0x35

.field static final TRANSACTION_partitionPrivate:I = 0x34

.field static final TRANSACTION_partitionPublic:I = 0x33

.field static final TRANSACTION_prepareUserStorage:I = 0x43

.field static final TRANSACTION_registerListener:I = 0x1

.field static final TRANSACTION_runIdleMaintenance:I = 0x50

.field static final TRANSACTION_runMaintenance:I = 0x2b

.field static final TRANSACTION_setCloudMediaProvider:I = 0x61

.field static final TRANSACTION_setDebugFlags:I = 0x3d

.field static final TRANSACTION_setPrimaryStorageUuid:I = 0x3b

.field static final TRANSACTION_setVolumeNickname:I = 0x36

.field static final TRANSACTION_setVolumeUserFlags:I = 0x37

.field static final TRANSACTION_shutdown:I = 0x14

.field static final TRANSACTION_startCheckpoint:I = 0x56

.field static final TRANSACTION_supportsCheckpoint:I = 0x55

.field static final TRANSACTION_unlockUserKey:I = 0x40

.field static final TRANSACTION_unmount:I = 0x31

.field static final TRANSACTION_unmountObb:I = 0x17

.field static final TRANSACTION_unregisterListener:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.os.storage.IStorageManager"

    invoke-virtual {p0, p0, v0}, Landroid/os/storage/IStorageManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/storage/IStorageManager;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "android.os.storage.IStorageManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/os/storage/IStorageManager;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Landroid/os/storage/IStorageManager;

    return-object v1

    :cond_14
    new-instance v1, Landroid/os/storage/IStorageManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/storage/IStorageManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_e6

    :pswitch_3  #0x3, 0x4, 0x5, 0x6, 0x7, 0x8, 0x9, 0xa, 0xb, 0xc, 0xd, 0xe, 0xf, 0x10, 0x11, 0x12, 0x13, 0x15, 0x1a, 0x1b, 0x1c, 0x1d, 0x1f, 0x20, 0x21, 0x22, 0x24, 0x25, 0x26, 0x27, 0x28, 0x29, 0x2c, 0x45, 0x46, 0x53
    const/4 v0, 0x0

    return-object v0

    :pswitch_5  #0x64
    const-string/jumbo v0, "moveStorageQuickly"

    return-object v0

    :pswitch_9  #0x63
    const-string v0, "fixupAppDirRecursive"

    return-object v0

    :pswitch_c  #0x62
    const-string v0, "getCloudMediaProvider"

    return-object v0

    :pswitch_f  #0x61
    const-string/jumbo v0, "setCloudMediaProvider"

    return-object v0

    :pswitch_13  #0x60
    const-string/jumbo v0, "isAppIoBlocked"

    return-object v0

    :pswitch_17  #0x5f
    const-string v0, "getExternalStorageMountMode"

    return-object v0

    :pswitch_1a  #0x5e
    const-string/jumbo v0, "notifyAppIoResumed"

    return-object v0

    :pswitch_1e  #0x5d
    const-string/jumbo v0, "notifyAppIoBlocked"

    return-object v0

    :pswitch_22  #0x5c
    const-string v0, "getManageSpaceActivityIntent"

    return-object v0

    :pswitch_25  #0x5b
    const-string v0, "disableAppDataIsolation"

    return-object v0

    :pswitch_28  #0x5a
    const-string v0, "fixupAppDir"

    return-object v0

    :pswitch_2b  #0x59
    const-string v0, "clearUserKeyAuth"

    return-object v0

    :pswitch_2e  #0x58
    const-string v0, "abortChanges"

    return-object v0

    :pswitch_31  #0x57
    const-string/jumbo v0, "needsCheckpoint"

    return-object v0

    :pswitch_35  #0x56
    const-string/jumbo v0, "startCheckpoint"

    return-object v0

    :pswitch_39  #0x55
    const-string/jumbo v0, "supportsCheckpoint"

    return-object v0

    :pswitch_3d  #0x54
    const-string v0, "commitChanges"

    return-object v0

    :pswitch_40  #0x52
    const-string v0, "getExtMGearInterface"

    return-object v0

    :pswitch_43  #0x51
    const-string v0, "abortIdleMaintenance"

    return-object v0

    :pswitch_46  #0x50
    const-string/jumbo v0, "runIdleMaintenance"

    return-object v0

    :pswitch_4a  #0x4f
    const-string v0, "allocateBytes"

    return-object v0

    :pswitch_4d  #0x4e
    const-string v0, "getAllocatableBytes"

    return-object v0

    :pswitch_50  #0x4d
    const-string v0, "getCacheSizeBytes"

    return-object v0

    :pswitch_53  #0x4c
    const-string v0, "getCacheQuotaBytes"

    return-object v0

    :pswitch_56  #0x4b
    const-string/jumbo v0, "openProxyFileDescriptor"

    return-object v0

    :pswitch_5a  #0x4a
    const-string/jumbo v0, "mountProxyFileDescriptorBridge"

    return-object v0

    :pswitch_5e  #0x49
    const-string v0, "fstrim"

    return-object v0

    :pswitch_61  #0x48
    const-string v0, "fixateNewestUserKeyAuth"

    return-object v0

    :pswitch_64  #0x47
    const-string v0, "addUserKeyAuth"

    return-object v0

    :pswitch_67  #0x44
    const-string v0, "destroyUserStorage"

    return-object v0

    :pswitch_6a  #0x43
    const-string/jumbo v0, "prepareUserStorage"

    return-object v0

    :pswitch_6e  #0x42
    const-string/jumbo v0, "isUserKeyUnlocked"

    return-object v0

    :pswitch_72  #0x41
    const-string/jumbo v0, "lockUserKey"

    return-object v0

    :pswitch_76  #0x40
    const-string/jumbo v0, "unlockUserKey"

    return-object v0

    :pswitch_7a  #0x3f
    const-string v0, "destroyUserKey"

    return-object v0

    :pswitch_7d  #0x3e
    const-string v0, "createUserKey"

    return-object v0

    :pswitch_80  #0x3d
    const-string/jumbo v0, "setDebugFlags"

    return-object v0

    :pswitch_84  #0x3c
    const-string v0, "benchmark"

    return-object v0

    :pswitch_87  #0x3b
    const-string/jumbo v0, "setPrimaryStorageUuid"

    return-object v0

    :pswitch_8b  #0x3a
    const-string v0, "getPrimaryStorageUuid"

    return-object v0

    :pswitch_8e  #0x39
    const-string v0, "forgetAllVolumes"

    return-object v0

    :pswitch_91  #0x38
    const-string v0, "forgetVolume"

    return-object v0

    :pswitch_94  #0x37
    const-string/jumbo v0, "setVolumeUserFlags"

    return-object v0

    :pswitch_98  #0x36
    const-string/jumbo v0, "setVolumeNickname"

    return-object v0

    :pswitch_9c  #0x35
    const-string/jumbo v0, "partitionMixed"

    return-object v0

    :pswitch_a0  #0x34
    const-string/jumbo v0, "partitionPrivate"

    return-object v0

    :pswitch_a4  #0x33
    const-string/jumbo v0, "partitionPublic"

    return-object v0

    :pswitch_a8  #0x32
    const-string v0, "format"

    return-object v0

    :pswitch_ab  #0x31
    const-string/jumbo v0, "unmount"

    return-object v0

    :pswitch_af  #0x30
    const-string/jumbo v0, "mount"

    return-object v0

    :pswitch_b3  #0x2f
    const-string v0, "getVolumeRecords"

    return-object v0

    :pswitch_b6  #0x2e
    const-string v0, "getVolumes"

    return-object v0

    :pswitch_b9  #0x2d
    const-string v0, "getDisks"

    return-object v0

    :pswitch_bc  #0x2b
    const-string/jumbo v0, "runMaintenance"

    return-object v0

    :pswitch_c0  #0x2a
    const-string/jumbo v0, "lastMaintenance"

    return-object v0

    :pswitch_c4  #0x23
    const-string/jumbo v0, "mkdirs"

    return-object v0

    :pswitch_c8  #0x1e
    const-string v0, "getVolumeList"

    return-object v0

    :pswitch_cb  #0x19
    const-string v0, "getMountedObbPath"

    return-object v0

    :pswitch_ce  #0x18
    const-string/jumbo v0, "isObbMounted"

    return-object v0

    :pswitch_d2  #0x17
    const-string/jumbo v0, "unmountObb"

    return-object v0

    :pswitch_d6  #0x16
    const-string/jumbo v0, "mountObb"

    return-object v0

    :pswitch_da  #0x14
    const-string/jumbo v0, "shutdown"

    return-object v0

    :pswitch_de  #0x2
    const-string/jumbo v0, "unregisterListener"

    return-object v0

    :pswitch_e2  #0x1
    const-string/jumbo v0, "registerListener"

    return-object v0

    :pswitch_data_e6
    .packed-switch 0x1
        :pswitch_e2  #00000001
        :pswitch_de  #00000002
        :pswitch_3  #00000003
        :pswitch_3  #00000004
        :pswitch_3  #00000005
        :pswitch_3  #00000006
        :pswitch_3  #00000007
        :pswitch_3  #00000008
        :pswitch_3  #00000009
        :pswitch_3  #0000000a
        :pswitch_3  #0000000b
        :pswitch_3  #0000000c
        :pswitch_3  #0000000d
        :pswitch_3  #0000000e
        :pswitch_3  #0000000f
        :pswitch_3  #00000010
        :pswitch_3  #00000011
        :pswitch_3  #00000012
        :pswitch_3  #00000013
        :pswitch_da  #00000014
        :pswitch_3  #00000015
        :pswitch_d6  #00000016
        :pswitch_d2  #00000017
        :pswitch_ce  #00000018
        :pswitch_cb  #00000019
        :pswitch_3  #0000001a
        :pswitch_3  #0000001b
        :pswitch_3  #0000001c
        :pswitch_3  #0000001d
        :pswitch_c8  #0000001e
        :pswitch_3  #0000001f
        :pswitch_3  #00000020
        :pswitch_3  #00000021
        :pswitch_3  #00000022
        :pswitch_c4  #00000023
        :pswitch_3  #00000024
        :pswitch_3  #00000025
        :pswitch_3  #00000026
        :pswitch_3  #00000027
        :pswitch_3  #00000028
        :pswitch_3  #00000029
        :pswitch_c0  #0000002a
        :pswitch_bc  #0000002b
        :pswitch_3  #0000002c
        :pswitch_b9  #0000002d
        :pswitch_b6  #0000002e
        :pswitch_b3  #0000002f
        :pswitch_af  #00000030
        :pswitch_ab  #00000031
        :pswitch_a8  #00000032
        :pswitch_a4  #00000033
        :pswitch_a0  #00000034
        :pswitch_9c  #00000035
        :pswitch_98  #00000036
        :pswitch_94  #00000037
        :pswitch_91  #00000038
        :pswitch_8e  #00000039
        :pswitch_8b  #0000003a
        :pswitch_87  #0000003b
        :pswitch_84  #0000003c
        :pswitch_80  #0000003d
        :pswitch_7d  #0000003e
        :pswitch_7a  #0000003f
        :pswitch_76  #00000040
        :pswitch_72  #00000041
        :pswitch_6e  #00000042
        :pswitch_6a  #00000043
        :pswitch_67  #00000044
        :pswitch_3  #00000045
        :pswitch_3  #00000046
        :pswitch_64  #00000047
        :pswitch_61  #00000048
        :pswitch_5e  #00000049
        :pswitch_5a  #0000004a
        :pswitch_56  #0000004b
        :pswitch_53  #0000004c
        :pswitch_50  #0000004d
        :pswitch_4d  #0000004e
        :pswitch_4a  #0000004f
        :pswitch_46  #00000050
        :pswitch_43  #00000051
        :pswitch_40  #00000052
        :pswitch_3  #00000053
        :pswitch_3d  #00000054
        :pswitch_39  #00000055
        :pswitch_35  #00000056
        :pswitch_31  #00000057
        :pswitch_2e  #00000058
        :pswitch_2b  #00000059
        :pswitch_28  #0000005a
        :pswitch_25  #0000005b
        :pswitch_22  #0000005c
        :pswitch_1e  #0000005d
        :pswitch_1a  #0000005e
        :pswitch_17  #0000005f
        :pswitch_13  #00000060
        :pswitch_f  #00000061
        :pswitch_c  #00000062
        :pswitch_9  #00000063
        :pswitch_5  #00000064
    .end packed-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    const/16 v0, 0x63

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3

    invoke-static {p1}, Landroid/os/storage/IStorageManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    const-string v10, "android.os.storage.IStorageManager"

    const/4 v11, 0x1

    if-lt v7, v11, :cond_15

    const v0, 0xffffff

    if-gt v7, v0, :cond_15

    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_15
    packed-switch v7, :pswitch_data_4fa

    packed-switch v7, :pswitch_data_500

    :pswitch_1b  #0x3, 0x4, 0x5, 0x6, 0x7, 0x8, 0x9, 0xa, 0xb, 0xc, 0xd, 0xe, 0xf, 0x10, 0x11, 0x12, 0x13, 0x15, 0x1a, 0x1b, 0x1c, 0x1d, 0x1f, 0x20, 0x21, 0x22, 0x24, 0x25, 0x26, 0x27, 0x28, 0x29, 0x2c, 0x45, 0x46, 0x53
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :pswitch_20  #0x5f4e5446
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v11

    :pswitch_24  #0x64
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1, v2}, Landroid/os/storage/IStorageManager$Stub;->moveStorageQuickly(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_4f9

    :pswitch_3b  #0x63
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/os/storage/IStorageManager$Stub;->fixupAppDirRecursive(Ljava/lang/String;III)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_4f9

    :pswitch_56  #0x62
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IStorageManager$Stub;->getCloudMediaProvider()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_4f9

    :pswitch_62  #0x61
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Landroid/os/storage/IStorageManager$Stub;->setCloudMediaProvider(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_4f9

    :pswitch_71  #0x60
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/os/storage/IStorageManager$Stub;->isAppIoBlocked(Ljava/lang/String;III)Z

    move-result v4

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_4f9

    :pswitch_90  #0x5f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1}, Landroid/os/storage/IStorageManager$Stub;->getExternalStorageMountMode(ILjava/lang/String;)I

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_4f9

    :pswitch_a7  #0x5e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/os/storage/IStorageManager$Stub;->notifyAppIoResumed(Ljava/lang/String;III)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_4f9

    :pswitch_c2  #0x5d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/os/storage/IStorageManager$Stub;->notifyAppIoBlocked(Ljava/lang/String;III)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_4f9

    :pswitch_dd  #0x5c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1}, Landroid/os/storage/IStorageManager$Stub;->getManageSpaceActivityIntent(Ljava/lang/String;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v2, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_4f9

    :pswitch_f4  #0x5b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1, v2}, Landroid/os/storage/IStorageManager$Stub;->disableAppDataIsolation(Ljava/lang/String;II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_4f9

    :pswitch_10b  #0x5a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Landroid/os/storage/IStorageManager$Stub;->fixupAppDir(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_4f9

    :pswitch_11a  #0x59
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1, v2}, Landroid/os/storage/IStorageManager$Stub;->clearUserKeyAuth(II[B)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_4f9

    :pswitch_131  #0x58
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1}, Landroid/os/storage/IStorageManager$Stub;->abortChanges(Ljava/lang/String;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_4f9

    :pswitch_144  #0x57
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IStorageManager$Stub;->needsCheckpoint()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_4f9

    :pswitch_150  #0x56
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Landroid/os/storage/IStorageManager$Stub;->startCheckpoint(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_4f9

    :pswitch_15f  #0x55
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IStorageManager$Stub;->supportsCheckpoint()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_4f9

    :pswitch_16b  #0x54
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IStorageManager$Stub;->commitChanges()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_4f9

    :pswitch_173  #0x52
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IStorageManager$Stub;->getExtMGearInterface()[F

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeFloatArray([F)V

    goto/16 :goto_4f9

    :pswitch_17f  #0x51
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IStorageManager$Stub;->abortIdleMaintenance()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_4f9

    :pswitch_187  #0x50
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IStorageManager$Stub;->runIdleMaintenance()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_4f9

    :pswitch_18f  #0x4f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move-object v1, v12

    move-wide v2, v13

    move v4, v15

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/os/storage/IStorageManager$Stub;->allocateBytes(Ljava/lang/String;JILjava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_4f9

    :pswitch_1b1  #0x4e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1, v2}, Landroid/os/storage/IStorageManager$Stub;->getAllocatableBytes(Ljava/lang/String;ILjava/lang/String;)J

    move-result-wide v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_4f9

    :pswitch_1cc  #0x4d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1}, Landroid/os/storage/IStorageManager$Stub;->getCacheSizeBytes(Ljava/lang/String;I)J

    move-result-wide v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_4f9

    :pswitch_1e3  #0x4c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1}, Landroid/os/storage/IStorageManager$Stub;->getCacheQuotaBytes(Ljava/lang/String;I)J

    move-result-wide v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_4f9

    :pswitch_1fa  #0x4b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1, v2}, Landroid/os/storage/IStorageManager$Stub;->openProxyFileDescriptor(III)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v3, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_4f9

    :pswitch_215  #0x4a
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IStorageManager$Stub;->mountProxyFileDescriptorBridge()Lcom/android/internal/os/AppFuseMount;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v0, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_4f9

    :pswitch_221  #0x49
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IVoldTaskListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoldTaskListener;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1}, Landroid/os/storage/IStorageManager$Stub;->fstrim(ILandroid/os/IVoldTaskListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_4f9

    :pswitch_238  #0x48
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Landroid/os/storage/IStorageManager$Stub;->fixateNewestUserKeyAuth(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_4f9

    :pswitch_247  #0x47
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1, v2}, Landroid/os/storage/IStorageManager$Stub;->addUserKeyAuth(II[B)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_4f9

    :pswitch_25e  #0x44
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1, v2}, Landroid/os/storage/IStorageManager$Stub;->destroyUserStorage(Ljava/lang/String;II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_4f9

    :pswitch_275  #0x43
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/os/storage/IStorageManager$Stub;->prepareUserStorage(Ljava/lang/String;III)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_4f9

    :pswitch_290  #0x42
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Landroid/os/storage/IStorageManager$Stub;->isUserKeyUnlocked(I)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_4f9

    :pswitch_2a3  #0x41
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Landroid/os/storage/IStorageManager$Stub;->lockUserKey(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_4f9

    :pswitch_2b2  #0x40
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1, v2}, Landroid/os/storage/IStorageManager$Stub;->unlockUserKey(II[B)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_4f9

    :pswitch_2c9  #0x3f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Landroid/os/storage/IStorageManager$Stub;->destroyUserKey(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_4f9

    :pswitch_2d8  #0x3e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1, v2}, Landroid/os/storage/IStorageManager$Stub;->createUserKey(IIZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_4f9

    :pswitch_2ef  #0x3d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1}, Landroid/os/storage/IStorageManager$Stub;->setDebugFlags(II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_4f9

    :pswitch_302  #0x3c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IVoldTaskListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoldTaskListener;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1}, Landroid/os/storage/IStorageManager$Stub;->benchmark(Ljava/lang/String;Landroid/os/IVoldTaskListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_4f9

    :pswitch_319  #0x3b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/content/pm/IPackageMoveObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageMoveObserver;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1}, Landroid/os/storage/IStorageManager$Stub;->setPrimaryStorageUuid(Ljava/lang/String;Landroid/content/pm/IPackageMoveObserver;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_4f9

    :pswitch_330  #0x3a
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IStorageManager$Stub;->getPrimaryStorageUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_4f9

    :pswitch_33c  #0x39
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IStorageManager$Stub;->forgetAllVolumes()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_4f9

    :pswitch_344  #0x38
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Landroid/os/storage/IStorageManager$Stub;->forgetVolume(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_4f9

    :pswitch_353  #0x37
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1, v2}, Landroid/os/storage/IStorageManager$Stub;->setVolumeUserFlags(Ljava/lang/String;II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_4f9

    :pswitch_36a  #0x36
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1}, Landroid/os/storage/IStorageManager$Stub;->setVolumeNickname(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_4f9

    :pswitch_37d  #0x35
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1}, Landroid/os/storage/IStorageManager$Stub;->partitionMixed(Ljava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_4f9

    :pswitch_390  #0x34
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Landroid/os/storage/IStorageManager$Stub;->partitionPrivate(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_4f9

    :pswitch_39f  #0x33
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Landroid/os/storage/IStorageManager$Stub;->partitionPublic(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_4f9

    :pswitch_3ae  #0x32
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Landroid/os/storage/IStorageManager$Stub;->format(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_4f9

    :pswitch_3bd  #0x31
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Landroid/os/storage/IStorageManager$Stub;->unmount(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_4f9

    :pswitch_3cc  #0x30
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Landroid/os/storage/IStorageManager$Stub;->mount(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_4f9

    :pswitch_3db  #0x2f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Landroid/os/storage/IStorageManager$Stub;->getVolumeRecords(I)[Landroid/os/storage/VolumeRecord;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1, v11}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto/16 :goto_4f9

    :pswitch_3ee  #0x2e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Landroid/os/storage/IStorageManager$Stub;->getVolumes(I)[Landroid/os/storage/VolumeInfo;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1, v11}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto/16 :goto_4f9

    :pswitch_401  #0x2d
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IStorageManager$Stub;->getDisks()[Landroid/os/storage/DiskInfo;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v0, v11}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto/16 :goto_4f9

    :pswitch_40d  #0x2b
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IStorageManager$Stub;->runMaintenance()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_4f9

    :pswitch_415  #0x2a
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IStorageManager$Stub;->lastMaintenance()J

    move-result-wide v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_4f9

    :pswitch_421  #0x23
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1}, Landroid/os/storage/IStorageManager$Stub;->mkdirs(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_4f9

    :pswitch_434  #0x1e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1, v2}, Landroid/os/storage/IStorageManager$Stub;->getVolumeList(ILjava/lang/String;I)[Landroid/os/storage/StorageVolume;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v3, v11}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto/16 :goto_4f9

    :pswitch_44f  #0x19
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Landroid/os/storage/IStorageManager$Stub;->getMountedObbPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_4f9

    :pswitch_462  #0x18
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Landroid/os/storage/IStorageManager$Stub;->isObbMounted(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_4f9

    :pswitch_475  #0x17
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/storage/IObbActionListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IObbActionListener;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/os/storage/IStorageManager$Stub;->unmountObb(Ljava/lang/String;ZLandroid/os/storage/IObbActionListener;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_4f9

    :pswitch_493  #0x16
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/storage/IObbActionListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IObbActionListener;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    sget-object v0, Landroid/content/res/ObbInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/content/res/ObbInfo;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move-object v1, v12

    move-object v2, v13

    move-object v3, v14

    move v4, v15

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/os/storage/IStorageManager$Stub;->mountObb(Ljava/lang/String;Ljava/lang/String;Landroid/os/storage/IObbActionListener;ILandroid/content/res/ObbInfo;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_4f9

    :pswitch_4c3  #0x14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/storage/IStorageShutdownObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IStorageShutdownObserver;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Landroid/os/storage/IStorageManager$Stub;->shutdown(Landroid/os/storage/IStorageShutdownObserver;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_4f9

    :pswitch_4d5  #0x2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/storage/IStorageEventListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IStorageEventListener;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Landroid/os/storage/IStorageManager$Stub;->unregisterListener(Landroid/os/storage/IStorageEventListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_4f9

    :pswitch_4e7  #0x1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/storage/IStorageEventListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IStorageEventListener;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Landroid/os/storage/IStorageManager$Stub;->registerListener(Landroid/os/storage/IStorageEventListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    nop

    :goto_4f9
    return v11

    :pswitch_data_4fa
    .packed-switch 0x5f4e5446
        :pswitch_20  #5f4e5446
    .end packed-switch

    :pswitch_data_500
    .packed-switch 0x1
        :pswitch_4e7  #00000001
        :pswitch_4d5  #00000002
        :pswitch_1b  #00000003
        :pswitch_1b  #00000004
        :pswitch_1b  #00000005
        :pswitch_1b  #00000006
        :pswitch_1b  #00000007
        :pswitch_1b  #00000008
        :pswitch_1b  #00000009
        :pswitch_1b  #0000000a
        :pswitch_1b  #0000000b
        :pswitch_1b  #0000000c
        :pswitch_1b  #0000000d
        :pswitch_1b  #0000000e
        :pswitch_1b  #0000000f
        :pswitch_1b  #00000010
        :pswitch_1b  #00000011
        :pswitch_1b  #00000012
        :pswitch_1b  #00000013
        :pswitch_4c3  #00000014
        :pswitch_1b  #00000015
        :pswitch_493  #00000016
        :pswitch_475  #00000017
        :pswitch_462  #00000018
        :pswitch_44f  #00000019
        :pswitch_1b  #0000001a
        :pswitch_1b  #0000001b
        :pswitch_1b  #0000001c
        :pswitch_1b  #0000001d
        :pswitch_434  #0000001e
        :pswitch_1b  #0000001f
        :pswitch_1b  #00000020
        :pswitch_1b  #00000021
        :pswitch_1b  #00000022
        :pswitch_421  #00000023
        :pswitch_1b  #00000024
        :pswitch_1b  #00000025
        :pswitch_1b  #00000026
        :pswitch_1b  #00000027
        :pswitch_1b  #00000028
        :pswitch_1b  #00000029
        :pswitch_415  #0000002a
        :pswitch_40d  #0000002b
        :pswitch_1b  #0000002c
        :pswitch_401  #0000002d
        :pswitch_3ee  #0000002e
        :pswitch_3db  #0000002f
        :pswitch_3cc  #00000030
        :pswitch_3bd  #00000031
        :pswitch_3ae  #00000032
        :pswitch_39f  #00000033
        :pswitch_390  #00000034
        :pswitch_37d  #00000035
        :pswitch_36a  #00000036
        :pswitch_353  #00000037
        :pswitch_344  #00000038
        :pswitch_33c  #00000039
        :pswitch_330  #0000003a
        :pswitch_319  #0000003b
        :pswitch_302  #0000003c
        :pswitch_2ef  #0000003d
        :pswitch_2d8  #0000003e
        :pswitch_2c9  #0000003f
        :pswitch_2b2  #00000040
        :pswitch_2a3  #00000041
        :pswitch_290  #00000042
        :pswitch_275  #00000043
        :pswitch_25e  #00000044
        :pswitch_1b  #00000045
        :pswitch_1b  #00000046
        :pswitch_247  #00000047
        :pswitch_238  #00000048
        :pswitch_221  #00000049
        :pswitch_215  #0000004a
        :pswitch_1fa  #0000004b
        :pswitch_1e3  #0000004c
        :pswitch_1cc  #0000004d
        :pswitch_1b1  #0000004e
        :pswitch_18f  #0000004f
        :pswitch_187  #00000050
        :pswitch_17f  #00000051
        :pswitch_173  #00000052
        :pswitch_1b  #00000053
        :pswitch_16b  #00000054
        :pswitch_15f  #00000055
        :pswitch_150  #00000056
        :pswitch_144  #00000057
        :pswitch_131  #00000058
        :pswitch_11a  #00000059
        :pswitch_10b  #0000005a
        :pswitch_f4  #0000005b
        :pswitch_dd  #0000005c
        :pswitch_c2  #0000005d
        :pswitch_a7  #0000005e
        :pswitch_90  #0000005f
        :pswitch_71  #00000060
        :pswitch_62  #00000061
        :pswitch_56  #00000062
        :pswitch_3b  #00000063
        :pswitch_24  #00000064
    .end packed-switch
.end method
