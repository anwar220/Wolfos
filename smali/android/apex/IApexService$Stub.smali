# classes.dex

.class public abstract Landroid/apex/IApexService$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Landroid/apex/IApexService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/apex/IApexService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/apex/IApexService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_abortStagedSession:I = 0x9

.field static final TRANSACTION_calculateSizeForCompressedApex:I = 0x18

.field static final TRANSACTION_destroyCeSnapshots:I = 0xe

.field static final TRANSACTION_destroyCeSnapshotsNotSpecified:I = 0xf

.field static final TRANSACTION_destroyDeSnapshots:I = 0xd

.field static final TRANSACTION_getActivePackage:I = 0x11

.field static final TRANSACTION_getActivePackages:I = 0x7

.field static final TRANSACTION_getAllPackages:I = 0x8

.field static final TRANSACTION_getSessions:I = 0x4

.field static final TRANSACTION_getStagedApexInfos:I = 0x6

.field static final TRANSACTION_getStagedSessionInfo:I = 0x5

.field static final TRANSACTION_installAndActivatePackage:I = 0x1a

.field static final TRANSACTION_markBootCompleted:I = 0x17

.field static final TRANSACTION_markStagedSessionReady:I = 0x2

.field static final TRANSACTION_markStagedSessionSuccessful:I = 0x3

.field static final TRANSACTION_recollectDataApex:I = 0x16

.field static final TRANSACTION_recollectPreinstalledData:I = 0x15

.field static final TRANSACTION_remountPackages:I = 0x14

.field static final TRANSACTION_reserveSpaceForCompressedApex:I = 0x19

.field static final TRANSACTION_restoreCeData:I = 0xc

.field static final TRANSACTION_resumeRevertIfNeeded:I = 0x13

.field static final TRANSACTION_revertActiveSessions:I = 0xa

.field static final TRANSACTION_snapshotCeData:I = 0xb

.field static final TRANSACTION_stagePackages:I = 0x12

.field static final TRANSACTION_submitStagedSession:I = 0x1

