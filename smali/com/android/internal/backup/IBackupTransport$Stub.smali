# classes4.dex

.class public abstract Lcom/android/internal/backup/IBackupTransport$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/android/internal/backup/IBackupTransport;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/backup/IBackupTransport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/backup/IBackupTransport$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.backup.IBackupTransport"

.field static final TRANSACTION_abortFullRestore:I = 0x1a

.field static final TRANSACTION_cancelFullBackup:I = 0x16

.field static final TRANSACTION_checkFullBackupSize:I = 0x14

.field static final TRANSACTION_clearBackupData:I = 0xa

.field static final TRANSACTION_configurationIntent:I = 0x2

.field static final TRANSACTION_currentDestinationString:I = 0x3

.field static final TRANSACTION_dataManagementIntent:I = 0x4

.field static final TRANSACTION_dataManagementIntentLabel:I = 0x5

.field static final TRANSACTION_finishBackup:I = 0xb

.field static final TRANSACTION_finishRestore:I = 0x11

.field static final TRANSACTION_getAvailableRestoreSets:I = 0xc

.field static final TRANSACTION_getBackupQuota:I = 0x18

.field static final TRANSACTION_getCurrentRestoreSet:I = 0xd

.field static final TRANSACTION_getNextFullRestoreDataChunk:I = 0x19

.field static final TRANSACTION_getRestoreData:I = 0x10

.field static final TRANSACTION_getTransportFlags:I = 0x1b

.field static final TRANSACTION_initializeDevice:I = 0x8

.field static final TRANSACTION_isAppEligibleForBackup:I = 0x17

.field static final TRANSACTION_name:I = 0x1

.field static final TRANSACTION_nextRestorePackage:I = 0xf

.field static final TRANSACTION_performBackup:I = 0x9

.field static final TRANSACTION_performFullBackup:I = 0x13

.field static final TRANSACTION_requestBackupTime:I = 0x7

.field static final TRANSACTION_requestFullBackupTime:I = 0x12

.field static final TRANSACTION_sendBackupData:I = 0x15

.field static final TRANSACTION_startRestore:I = 0xe

