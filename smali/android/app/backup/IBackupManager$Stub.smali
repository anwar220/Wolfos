# classes.dex

.class public abstract Landroid/app/backup/IBackupManager$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Landroid/app/backup/IBackupManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/backup/IBackupManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/backup/IBackupManager$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.app.backup.IBackupManager"

.field static final TRANSACTION_acknowledgeFullBackupOrRestore:I = 0x1a

.field static final TRANSACTION_acknowledgeFullBackupOrRestoreForUser:I = 0x19

.field static final TRANSACTION_adbBackup:I = 0x16

.field static final TRANSACTION_adbRestore:I = 0x18

.field static final TRANSACTION_agentConnected:I = 0x7

.field static final TRANSACTION_agentConnectedForUser:I = 0x6

.field static final TRANSACTION_agentDisconnected:I = 0x9

.field static final TRANSACTION_agentDisconnectedForUser:I = 0x8

.field static final TRANSACTION_backupNow:I = 0x15

.field static final TRANSACTION_backupNowForUser:I = 0x14

.field static final TRANSACTION_beginRestoreSessionForUser:I = 0x2d

.field static final TRANSACTION_cancelBackups:I = 0x39

.field static final TRANSACTION_cancelBackupsForUser:I = 0x38

.field static final TRANSACTION_cancelMiuiBackupsForUser:I = 0x3d

.field static final TRANSACTION_clearBackupData:I = 0x4

.field static final TRANSACTION_clearBackupDataForUser:I = 0x3

.field static final TRANSACTION_dataChanged:I = 0x2

.field static final TRANSACTION_dataChangedForUser:I = 0x1

.field static final TRANSACTION_excludeKeysFromRestore:I = 0x3c

.field static final TRANSACTION_filterAppsEligibleForBackupForUser:I = 0x35

.field static final TRANSACTION_fullTransportBackupForUser:I = 0x17

.field static final TRANSACTION_getAvailableRestoreTokenForUser:I = 0x33

.field static final TRANSACTION_getConfigurationIntent:I = 0x27

.field static final TRANSACTION_getConfigurationIntentForUser:I = 0x26

.field static final TRANSACTION_getCurrentTransport:I = 0x1d

.field static final TRANSACTION_getCurrentTransportComponentForUser:I = 0x1e

.field static final TRANSACTION_getCurrentTransportForUser:I = 0x1c

.field static final TRANSACTION_getDataManagementIntent:I = 0x2b

.field static final TRANSACTION_getDataManagementIntentForUser:I = 0x2a

.field static final TRANSACTION_getDataManagementLabelForUser:I = 0x2c

.field static final TRANSACTION_getDestinationString:I = 0x29

.field static final TRANSACTION_getDestinationStringForUser:I = 0x28

.field static final TRANSACTION_getTransportWhitelist:I = 0x22

.field static final TRANSACTION_getUserForAncestralSerialNumber:I = 0x3a

.field static final TRANSACTION_hasBackupPassword:I = 0x13

.field static final TRANSACTION_initializeTransportsForUser:I = 0x5

.field static final TRANSACTION_isAppEligibleForBackupForUser:I = 0x34

.field static final TRANSACTION_isBackupEnabled:I = 0x11

.field static final TRANSACTION_isBackupEnabledForUser:I = 0x10

.field static final TRANSACTION_isBackupServiceActive:I = 0x31

.field static final TRANSACTION_isUserReadyForBackup:I = 0x32

.field static final TRANSACTION_listAllTransportComponentsForUser:I = 0x21

.field static final TRANSACTION_listAllTransports:I = 0x20

.field static final TRANSACTION_listAllTransportsForUser:I = 0x1f

.field static final TRANSACTION_opComplete:I = 0x2f

.field static final TRANSACTION_opCompleteForUser:I = 0x2e

.field static final TRANSACTION_requestBackup:I = 0x37

.field static final TRANSACTION_requestBackupForUser:I = 0x36

.field static final TRANSACTION_restoreAtInstall:I = 0xb

.field static final TRANSACTION_restoreAtInstallForUser:I = 0xa

.field static final TRANSACTION_selectBackupTransport:I = 0x24

.field static final TRANSACTION_selectBackupTransportAsyncForUser:I = 0x25

.field static final TRANSACTION_selectBackupTransportForUser:I = 0x23

