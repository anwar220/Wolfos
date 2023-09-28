# classes3.dex

.class public abstract Landroid/permission/IPermissionController$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Landroid/permission/IPermissionController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/permission/IPermissionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/permission/IPermissionController$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_applyStagedRuntimePermissionBackup:I = 0x4

.field static final TRANSACTION_countPermissionApps:I = 0x7

.field static final TRANSACTION_getAppPermissions:I = 0x5

.field static final TRANSACTION_getGroupOfPlatformPermission:I = 0xf

.field static final TRANSACTION_getHibernationEligibility:I = 0x11

.field static final TRANSACTION_getPermissionUsages:I = 0x8

.field static final TRANSACTION_getPlatformPermissionsForGroup:I = 0xe

.field static final TRANSACTION_getPrivilegesDescriptionStringForProfile:I = 0xd

.field static final TRANSACTION_getRuntimePermissionBackup:I = 0x2

.field static final TRANSACTION_getUnusedAppCount:I = 0x10

.field static final TRANSACTION_grantOrUpgradeDefaultRuntimePermissions:I = 0xa

.field static final TRANSACTION_notifyOneTimePermissionSessionTimeout:I = 0xb

.field static final TRANSACTION_revokeRuntimePermission:I = 0x6

.field static final TRANSACTION_revokeRuntimePermissions:I = 0x1

.field static final TRANSACTION_revokeSelfPermissionsOnKill:I = 0x12

.field static final TRANSACTION_setRuntimePermissionGrantStateByDeviceAdminFromParams:I = 0x9

.field static final TRANSACTION_stageAndApplyRuntimePermissionsBackup:I = 0x3