.field static final TRANSACTION_transportDirName:I = 0x6


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.android.internal.backup.IBackupTransport"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/backup/IBackupTransport$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/backup/IBackupTransport;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "com.android.internal.backup.IBackupTransport"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/internal/backup/IBackupTransport;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Lcom/android/internal/backup/IBackupTransport;

    return-object v1

    :cond_14
    new-instance v1, Lcom/android/internal/backup/IBackupTransport$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/backup/IBackupTransport$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_60

    const/4 v0, 0x0

    return-object v0

    :pswitch_5  #0x1b
    const-string v0, "getTransportFlags"

    return-object v0

    :pswitch_8  #0x1a
    const-string v0, "abortFullRestore"

    return-object v0

    :pswitch_b  #0x19
    const-string v0, "getNextFullRestoreDataChunk"

    return-object v0

    :pswitch_e  #0x18
    const-string v0, "getBackupQuota"

    return-object v0

    :pswitch_11  #0x17
    const-string v0, "isAppEligibleForBackup"

    return-object v0

    :pswitch_14  #0x16
    const-string v0, "cancelFullBackup"

    return-object v0

    :pswitch_17  #0x15
    const-string/jumbo v0, "sendBackupData"

    return-object v0

    :pswitch_1b  #0x14
    const-string v0, "checkFullBackupSize"

    return-object v0

    :pswitch_1e  #0x13
    const-string/jumbo v0, "performFullBackup"

    return-object v0

    :pswitch_22  #0x12
    const-string/jumbo v0, "requestFullBackupTime"

    return-object v0

    :pswitch_26  #0x11
    const-string v0, "finishRestore"

    return-object v0

    :pswitch_29  #0x10
    const-string v0, "getRestoreData"

    return-object v0

    :pswitch_2c  #0xf
    const-string/jumbo v0, "nextRestorePackage"

    return-object v0

    :pswitch_30  #0xe
    const-string/jumbo v0, "startRestore"

    return-object v0

    :pswitch_34  #0xd
    const-string v0, "getCurrentRestoreSet"

    return-object v0

    :pswitch_37  #0xc
    const-string v0, "getAvailableRestoreSets"

    return-object v0

    :pswitch_3a  #0xb
    const-string v0, "finishBackup"

    return-object v0

    :pswitch_3d  #0xa
    const-string v0, "clearBackupData"

    return-object v0

    :pswitch_40  #0x9
    const-string/jumbo v0, "performBackup"

    return-object v0

    :pswitch_44  #0x8
    const-string v0, "initializeDevice"

    return-object v0

    :pswitch_47  #0x7
    const-string/jumbo v0, "requestBackupTime"

    return-object v0

    :pswitch_4b  #0x6
    const-string/jumbo v0, "transportDirName"

    return-object v0

    :pswitch_4f  #0x5
    const-string v0, "dataManagementIntentLabel"

    return-object v0

    :pswitch_52  #0x4
    const-string v0, "dataManagementIntent"

    return-object v0

    :pswitch_55  #0x3
    const-string v0, "currentDestinationString"

    return-object v0

    :pswitch_58  #0x2
    const-string v0, "configurationIntent"

    return-object v0

    :pswitch_5b  #0x1
    const-string/jumbo v0, "name"

    return-object v0

    nop

    :pswitch_data_60
    .packed-switch 0x1
        :pswitch_5b  #00000001
        :pswitch_58  #00000002
        :pswitch_55  #00000003
        :pswitch_52  #00000004
        :pswitch_4f  #00000005
        :pswitch_4b  #00000006
        :pswitch_47  #00000007
        :pswitch_44  #00000008
        :pswitch_40  #00000009
        :pswitch_3d  #0000000a
        :pswitch_3a  #0000000b
        :pswitch_37  #0000000c
        :pswitch_34  #0000000d
        :pswitch_30  #0000000e
        :pswitch_2c  #0000000f
        :pswitch_29  #00000010
        :pswitch_26  #00000011
        :pswitch_22  #00000012
        :pswitch_1e  #00000013
        :pswitch_1b  #00000014
        :pswitch_17  #00000015
        :pswitch_14  #00000016
        :pswitch_11  #00000017
        :pswitch_e  #00000018
        :pswitch_b  #00000019
        :pswitch_8  #0000001a
        :pswitch_5  #0000001b
    .end packed-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    const/16 v0, 0x1a

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3

    invoke-static {p1}, Lcom/android/internal/backup/IBackupTransport$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "com.android.internal.backup.IBackupTransport"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    packed-switch p1, :pswitch_data_22e

    packed-switch p1, :pswitch_data_234

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :pswitch_18  #0x5f4e5446
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_1c  #0x1b
    sget-object v2, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/infra/AndroidFuture;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/backup/IBackupTransport$Stub;->getTransportFlags(Lcom/android/internal/infra/AndroidFuture;)V

    goto/16 :goto_22c

    :pswitch_2c  #0x1a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/backup/ITransportStatusCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/backup/ITransportStatusCallback;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/backup/IBackupTransport$Stub;->abortFullRestore(Lcom/android/internal/backup/ITransportStatusCallback;)V

    goto/16 :goto_22c

    :pswitch_3c  #0x19
    sget-object v2, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/backup/ITransportStatusCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/backup/ITransportStatusCallback;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/backup/IBackupTransport$Stub;->getNextFullRestoreDataChunk(Landroid/os/ParcelFileDescriptor;Lcom/android/internal/backup/ITransportStatusCallback;)V

    goto/16 :goto_22c

    :pswitch_54  #0x18
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    sget-object v4, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/infra/AndroidFuture;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/backup/IBackupTransport$Stub;->getBackupQuota(Ljava/lang/String;ZLcom/android/internal/infra/AndroidFuture;)V

    goto/16 :goto_22c

    :pswitch_6c  #0x17
    sget-object v2, Landroid/content/pm/PackageInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    sget-object v4, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/infra/AndroidFuture;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/backup/IBackupTransport$Stub;->isAppEligibleForBackup(Landroid/content/pm/PackageInfo;ZLcom/android/internal/infra/AndroidFuture;)V

    goto/16 :goto_22c

    :pswitch_88  #0x16
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/backup/ITransportStatusCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/backup/ITransportStatusCallback;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/backup/IBackupTransport$Stub;->cancelFullBackup(Lcom/android/internal/backup/ITransportStatusCallback;)V

    goto/16 :goto_22c

    :pswitch_98  #0x15
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/backup/ITransportStatusCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/backup/ITransportStatusCallback;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/backup/IBackupTransport$Stub;->sendBackupData(ILcom/android/internal/backup/ITransportStatusCallback;)V

    goto/16 :goto_22c

    :pswitch_ac  #0x14
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/backup/ITransportStatusCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/backup/ITransportStatusCallback;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/backup/IBackupTransport$Stub;->checkFullBackupSize(JLcom/android/internal/backup/ITransportStatusCallback;)V

    goto/16 :goto_22c

    :pswitch_c0  #0x13
    sget-object v2, Landroid/content/pm/PackageInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    sget-object v3, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/backup/ITransportStatusCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/backup/ITransportStatusCallback;

    move-result-object v5

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/internal/backup/IBackupTransport$Stub;->performFullBackup(Landroid/content/pm/PackageInfo;Landroid/os/ParcelFileDescriptor;ILcom/android/internal/backup/ITransportStatusCallback;)V

    goto/16 :goto_22c

    :pswitch_e4  #0x12
    sget-object v2, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/infra/AndroidFuture;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/backup/IBackupTransport$Stub;->requestFullBackupTime(Lcom/android/internal/infra/AndroidFuture;)V

    goto/16 :goto_22c

    :pswitch_f4  #0x11
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/backup/ITransportStatusCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/backup/ITransportStatusCallback;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/backup/IBackupTransport$Stub;->finishRestore(Lcom/android/internal/backup/ITransportStatusCallback;)V

    goto/16 :goto_22c

    :pswitch_104  #0x10
    sget-object v2, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/backup/ITransportStatusCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/backup/ITransportStatusCallback;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/backup/IBackupTransport$Stub;->getRestoreData(Landroid/os/ParcelFileDescriptor;Lcom/android/internal/backup/ITransportStatusCallback;)V

    goto/16 :goto_22c

    :pswitch_11c  #0xf
    sget-object v2, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/infra/AndroidFuture;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/backup/IBackupTransport$Stub;->nextRestorePackage(Lcom/android/internal/infra/AndroidFuture;)V

    goto/16 :goto_22c

    :pswitch_12c  #0xe
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    sget-object v4, Landroid/content/pm/PackageInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/content/pm/PackageInfo;

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/backup/ITransportStatusCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/backup/ITransportStatusCallback;

    move-result-object v5

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/internal/backup/IBackupTransport$Stub;->startRestore(J[Landroid/content/pm/PackageInfo;Lcom/android/internal/backup/ITransportStatusCallback;)V

    goto/16 :goto_22c

    :pswitch_148  #0xd
    sget-object v2, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/infra/AndroidFuture;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/backup/IBackupTransport$Stub;->getCurrentRestoreSet(Lcom/android/internal/infra/AndroidFuture;)V

    goto/16 :goto_22c

    :pswitch_158  #0xc
    sget-object v2, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/infra/AndroidFuture;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/backup/IBackupTransport$Stub;->getAvailableRestoreSets(Lcom/android/internal/infra/AndroidFuture;)V

    goto/16 :goto_22c

    :pswitch_168  #0xb
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/backup/ITransportStatusCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/backup/ITransportStatusCallback;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/backup/IBackupTransport$Stub;->finishBackup(Lcom/android/internal/backup/ITransportStatusCallback;)V

    goto/16 :goto_22c

    :pswitch_178  #0xa
    sget-object v2, Landroid/content/pm/PackageInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/backup/ITransportStatusCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/backup/ITransportStatusCallback;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/backup/IBackupTransport$Stub;->clearBackupData(Landroid/content/pm/PackageInfo;Lcom/android/internal/backup/ITransportStatusCallback;)V

    goto/16 :goto_22c

    :pswitch_190  #0x9
    sget-object v2, Landroid/content/pm/PackageInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    sget-object v3, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/backup/ITransportStatusCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/backup/ITransportStatusCallback;

    move-result-object v5

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/internal/backup/IBackupTransport$Stub;->performBackup(Landroid/content/pm/PackageInfo;Landroid/os/ParcelFileDescriptor;ILcom/android/internal/backup/ITransportStatusCallback;)V

    goto/16 :goto_22c

    :pswitch_1b4  #0x8
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/backup/ITransportStatusCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/backup/ITransportStatusCallback;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/backup/IBackupTransport$Stub;->initializeDevice(Lcom/android/internal/backup/ITransportStatusCallback;)V

    goto :goto_22c

    :pswitch_1c3  #0x7
    sget-object v2, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/infra/AndroidFuture;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/backup/IBackupTransport$Stub;->requestBackupTime(Lcom/android/internal/infra/AndroidFuture;)V

    goto :goto_22c

    :pswitch_1d2  #0x6
    sget-object v2, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/infra/AndroidFuture;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/backup/IBackupTransport$Stub;->transportDirName(Lcom/android/internal/infra/AndroidFuture;)V

    goto :goto_22c

    :pswitch_1e1  #0x5
    sget-object v2, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/infra/AndroidFuture;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/backup/IBackupTransport$Stub;->dataManagementIntentLabel(Lcom/android/internal/infra/AndroidFuture;)V

    goto :goto_22c

    :pswitch_1f0  #0x4
    sget-object v2, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/infra/AndroidFuture;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/backup/IBackupTransport$Stub;->dataManagementIntent(Lcom/android/internal/infra/AndroidFuture;)V

    goto :goto_22c

    :pswitch_1ff  #0x3
    sget-object v2, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/infra/AndroidFuture;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/backup/IBackupTransport$Stub;->currentDestinationString(Lcom/android/internal/infra/AndroidFuture;)V

    goto :goto_22c

    :pswitch_20e  #0x2
    sget-object v2, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/infra/AndroidFuture;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/backup/IBackupTransport$Stub;->configurationIntent(Lcom/android/internal/infra/AndroidFuture;)V

    goto :goto_22c

    :pswitch_21d  #0x1
    sget-object v2, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/infra/AndroidFuture;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/backup/IBackupTransport$Stub;->name(Lcom/android/internal/infra/AndroidFuture;)V

    nop

    :goto_22c
    return v1

    nop

    :pswitch_data_22e
    .packed-switch 0x5f4e5446
        :pswitch_18  #5f4e5446
    .end packed-switch

    :pswitch_data_234
    .packed-switch 0x1
        :pswitch_21d  #00000001
        :pswitch_20e  #00000002
        :pswitch_1ff  #00000003
        :pswitch_1f0  #00000004
        :pswitch_1e1  #00000005
        :pswitch_1d2  #00000006
        :pswitch_1c3  #00000007
        :pswitch_1b4  #00000008
        :pswitch_190  #00000009
        :pswitch_178  #0000000a
        :pswitch_168  #0000000b
        :pswitch_158  #0000000c
        :pswitch_148  #0000000d
        :pswitch_12c  #0000000e
        :pswitch_11c  #0000000f
        :pswitch_104  #00000010
        :pswitch_f4  #00000011
        :pswitch_e4  #00000012
        :pswitch_c0  #00000013
        :pswitch_ac  #00000014
        :pswitch_98  #00000015
        :pswitch_88  #00000016
        :pswitch_6c  #00000017
        :pswitch_54  #00000018
        :pswitch_3c  #00000019
        :pswitch_2c  #0000001a
        :pswitch_1c  #0000001b
    .end packed-switch
.end method