.field static final TRANSACTION_setAncestralSerialNumber:I = 0x3b

.field static final TRANSACTION_setAutoRestore:I = 0xf

.field static final TRANSACTION_setAutoRestoreForUser:I = 0xe

.field static final TRANSACTION_setBackupEnabled:I = 0xd

.field static final TRANSACTION_setBackupEnabledForUser:I = 0xc

.field static final TRANSACTION_setBackupPassword:I = 0x12

.field static final TRANSACTION_setBackupServiceActive:I = 0x30

.field static final TRANSACTION_updateTransportAttributesForUser:I = 0x1b


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.app.backup.IBackupManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/backup/IBackupManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "android.app.backup.IBackupManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/app/backup/IBackupManager;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Landroid/app/backup/IBackupManager;

    return-object v1

    :cond_14
    new-instance v1, Landroid/app/backup/IBackupManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/backup/IBackupManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_ce

    const/4 v0, 0x0

    return-object v0

    :pswitch_5  #0x3d
    const-string v0, "cancelMiuiBackupsForUser"

    return-object v0

    :pswitch_8  #0x3c
    const-string v0, "excludeKeysFromRestore"

    return-object v0

    :pswitch_b  #0x3b
    const-string/jumbo v0, "setAncestralSerialNumber"

    return-object v0

    :pswitch_f  #0x3a
    const-string v0, "getUserForAncestralSerialNumber"

    return-object v0

    :pswitch_12  #0x39
    const-string v0, "cancelBackups"

    return-object v0

    :pswitch_15  #0x38
    const-string v0, "cancelBackupsForUser"

    return-object v0

    :pswitch_18  #0x37
    const-string/jumbo v0, "requestBackup"

    return-object v0

    :pswitch_1c  #0x36
    const-string/jumbo v0, "requestBackupForUser"

    return-object v0

    :pswitch_20  #0x35
    const-string v0, "filterAppsEligibleForBackupForUser"

    return-object v0

    :pswitch_23  #0x34
    const-string v0, "isAppEligibleForBackupForUser"

    return-object v0

    :pswitch_26  #0x33
    const-string v0, "getAvailableRestoreTokenForUser"

    return-object v0

    :pswitch_29  #0x32
    const-string v0, "isUserReadyForBackup"

    return-object v0

    :pswitch_2c  #0x31
    const-string v0, "isBackupServiceActive"

    return-object v0

    :pswitch_2f  #0x30
    const-string/jumbo v0, "setBackupServiceActive"

    return-object v0

    :pswitch_33  #0x2f
    const-string/jumbo v0, "opComplete"

    return-object v0

    :pswitch_37  #0x2e
    const-string/jumbo v0, "opCompleteForUser"

    return-object v0

    :pswitch_3b  #0x2d
    const-string v0, "beginRestoreSessionForUser"

    return-object v0

    :pswitch_3e  #0x2c
    const-string v0, "getDataManagementLabelForUser"

    return-object v0

    :pswitch_41  #0x2b
    const-string v0, "getDataManagementIntent"

    return-object v0

    :pswitch_44  #0x2a
    const-string v0, "getDataManagementIntentForUser"

    return-object v0

    :pswitch_47  #0x29
    const-string v0, "getDestinationString"

    return-object v0

    :pswitch_4a  #0x28
    const-string v0, "getDestinationStringForUser"

    return-object v0

    :pswitch_4d  #0x27
    const-string v0, "getConfigurationIntent"

    return-object v0

    :pswitch_50  #0x26
    const-string v0, "getConfigurationIntentForUser"

    return-object v0

    :pswitch_53  #0x25
    const-string/jumbo v0, "selectBackupTransportAsyncForUser"

    return-object v0

    :pswitch_57  #0x24
    const-string/jumbo v0, "selectBackupTransport"

    return-object v0

    :pswitch_5b  #0x23
    const-string/jumbo v0, "selectBackupTransportForUser"

    return-object v0

    :pswitch_5f  #0x22
    const-string v0, "getTransportWhitelist"

    return-object v0

    :pswitch_62  #0x21
    const-string v0, "listAllTransportComponentsForUser"

    return-object v0

    :pswitch_65  #0x20
    const-string v0, "listAllTransports"

    return-object v0

    :pswitch_68  #0x1f
    const-string v0, "listAllTransportsForUser"

    return-object v0

    :pswitch_6b  #0x1e
    const-string v0, "getCurrentTransportComponentForUser"

    return-object v0

    :pswitch_6e  #0x1d
    const-string v0, "getCurrentTransport"

    return-object v0

    :pswitch_71  #0x1c
    const-string v0, "getCurrentTransportForUser"

    return-object v0

    :pswitch_74  #0x1b
    const-string/jumbo v0, "updateTransportAttributesForUser"

    return-object v0

    :pswitch_78  #0x1a
    const-string v0, "acknowledgeFullBackupOrRestore"

    return-object v0

    :pswitch_7b  #0x19
    const-string v0, "acknowledgeFullBackupOrRestoreForUser"

    return-object v0

    :pswitch_7e  #0x18
    const-string v0, "adbRestore"

    return-object v0

    :pswitch_81  #0x17
    const-string v0, "fullTransportBackupForUser"

    return-object v0

    :pswitch_84  #0x16
    const-string v0, "adbBackup"

    return-object v0

    :pswitch_87  #0x15
    const-string v0, "backupNow"

    return-object v0

    :pswitch_8a  #0x14
    const-string v0, "backupNowForUser"

    return-object v0

    :pswitch_8d  #0x13
    const-string v0, "hasBackupPassword"

    return-object v0

    :pswitch_90  #0x12
    const-string/jumbo v0, "setBackupPassword"

    return-object v0

    :pswitch_94  #0x11
    const-string v0, "isBackupEnabled"

    return-object v0

    :pswitch_97  #0x10
    const-string v0, "isBackupEnabledForUser"

    return-object v0

    :pswitch_9a  #0xf
    const-string/jumbo v0, "setAutoRestore"

    return-object v0

    :pswitch_9e  #0xe
    const-string/jumbo v0, "setAutoRestoreForUser"

    return-object v0

    :pswitch_a2  #0xd
    const-string/jumbo v0, "setBackupEnabled"

    return-object v0

    :pswitch_a6  #0xc
    const-string/jumbo v0, "setBackupEnabledForUser"

    return-object v0

    :pswitch_aa  #0xb
    const-string/jumbo v0, "restoreAtInstall"

    return-object v0

    :pswitch_ae  #0xa
    const-string/jumbo v0, "restoreAtInstallForUser"

    return-object v0

    :pswitch_b2  #0x9
    const-string v0, "agentDisconnected"

    return-object v0

    :pswitch_b5  #0x8
    const-string v0, "agentDisconnectedForUser"

    return-object v0

    :pswitch_b8  #0x7
    const-string v0, "agentConnected"

    return-object v0

    :pswitch_bb  #0x6
    const-string v0, "agentConnectedForUser"

    return-object v0

    :pswitch_be  #0x5
    const-string v0, "initializeTransportsForUser"

    return-object v0

    :pswitch_c1  #0x4
    const-string v0, "clearBackupData"

    return-object v0

    :pswitch_c4  #0x3
    const-string v0, "clearBackupDataForUser"

    return-object v0

    :pswitch_c7  #0x2
    const-string v0, "dataChanged"

    return-object v0

    :pswitch_ca  #0x1
    const-string v0, "dataChangedForUser"

    return-object v0

    nop

    :pswitch_data_ce
    .packed-switch 0x1
        :pswitch_ca  #00000001
        :pswitch_c7  #00000002
        :pswitch_c4  #00000003
        :pswitch_c1  #00000004
        :pswitch_be  #00000005
        :pswitch_bb  #00000006
        :pswitch_b8  #00000007
        :pswitch_b5  #00000008
        :pswitch_b2  #00000009
        :pswitch_ae  #0000000a
        :pswitch_aa  #0000000b
        :pswitch_a6  #0000000c
        :pswitch_a2  #0000000d
        :pswitch_9e  #0000000e
        :pswitch_9a  #0000000f
        :pswitch_97  #00000010
        :pswitch_94  #00000011
        :pswitch_90  #00000012
        :pswitch_8d  #00000013
        :pswitch_8a  #00000014
        :pswitch_87  #00000015
        :pswitch_84  #00000016
        :pswitch_81  #00000017
        :pswitch_7e  #00000018
        :pswitch_7b  #00000019
        :pswitch_78  #0000001a
        :pswitch_74  #0000001b
        :pswitch_71  #0000001c
        :pswitch_6e  #0000001d
        :pswitch_6b  #0000001e
        :pswitch_68  #0000001f
        :pswitch_65  #00000020
        :pswitch_62  #00000021
        :pswitch_5f  #00000022
        :pswitch_5b  #00000023
        :pswitch_57  #00000024
        :pswitch_53  #00000025
        :pswitch_50  #00000026
        :pswitch_4d  #00000027
        :pswitch_4a  #00000028
        :pswitch_47  #00000029
        :pswitch_44  #0000002a
        :pswitch_41  #0000002b
        :pswitch_3e  #0000002c
        :pswitch_3b  #0000002d
        :pswitch_37  #0000002e
        :pswitch_33  #0000002f
        :pswitch_2f  #00000030
        :pswitch_2c  #00000031
        :pswitch_29  #00000032
        :pswitch_26  #00000033
        :pswitch_23  #00000034
        :pswitch_20  #00000035
        :pswitch_1c  #00000036
        :pswitch_18  #00000037
        :pswitch_15  #00000038
        :pswitch_12  #00000039
        :pswitch_f  #0000003a
        :pswitch_b  #0000003b
        :pswitch_8  #0000003c
        :pswitch_5  #0000003d
    .end packed-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    const/16 v0, 0x3c

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3

    invoke-static {p1}, Landroid/app/backup/IBackupManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 34
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v12, p0

    move/from16 v13, p1

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    const-string v11, "android.app.backup.IBackupManager"

    const/4 v10, 0x1

    if-lt v13, v10, :cond_15

    const v0, 0xffffff

    if-gt v13, v0, :cond_15

    invoke-virtual {v14, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_15
    packed-switch v13, :pswitch_data_68c

    packed-switch v13, :pswitch_data_692

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :pswitch_20  #0x5f4e5446
    invoke-virtual {v15, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v10

    :pswitch_24  #0x3d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0}, Landroid/app/backup/IBackupManager$Stub;->cancelMiuiBackupsForUser(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move/from16 v27, v10

    move-object/from16 v28, v11

    goto/16 :goto_68a

    :pswitch_37  #0x3c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0, v1}, Landroid/app/backup/IBackupManager$Stub;->excludeKeysFromRestore(Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move/from16 v27, v10

    move-object/from16 v28, v11

    goto/16 :goto_68a

    :pswitch_4e  #0x3b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0, v1}, Landroid/app/backup/IBackupManager$Stub;->setAncestralSerialNumber(J)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move/from16 v27, v10

    move-object/from16 v28, v11

    goto/16 :goto_68a

    :pswitch_61  #0x3a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0, v1}, Landroid/app/backup/IBackupManager$Stub;->getUserForAncestralSerialNumber(J)Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v15, v2, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    move/from16 v27, v10

    move-object/from16 v28, v11

    goto/16 :goto_68a

    :pswitch_78  #0x39
    invoke-virtual/range {p0 .. p0}, Landroid/app/backup/IBackupManager$Stub;->cancelBackups()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move/from16 v27, v10

    move-object/from16 v28, v11

    goto/16 :goto_68a

    :pswitch_84  #0x38
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0}, Landroid/app/backup/IBackupManager$Stub;->cancelBackupsForUser(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move/from16 v27, v10

    move-object/from16 v28, v11

    goto/16 :goto_68a

    :pswitch_97  #0x37
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/backup/IBackupObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupObserver;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/backup/IBackupManagerMonitor$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/app/backup/IBackupManager$Stub;->requestBackup([Ljava/lang/String;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;I)I

    move-result v4

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v15, v4}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v27, v10

    move-object/from16 v28, v11

    goto/16 :goto_68a

    :pswitch_c2  #0x36
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/backup/IBackupObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupObserver;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/backup/IBackupManagerMonitor$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move v1, v6

    move-object v2, v7

    move-object v3, v8

    move-object v4, v9

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/app/backup/IBackupManager$Stub;->requestBackupForUser(I[Ljava/lang/String;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;I)I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v27, v10

    move-object/from16 v28, v11

    goto/16 :goto_68a

    :pswitch_f9  #0x35
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0, v1}, Landroid/app/backup/IBackupManager$Stub;->filterAppsEligibleForBackupForUser(I[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    move/from16 v27, v10

    move-object/from16 v28, v11

    goto/16 :goto_68a

    :pswitch_114  #0x34
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0, v1}, Landroid/app/backup/IBackupManager$Stub;->isAppEligibleForBackupForUser(ILjava/lang/String;)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    move/from16 v27, v10

    move-object/from16 v28, v11

    goto/16 :goto_68a

    :pswitch_12f  #0x33
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0, v1}, Landroid/app/backup/IBackupManager$Stub;->getAvailableRestoreTokenForUser(ILjava/lang/String;)J

    move-result-wide v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v15, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    move/from16 v27, v10

    move-object/from16 v28, v11

    goto/16 :goto_68a

    :pswitch_14a  #0x32
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0}, Landroid/app/backup/IBackupManager$Stub;->isUserReadyForBackup(I)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    move/from16 v27, v10

    move-object/from16 v28, v11

    goto/16 :goto_68a

    :pswitch_161  #0x31
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0}, Landroid/app/backup/IBackupManager$Stub;->isBackupServiceActive(I)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    move/from16 v27, v10

    move-object/from16 v28, v11

    goto/16 :goto_68a

    :pswitch_178  #0x30
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0, v1}, Landroid/app/backup/IBackupManager$Stub;->setBackupServiceActive(IZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move/from16 v27, v10

    move-object/from16 v28, v11

    goto/16 :goto_68a

    :pswitch_18f  #0x2f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0, v1, v2}, Landroid/app/backup/IBackupManager$Stub;->opComplete(IJ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move/from16 v27, v10

    move-object/from16 v28, v11

    goto/16 :goto_68a

    :pswitch_1a6  #0x2e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/app/backup/IBackupManager$Stub;->opCompleteForUser(IIJ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move/from16 v27, v10

    move-object/from16 v28, v11

    goto/16 :goto_68a

    :pswitch_1c1  #0x2d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0, v1, v2}, Landroid/app/backup/IBackupManager$Stub;->beginRestoreSessionForUser(ILjava/lang/String;Ljava/lang/String;)Landroid/app/backup/IRestoreSession;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v15, v3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    move/from16 v27, v10

    move-object/from16 v28, v11

    goto/16 :goto_68a

    :pswitch_1e0  #0x2c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0, v1}, Landroid/app/backup/IBackupManager$Stub;->getDataManagementLabelForUser(ILjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_200

    invoke-virtual {v15, v10}, Landroid/os/Parcel;->writeInt(I)V

    invoke-static {v2, v15, v10}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    move/from16 v27, v10

    move-object/from16 v28, v11

    goto/16 :goto_68a

    :cond_200
    const/4 v3, 0x0

    invoke-virtual {v15, v3}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v27, v10

    move-object/from16 v28, v11

    goto/16 :goto_68a

    :pswitch_20a  #0x2b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0}, Landroid/app/backup/IBackupManager$Stub;->getDataManagementIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v15, v1, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    move/from16 v27, v10

    move-object/from16 v28, v11

    goto/16 :goto_68a

    :pswitch_221  #0x2a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0, v1}, Landroid/app/backup/IBackupManager$Stub;->getDataManagementIntentForUser(ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v15, v2, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    move/from16 v27, v10

    move-object/from16 v28, v11

    goto/16 :goto_68a

    :pswitch_23c  #0x29
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0}, Landroid/app/backup/IBackupManager$Stub;->getDestinationString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move/from16 v27, v10

    move-object/from16 v28, v11

    goto/16 :goto_68a

    :pswitch_253  #0x28
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0, v1}, Landroid/app/backup/IBackupManager$Stub;->getDestinationStringForUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move/from16 v27, v10

    move-object/from16 v28, v11

    goto/16 :goto_68a

    :pswitch_26e  #0x27
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0}, Landroid/app/backup/IBackupManager$Stub;->getConfigurationIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v15, v1, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    move/from16 v27, v10

    move-object/from16 v28, v11

    goto/16 :goto_68a

    :pswitch_285  #0x26
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0, v1}, Landroid/app/backup/IBackupManager$Stub;->getConfigurationIntentForUser(ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v15, v2, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    move/from16 v27, v10

    move-object/from16 v28, v11

    goto/16 :goto_68a

    :pswitch_2a0  #0x25
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/backup/ISelectBackupTransportCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/ISelectBackupTransportCallback;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0, v1, v2}, Landroid/app/backup/IBackupManager$Stub;->selectBackupTransportAsyncForUser(ILandroid/content/ComponentName;Landroid/app/backup/ISelectBackupTransportCallback;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move/from16 v27, v10

    move-object/from16 v28, v11

    goto/16 :goto_68a

    :pswitch_2c3  #0x24
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0}, Landroid/app/backup/IBackupManager$Stub;->selectBackupTransport(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move/from16 v27, v10

    move-object/from16 v28, v11

    goto/16 :goto_68a

    :pswitch_2da  #0x23
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0, v1}, Landroid/app/backup/IBackupManager$Stub;->selectBackupTransportForUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move/from16 v27, v10

    move-object/from16 v28, v11

    goto/16 :goto_68a

    :pswitch_2f5  #0x22
    invoke-virtual/range {p0 .. p0}, Landroid/app/backup/IBackupManager$Stub;->getTransportWhitelist()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    move/from16 v27, v10

    move-object/from16 v28, v11

    goto/16 :goto_68a

    :pswitch_305  #0x21
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0}, Landroid/app/backup/IBackupManager$Stub;->listAllTransportComponentsForUser(I)[Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v15, v1, v10}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    move/from16 v27, v10

    move-object/from16 v28, v11

    goto/16 :goto_68a

    :pswitch_31c  #0x20
    invoke-virtual/range {p0 .. p0}, Landroid/app/backup/IBackupManager$Stub;->listAllTransports()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    move/from16 v27, v10

    move-object/from16 v28, v11

    goto/16 :goto_68a

    :pswitch_32c  #0x1f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0}, Landroid/app/backup/IBackupManager$Stub;->listAllTransportsForUser(I)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    move/from16 v27, v10

    move-object/from16 v28, v11

    goto/16 :goto_68a

    :pswitch_343  #0x1e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0}, Landroid/app/backup/IBackupManager$Stub;->getCurrentTransportComponentForUser(I)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v15, v1, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    move/from16 v27, v10

    move-object/from16 v28, v11

    goto/16 :goto_68a

    :pswitch_35a  #0x1d
    invoke-virtual/range {p0 .. p0}, Landroid/app/backup/IBackupManager$Stub;->getCurrentTransport()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move/from16 v27, v10

    move-object/from16 v28, v11

    goto/16 :goto_68a

    :pswitch_36a  #0x1c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0}, Landroid/app/backup/IBackupManager$Stub;->getCurrentTransportForUser(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move/from16 v27, v10

    move-object/from16 v28, v11

    goto/16 :goto_68a

    :pswitch_381  #0x1b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/content/ComponentName;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Landroid/content/Intent;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v19, v0

    check-cast v19, Landroid/content/Intent;

    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v20, v0

    check-cast v20, Ljava/lang/CharSequence;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move v1, v8

    move-object v2, v9

    move-object/from16 v3, v16

    move-object/from16 v4, v17

    move-object/from16 v5, v18

    move-object/from16 v6, v19

    move-object/from16 v7, v20

    invoke-virtual/range {v0 .. v7}, Landroid/app/backup/IBackupManager$Stub;->updateTransportAttributesForUser(ILandroid/content/ComponentName;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/CharSequence;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move/from16 v27, v10

    move-object/from16 v28, v11

    goto/16 :goto_68a

    :pswitch_3d1  #0x1a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/backup/IFullBackupRestoreObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IFullBackupRestoreObserver;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move v1, v6

    move v2, v7

    move-object v3, v8

    move-object v4, v9

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/app/backup/IBackupManager$Stub;->acknowledgeFullBackupOrRestore(IZLjava/lang/String;Ljava/lang/String;Landroid/app/backup/IFullBackupRestoreObserver;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move/from16 v27, v10

    move-object/from16 v28, v11

    goto/16 :goto_68a

    :pswitch_400  #0x19
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/backup/IFullBackupRestoreObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IFullBackupRestoreObserver;

    move-result-object v18

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move v1, v7

    move v2, v8

    move v3, v9

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/app/backup/IBackupManager$Stub;->acknowledgeFullBackupOrRestoreForUser(IIZLjava/lang/String;Ljava/lang/String;Landroid/app/backup/IFullBackupRestoreObserver;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move/from16 v27, v10

    move-object/from16 v28, v11

    goto/16 :goto_68a

    :pswitch_436  #0x18
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    sget-object v1, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelFileDescriptor;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0, v1}, Landroid/app/backup/IBackupManager$Stub;->adbRestore(ILandroid/os/ParcelFileDescriptor;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move/from16 v27, v10

    move-object/from16 v28, v11

    goto/16 :goto_68a

    :pswitch_451  #0x17
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0, v1}, Landroid/app/backup/IBackupManager$Stub;->fullTransportBackupForUser(I[Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move/from16 v27, v10

    move-object/from16 v28, v11

    goto/16 :goto_68a

    :pswitch_468  #0x16
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Landroid/os/ParcelFileDescriptor;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v18

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v19

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v20

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v21

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v22

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v23

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v24

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v25

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v17

    move/from16 v3, v18

    move/from16 v4, v19

    move/from16 v5, v20

    move/from16 v6, v21

    move/from16 v7, v22

    move/from16 v8, v23

    move/from16 v9, v24

    move/from16 v27, v10

    move/from16 v10, v25

    move-object/from16 v28, v11

    move-object/from16 v11, v26

    invoke-virtual/range {v0 .. v11}, Landroid/app/backup/IBackupManager$Stub;->adbBackup(ILandroid/os/ParcelFileDescriptor;ZZZZZZZZ[Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_68a

    :pswitch_4c1  #0x15
    move/from16 v27, v10

    move-object/from16 v28, v11

    invoke-virtual/range {p0 .. p0}, Landroid/app/backup/IBackupManager$Stub;->backupNow()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_68a

    :pswitch_4cd  #0x14
    move/from16 v27, v10

    move-object/from16 v28, v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0}, Landroid/app/backup/IBackupManager$Stub;->backupNowForUser(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_68a

    :pswitch_4e0  #0x13
    move/from16 v27, v10

    move-object/from16 v28, v11

    invoke-virtual/range {p0 .. p0}, Landroid/app/backup/IBackupManager$Stub;->hasBackupPassword()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_68a

    :pswitch_4f0  #0x12
    move/from16 v27, v10

    move-object/from16 v28, v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0, v1}, Landroid/app/backup/IBackupManager$Stub;->setBackupPassword(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_68a

    :pswitch_50b  #0x11
    move/from16 v27, v10

    move-object/from16 v28, v11

    invoke-virtual/range {p0 .. p0}, Landroid/app/backup/IBackupManager$Stub;->isBackupEnabled()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_68a

    :pswitch_51b  #0x10
    move/from16 v27, v10

    move-object/from16 v28, v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0}, Landroid/app/backup/IBackupManager$Stub;->isBackupEnabledForUser(I)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_68a

    :pswitch_532  #0xf
    move/from16 v27, v10

    move-object/from16 v28, v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0}, Landroid/app/backup/IBackupManager$Stub;->setAutoRestore(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_68a

    :pswitch_545  #0xe
    move/from16 v27, v10

    move-object/from16 v28, v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0, v1}, Landroid/app/backup/IBackupManager$Stub;->setAutoRestoreForUser(IZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_68a

    :pswitch_55c  #0xd
    move/from16 v27, v10

    move-object/from16 v28, v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0}, Landroid/app/backup/IBackupManager$Stub;->setBackupEnabled(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_68a

    :pswitch_56f  #0xc
    move/from16 v27, v10

    move-object/from16 v28, v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0, v1}, Landroid/app/backup/IBackupManager$Stub;->setBackupEnabledForUser(IZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_68a

    :pswitch_586  #0xb
    move/from16 v27, v10

    move-object/from16 v28, v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0, v1}, Landroid/app/backup/IBackupManager$Stub;->restoreAtInstall(Ljava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_68a

    :pswitch_59d  #0xa
    move/from16 v27, v10

    move-object/from16 v28, v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0, v1, v2}, Landroid/app/backup/IBackupManager$Stub;->restoreAtInstallForUser(ILjava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_68a

    :pswitch_5b8  #0x9
    move/from16 v27, v10

    move-object/from16 v28, v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0}, Landroid/app/backup/IBackupManager$Stub;->agentDisconnected(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_68a

    :pswitch_5cb  #0x8
    move/from16 v27, v10

    move-object/from16 v28, v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0, v1}, Landroid/app/backup/IBackupManager$Stub;->agentDisconnectedForUser(ILjava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_68a

    :pswitch_5e2  #0x7
    move/from16 v27, v10

    move-object/from16 v28, v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0, v1}, Landroid/app/backup/IBackupManager$Stub;->agentConnected(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_68a

    :pswitch_5f9  #0x6
    move/from16 v27, v10

    move-object/from16 v28, v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0, v1, v2}, Landroid/app/backup/IBackupManager$Stub;->agentConnectedForUser(ILjava/lang/String;Landroid/os/IBinder;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_68a

    :pswitch_614  #0x5
    move/from16 v27, v10

    move-object/from16 v28, v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/backup/IBackupObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupObserver;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0, v1, v2}, Landroid/app/backup/IBackupManager$Stub;->initializeTransportsForUser(I[Ljava/lang/String;Landroid/app/backup/IBackupObserver;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_68a

    :pswitch_632  #0x4
    move/from16 v27, v10

    move-object/from16 v28, v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0, v1}, Landroid/app/backup/IBackupManager$Stub;->clearBackupData(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_68a

    :pswitch_648  #0x3
    move/from16 v27, v10

    move-object/from16 v28, v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0, v1, v2}, Landroid/app/backup/IBackupManager$Stub;->clearBackupDataForUser(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_68a

    :pswitch_662  #0x2
    move/from16 v27, v10

    move-object/from16 v28, v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0}, Landroid/app/backup/IBackupManager$Stub;->dataChanged(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_68a

    :pswitch_674  #0x1
    move/from16 v27, v10

    move-object/from16 v28, v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0, v1}, Landroid/app/backup/IBackupManager$Stub;->dataChangedForUser(ILjava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    nop

    :goto_68a
    return v27

    nop

    :pswitch_data_68c
    .packed-switch 0x5f4e5446
        :pswitch_20  #5f4e5446
    .end packed-switch

    :pswitch_data_692
    .packed-switch 0x1
        :pswitch_674  #00000001
        :pswitch_662  #00000002
        :pswitch_648  #00000003
        :pswitch_632  #00000004
        :pswitch_614  #00000005
        :pswitch_5f9  #00000006
        :pswitch_5e2  #00000007
        :pswitch_5cb  #00000008
        :pswitch_5b8  #00000009
        :pswitch_59d  #0000000a
        :pswitch_586  #0000000b
        :pswitch_56f  #0000000c
        :pswitch_55c  #0000000d
        :pswitch_545  #0000000e
        :pswitch_532  #0000000f
        :pswitch_51b  #00000010
        :pswitch_50b  #00000011
        :pswitch_4f0  #00000012
        :pswitch_4e0  #00000013
        :pswitch_4cd  #00000014
        :pswitch_4c1  #00000015
        :pswitch_468  #00000016
        :pswitch_451  #00000017
        :pswitch_436  #00000018
        :pswitch_400  #00000019
        :pswitch_3d1  #0000001a
        :pswitch_381  #0000001b
        :pswitch_36a  #0000001c
        :pswitch_35a  #0000001d
        :pswitch_343  #0000001e
        :pswitch_32c  #0000001f
        :pswitch_31c  #00000020
        :pswitch_305  #00000021
        :pswitch_2f5  #00000022
        :pswitch_2da  #00000023
        :pswitch_2c3  #00000024
        :pswitch_2a0  #00000025
        :pswitch_285  #00000026
        :pswitch_26e  #00000027
        :pswitch_253  #00000028
        :pswitch_23c  #00000029
        :pswitch_221  #0000002a
        :pswitch_20a  #0000002b
        :pswitch_1e0  #0000002c
        :pswitch_1c1  #0000002d
        :pswitch_1a6  #0000002e
        :pswitch_18f  #0000002f
        :pswitch_178  #00000030
        :pswitch_161  #00000031
        :pswitch_14a  #00000032
        :pswitch_12f  #00000033
        :pswitch_114  #00000034
        :pswitch_f9  #00000035
        :pswitch_c2  #00000036
        :pswitch_97  #00000037
        :pswitch_84  #00000038
        :pswitch_78  #00000039
        :pswitch_61  #0000003a
        :pswitch_4e  #0000003b
        :pswitch_37  #0000003c
        :pswitch_24  #0000003d
    .end packed-switch
.end method