.field static final TRANSACTION_unstagePackages:I = 0x10


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    sget-object v0, Landroid/apex/IApexService$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/apex/IApexService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/apex/IApexService;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    sget-object v0, Landroid/apex/IApexService$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/apex/IApexService;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Landroid/apex/IApexService;

    return-object v1

    :cond_14
    new-instance v1, Landroid/apex/IApexService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/apex/IApexService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-object v0, Landroid/apex/IApexService$Stub;->DESCRIPTOR:Ljava/lang/String;

    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    packed-switch p1, :pswitch_data_186

    packed-switch p1, :pswitch_data_18c

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :pswitch_18  #0x5f4e5446
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_1c  #0x1a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/apex/IApexService$Stub;->installAndActivatePackage(Ljava/lang/String;)Landroid/apex/ApexInfo;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_184

    :pswitch_2c  #0x19
    sget-object v2, Landroid/apex/CompressedApexInfoList;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/apex/CompressedApexInfoList;

    invoke-virtual {p0, v2}, Landroid/apex/IApexService$Stub;->reserveSpaceForCompressedApex(Landroid/apex/CompressedApexInfoList;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_184

    :pswitch_3c  #0x18
    sget-object v2, Landroid/apex/CompressedApexInfoList;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/apex/CompressedApexInfoList;

    invoke-virtual {p0, v2}, Landroid/apex/IApexService$Stub;->calculateSizeForCompressedApex(Landroid/apex/CompressedApexInfoList;)J

    move-result-wide v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_184

    :pswitch_50  #0x17
    invoke-virtual {p0}, Landroid/apex/IApexService$Stub;->markBootCompleted()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_184

    :pswitch_58  #0x16
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroid/apex/IApexService$Stub;->recollectDataApex(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_184

    :pswitch_68  #0x15
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/apex/IApexService$Stub;->recollectPreinstalledData(Ljava/util/List;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_184

    :pswitch_74  #0x14
    invoke-virtual {p0}, Landroid/apex/IApexService$Stub;->remountPackages()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_184

    :pswitch_7c  #0x13
    invoke-virtual {p0}, Landroid/apex/IApexService$Stub;->resumeRevertIfNeeded()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_184

    :pswitch_84  #0x12
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/apex/IApexService$Stub;->stagePackages(Ljava/util/List;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_184

    :pswitch_90  #0x11
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/apex/IApexService$Stub;->getActivePackage(Ljava/lang/String;)Landroid/apex/ApexInfo;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_184

    :pswitch_a0  #0x10
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/apex/IApexService$Stub;->unstagePackages(Ljava/util/List;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_184

    :pswitch_ac  #0xf
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroid/apex/IApexService$Stub;->destroyCeSnapshotsNotSpecified(I[I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_184

    :pswitch_bc  #0xe
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Landroid/apex/IApexService$Stub;->destroyCeSnapshots(II)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_184

    :pswitch_cc  #0xd
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/apex/IApexService$Stub;->destroyDeSnapshots(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_184

    :pswitch_d8  #0xc
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v2, v3, v4}, Landroid/apex/IApexService$Stub;->restoreCeData(IILjava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_184

    :pswitch_ec  #0xb
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v2, v3, v4}, Landroid/apex/IApexService$Stub;->snapshotCeData(IILjava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_184

    :pswitch_100  #0xa
    invoke-virtual {p0}, Landroid/apex/IApexService$Stub;->revertActiveSessions()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_184

    :pswitch_108  #0x9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/apex/IApexService$Stub;->abortStagedSession(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_184

    :pswitch_114  #0x8
    invoke-virtual {p0}, Landroid/apex/IApexService$Stub;->getAllPackages()[Landroid/apex/ApexInfo;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto :goto_184

    :pswitch_11f  #0x7
    invoke-virtual {p0}, Landroid/apex/IApexService$Stub;->getActivePackages()[Landroid/apex/ApexInfo;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto :goto_184

    :pswitch_12a  #0x6
    sget-object v2, Landroid/apex/ApexSessionParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/apex/ApexSessionParams;

    invoke-virtual {p0, v2}, Landroid/apex/IApexService$Stub;->getStagedApexInfos(Landroid/apex/ApexSessionParams;)[Landroid/apex/ApexInfo;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto :goto_184

    :pswitch_13d  #0x5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/apex/IApexService$Stub;->getStagedSessionInfo(I)Landroid/apex/ApexSessionInfo;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto :goto_184

    :pswitch_14c  #0x4
    invoke-virtual {p0}, Landroid/apex/IApexService$Stub;->getSessions()[Landroid/apex/ApexSessionInfo;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto :goto_184

    :pswitch_157  #0x3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/apex/IApexService$Stub;->markStagedSessionSuccessful(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_184

    :pswitch_162  #0x2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/apex/IApexService$Stub;->markStagedSessionReady(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_184

    :pswitch_16d  #0x1
    sget-object v2, Landroid/apex/ApexSessionParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/apex/ApexSessionParams;

    new-instance v3, Landroid/apex/ApexInfoList;

    invoke-direct {v3}, Landroid/apex/ApexInfoList;-><init>()V

    invoke-virtual {p0, v2, v3}, Landroid/apex/IApexService$Stub;->submitStagedSession(Landroid/apex/ApexSessionParams;Landroid/apex/ApexInfoList;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    nop

    :goto_184
    return v1

    nop

    :pswitch_data_186
    .packed-switch 0x5f4e5446
        :pswitch_18  #5f4e5446
    .end packed-switch

    :pswitch_data_18c
    .packed-switch 0x1
        :pswitch_16d  #00000001
        :pswitch_162  #00000002
        :pswitch_157  #00000003
        :pswitch_14c  #00000004
        :pswitch_13d  #00000005
        :pswitch_12a  #00000006
        :pswitch_11f  #00000007
        :pswitch_114  #00000008
        :pswitch_108  #00000009
        :pswitch_100  #0000000a
        :pswitch_ec  #0000000b
        :pswitch_d8  #0000000c
        :pswitch_cc  #0000000d
        :pswitch_bc  #0000000e
        :pswitch_ac  #0000000f
        :pswitch_a0  #00000010
        :pswitch_90  #00000011
        :pswitch_84  #00000012
        :pswitch_7c  #00000013
        :pswitch_74  #00000014
        :pswitch_68  #00000015
        :pswitch_58  #00000016
        :pswitch_50  #00000017
        :pswitch_3c  #00000018
        :pswitch_2c  #00000019
        :pswitch_1c  #0000001a
    .end packed-switch
.end method