.field static final TRANSACTION_updateUserSensitiveForApp:I = 0xc


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.permission.IPermissionController"

    invoke-virtual {p0, p0, v0}, Landroid/permission/IPermissionController$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/permission/IPermissionController;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "android.permission.IPermissionController"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/permission/IPermissionController;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Landroid/permission/IPermissionController;

    return-object v1

    :cond_14
    new-instance v1, Landroid/permission/IPermissionController$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/permission/IPermissionController$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_42

    const/4 v0, 0x0

    return-object v0

    :pswitch_5  #0x12
    const-string/jumbo v0, "revokeSelfPermissionsOnKill"

    return-object v0

    :pswitch_9  #0x11
    const-string v0, "getHibernationEligibility"

    return-object v0

    :pswitch_c  #0x10
    const-string v0, "getUnusedAppCount"

    return-object v0

    :pswitch_f  #0xf
    const-string v0, "getGroupOfPlatformPermission"

    return-object v0

    :pswitch_12  #0xe
    const-string v0, "getPlatformPermissionsForGroup"

    return-object v0

    :pswitch_15  #0xd
    const-string v0, "getPrivilegesDescriptionStringForProfile"

    return-object v0

    :pswitch_18  #0xc
    const-string/jumbo v0, "updateUserSensitiveForApp"

    return-object v0

    :pswitch_1c  #0xb
    const-string/jumbo v0, "notifyOneTimePermissionSessionTimeout"

    return-object v0

    :pswitch_20  #0xa
    const-string v0, "grantOrUpgradeDefaultRuntimePermissions"

    return-object v0

    :pswitch_23  #0x9
    const-string/jumbo v0, "setRuntimePermissionGrantStateByDeviceAdminFromParams"

    return-object v0

    :pswitch_27  #0x8
    const-string v0, "getPermissionUsages"

    return-object v0

    :pswitch_2a  #0x7
    const-string v0, "countPermissionApps"

    return-object v0

    :pswitch_2d  #0x6
    const-string/jumbo v0, "revokeRuntimePermission"

    return-object v0

    :pswitch_31  #0x5
    const-string v0, "getAppPermissions"

    return-object v0

    :pswitch_34  #0x4
    const-string v0, "applyStagedRuntimePermissionBackup"

    return-object v0

    :pswitch_37  #0x3
    const-string/jumbo v0, "stageAndApplyRuntimePermissionsBackup"

    return-object v0

    :pswitch_3b  #0x2
    const-string v0, "getRuntimePermissionBackup"

    return-object v0

    :pswitch_3e  #0x1
    const-string/jumbo v0, "revokeRuntimePermissions"

    return-object v0

    :pswitch_data_42
    .packed-switch 0x1
        :pswitch_3e  #00000001
        :pswitch_3b  #00000002
        :pswitch_37  #00000003
        :pswitch_34  #00000004
        :pswitch_31  #00000005
        :pswitch_2d  #00000006
        :pswitch_2a  #00000007
        :pswitch_27  #00000008
        :pswitch_23  #00000009
        :pswitch_20  #0000000a
        :pswitch_1c  #0000000b
        :pswitch_18  #0000000c
        :pswitch_15  #0000000d
        :pswitch_12  #0000000e
        :pswitch_f  #0000000f
        :pswitch_c  #00000010
        :pswitch_9  #00000011
        :pswitch_5  #00000012
    .end packed-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    const/16 v0, 0x11

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3

    invoke-static {p1}, Landroid/permission/IPermissionController$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    const-string v9, "android.permission.IPermissionController"

    const/4 v10, 0x1

    if-lt v7, v10, :cond_13

    const v0, 0xffffff

    if-gt v7, v0, :cond_13

    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_13
    packed-switch v7, :pswitch_data_1b6

    move-object/from16 v11, p3

    packed-switch v7, :pswitch_data_1bc

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :pswitch_20  #0x5f4e5446
    move-object/from16 v11, p3

    invoke-virtual {v11, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v10

    :pswitch_26  #0x12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    sget-object v2, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/infra/AndroidFuture;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1, v2}, Landroid/permission/IPermissionController$Stub;->revokeSelfPermissionsOnKill(Ljava/lang/String;Ljava/util/List;Lcom/android/internal/infra/AndroidFuture;)V

    goto/16 :goto_1b5

    :pswitch_3e  #0x11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/infra/AndroidFuture;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1}, Landroid/permission/IPermissionController$Stub;->getHibernationEligibility(Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V

    goto/16 :goto_1b5

    :pswitch_52  #0x10
    sget-object v0, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/infra/AndroidFuture;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Landroid/permission/IPermissionController$Stub;->getUnusedAppCount(Lcom/android/internal/infra/AndroidFuture;)V

    goto/16 :goto_1b5

    :pswitch_62  #0xf
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/infra/AndroidFuture;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1}, Landroid/permission/IPermissionController$Stub;->getGroupOfPlatformPermission(Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V

    goto/16 :goto_1b5

    :pswitch_76  #0xe
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/infra/AndroidFuture;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1}, Landroid/permission/IPermissionController$Stub;->getPlatformPermissionsForGroup(Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V

    goto/16 :goto_1b5

    :pswitch_8a  #0xd
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/infra/AndroidFuture;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1}, Landroid/permission/IPermissionController$Stub;->getPrivilegesDescriptionStringForProfile(Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V

    goto/16 :goto_1b5

    :pswitch_9e  #0xc
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    sget-object v1, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/infra/AndroidFuture;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1}, Landroid/permission/IPermissionController$Stub;->updateUserSensitiveForApp(ILcom/android/internal/infra/AndroidFuture;)V

    goto/16 :goto_1b5

    :pswitch_b2  #0xb
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Landroid/permission/IPermissionController$Stub;->notifyOneTimePermissionSessionTimeout(Ljava/lang/String;)V

    goto/16 :goto_1b5

    :pswitch_be  #0xa
    sget-object v0, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/infra/AndroidFuture;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Landroid/permission/IPermissionController$Stub;->grantOrUpgradeDefaultRuntimePermissions(Lcom/android/internal/infra/AndroidFuture;)V

    goto/16 :goto_1b5

    :pswitch_ce  #0x9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/permission/AdminPermissionControlParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/permission/AdminPermissionControlParams;

    sget-object v2, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/infra/AndroidFuture;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1, v2}, Landroid/permission/IPermissionController$Stub;->setRuntimePermissionGrantStateByDeviceAdminFromParams(Ljava/lang/String;Landroid/permission/AdminPermissionControlParams;Lcom/android/internal/infra/AndroidFuture;)V

    goto/16 :goto_1b5

    :pswitch_ea  #0x8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    sget-object v3, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/infra/AndroidFuture;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/permission/IPermissionController$Stub;->getPermissionUsages(ZJLcom/android/internal/infra/AndroidFuture;)V

    goto/16 :goto_1b5

    :pswitch_102  #0x7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    sget-object v2, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/infra/AndroidFuture;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1, v2}, Landroid/permission/IPermissionController$Stub;->countPermissionApps(Ljava/util/List;ILcom/android/internal/infra/AndroidFuture;)V

    goto/16 :goto_1b5

    :pswitch_11a  #0x6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1}, Landroid/permission/IPermissionController$Stub;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1b5

    :pswitch_12a  #0x5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/infra/AndroidFuture;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1}, Landroid/permission/IPermissionController$Stub;->getAppPermissions(Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V

    goto/16 :goto_1b5

    :pswitch_13e  #0x4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserHandle;

    sget-object v2, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/infra/AndroidFuture;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1, v2}, Landroid/permission/IPermissionController$Stub;->applyStagedRuntimePermissionBackup(Ljava/lang/String;Landroid/os/UserHandle;Lcom/android/internal/infra/AndroidFuture;)V

    goto :goto_1b5

    :pswitch_159  #0x3
    sget-object v0, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    sget-object v1, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelFileDescriptor;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1}, Landroid/permission/IPermissionController$Stub;->stageAndApplyRuntimePermissionsBackup(Landroid/os/UserHandle;Landroid/os/ParcelFileDescriptor;)V

    goto :goto_1b5

    :pswitch_170  #0x2
    sget-object v0, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    sget-object v1, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelFileDescriptor;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1}, Landroid/permission/IPermissionController$Stub;->getRuntimePermissionBackup(Landroid/os/UserHandle;Landroid/os/ParcelFileDescriptor;)V

    goto :goto_1b5

    :pswitch_187  #0x1
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/os/Bundle;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    sget-object v0, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Lcom/android/internal/infra/AndroidFuture;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move-object v1, v12

    move v2, v13

    move v3, v14

    move-object v4, v15

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/permission/IPermissionController$Stub;->revokeRuntimePermissions(Landroid/os/Bundle;ZILjava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V

    nop

    :goto_1b5
    return v10

    :pswitch_data_1b6
    .packed-switch 0x5f4e5446
        :pswitch_20  #5f4e5446
    .end packed-switch

    :pswitch_data_1bc
    .packed-switch 0x1
        :pswitch_187  #00000001
        :pswitch_170  #00000002
        :pswitch_159  #00000003
        :pswitch_13e  #00000004
        :pswitch_12a  #00000005
        :pswitch_11a  #00000006
        :pswitch_102  #00000007
        :pswitch_ea  #00000008
        :pswitch_ce  #00000009
        :pswitch_be  #0000000a
        :pswitch_b2  #0000000b
        :pswitch_9e  #0000000c
        :pswitch_8a  #0000000d
        :pswitch_76  #0000000e
        :pswitch_62  #0000000f
        :pswitch_52  #00000010
        :pswitch_3e  #00000011
        :pswitch_26  #00000012
    .end packed-switch
.end method
