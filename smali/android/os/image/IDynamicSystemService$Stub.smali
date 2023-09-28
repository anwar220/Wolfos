# classes3.dex

.class public abstract Landroid/os/image/IDynamicSystemService$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Landroid/os/image/IDynamicSystemService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/image/IDynamicSystemService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/image/IDynamicSystemService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_abort:I = 0x6

.field static final TRANSACTION_closePartition:I = 0x3

.field static final TRANSACTION_createPartition:I = 0x2

.field static final TRANSACTION_finishInstallation:I = 0x4

.field static final TRANSACTION_getAvbPublicKey:I = 0xe

.field static final TRANSACTION_getInstallationProgress:I = 0x5

.field static final TRANSACTION_isEnabled:I = 0x9

.field static final TRANSACTION_isInUse:I = 0x7

.field static final TRANSACTION_isInstalled:I = 0x8

.field static final TRANSACTION_remove:I = 0xa

.field static final TRANSACTION_setAshmem:I = 0xc

.field static final TRANSACTION_setEnable:I = 0xb

.field static final TRANSACTION_startInstallation:I = 0x1

.field static final TRANSACTION_submitFromAshmem:I = 0xd

.field static final TRANSACTION_suggestScratchSize:I = 0xf


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.os.image.IDynamicSystemService"

    invoke-virtual {p0, p0, v0}, Landroid/os/image/IDynamicSystemService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/image/IDynamicSystemService;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "android.os.image.IDynamicSystemService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/os/image/IDynamicSystemService;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Landroid/os/image/IDynamicSystemService;

    return-object v1

    :cond_14
    new-instance v1, Landroid/os/image/IDynamicSystemService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/image/IDynamicSystemService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_3c

    const/4 v0, 0x0

    return-object v0

    :pswitch_5  #0xf
    const-string/jumbo v0, "suggestScratchSize"

    return-object v0

    :pswitch_9  #0xe
    const-string v0, "getAvbPublicKey"

    return-object v0

    :pswitch_c  #0xd
    const-string/jumbo v0, "submitFromAshmem"

    return-object v0

    :pswitch_10  #0xc
    const-string/jumbo v0, "setAshmem"

    return-object v0

    :pswitch_14  #0xb
    const-string/jumbo v0, "setEnable"

    return-object v0

    :pswitch_18  #0xa
    const-string/jumbo v0, "remove"

    return-object v0

    :pswitch_1c  #0x9
    const-string/jumbo v0, "isEnabled"

    return-object v0

    :pswitch_20  #0x8
    const-string/jumbo v0, "isInstalled"

    return-object v0

    :pswitch_24  #0x7
    const-string/jumbo v0, "isInUse"

    return-object v0

    :pswitch_28  #0x6
    const-string v0, "abort"

    return-object v0

    :pswitch_2b  #0x5
    const-string v0, "getInstallationProgress"

    return-object v0

    :pswitch_2e  #0x4
    const-string v0, "finishInstallation"

    return-object v0

    :pswitch_31  #0x3
    const-string v0, "closePartition"

    return-object v0

    :pswitch_34  #0x2
    const-string v0, "createPartition"

    return-object v0

    :pswitch_37  #0x1
    const-string/jumbo v0, "startInstallation"

    return-object v0

    nop

    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_37  #00000001
        :pswitch_34  #00000002
        :pswitch_31  #00000003
        :pswitch_2e  #00000004
        :pswitch_2b  #00000005
        :pswitch_28  #00000006
        :pswitch_24  #00000007
        :pswitch_20  #00000008
        :pswitch_1c  #00000009
        :pswitch_18  #0000000a
        :pswitch_14  #0000000b
        :pswitch_10  #0000000c
        :pswitch_c  #0000000d
        :pswitch_9  #0000000e
        :pswitch_5  #0000000f
    .end packed-switch
.end method

.method private permissionCheckerWrapper(Ljava/lang/String;ILandroid/content/AttributionSource;)Z
    .registers 6

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, p1, p2, p3, v1}, Landroid/content/PermissionChecker;->checkPermissionForDataDelivery(Landroid/content/Context;Ljava/lang/String;ILandroid/content/AttributionSource;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_12

    const/4 v1, 0x1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    return v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    const/16 v0, 0xe

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3

    invoke-static {p1}, Landroid/os/image/IDynamicSystemService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const-string v4, "android.os.image.IDynamicSystemService"

    const/4 v5, 0x1

    if-lt v1, v5, :cond_15

    const v6, 0xffffff

    if-gt v1, v6, :cond_15

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_15
    packed-switch v1, :pswitch_data_262

    const-string v6, "Access denied, requires: android.Manifest.permission.MANAGE_DYNAMIC_SYSTEM"

    const-string v7, "android.permission.MANAGE_DYNAMIC_SYSTEM"

    const/4 v8, 0x0

    packed-switch v1, :pswitch_data_268

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    return v5

    :pswitch_25  #0x5f4e5446
    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v5

    :pswitch_29  #0xf
    invoke-static {}, Landroid/os/image/IDynamicSystemService$Stub;->getCallingPid()I

    move-result v9

    new-instance v10, Landroid/content/AttributionSource;

    invoke-static {}, Landroid/os/image/IDynamicSystemService$Stub;->getCallingUid()I

    move-result v11

    invoke-direct {v10, v11, v8, v8}, Landroid/content/AttributionSource;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v7, v9, v10}, Landroid/os/image/IDynamicSystemService$Stub;->permissionCheckerWrapper(Ljava/lang/String;ILandroid/content/AttributionSource;)Z

    move-result v7

    if-ne v7, v5, :cond_48

    invoke-virtual/range {p0 .. p0}, Landroid/os/image/IDynamicSystemService$Stub;->suggestScratchSize()J

    move-result-wide v6

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v3, v6, v7}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_25b

    :cond_48
    new-instance v5, Ljava/lang/SecurityException;

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    :pswitch_4e  #0xe
    new-instance v9, Landroid/gsi/AvbPublicKey;

    invoke-direct {v9}, Landroid/gsi/AvbPublicKey;-><init>()V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-static {}, Landroid/os/image/IDynamicSystemService$Stub;->getCallingPid()I

    move-result v10

    new-instance v11, Landroid/content/AttributionSource;

    invoke-static {}, Landroid/os/image/IDynamicSystemService$Stub;->getCallingUid()I

    move-result v12

    invoke-direct {v11, v12, v8, v8}, Landroid/content/AttributionSource;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v7, v10, v11}, Landroid/os/image/IDynamicSystemService$Stub;->permissionCheckerWrapper(Ljava/lang/String;ILandroid/content/AttributionSource;)Z

    move-result v7

    if-ne v7, v5, :cond_78

    invoke-virtual {v0, v9}, Landroid/os/image/IDynamicSystemService$Stub;->getAvbPublicKey(Landroid/gsi/AvbPublicKey;)Z

    move-result v6

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v3, v6}, Landroid/os/Parcel;->writeBoolean(Z)V

    invoke-virtual {v3, v9, v5}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_25b

    :cond_78
    new-instance v5, Ljava/lang/SecurityException;

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    :pswitch_7e  #0xd
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-static {}, Landroid/os/image/IDynamicSystemService$Stub;->getCallingPid()I

    move-result v11

    new-instance v12, Landroid/content/AttributionSource;

    invoke-static {}, Landroid/os/image/IDynamicSystemService$Stub;->getCallingUid()I

    move-result v13

    invoke-direct {v12, v13, v8, v8}, Landroid/content/AttributionSource;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v7, v11, v12}, Landroid/os/image/IDynamicSystemService$Stub;->permissionCheckerWrapper(Ljava/lang/String;ILandroid/content/AttributionSource;)Z

    move-result v7

    if-ne v7, v5, :cond_a4

    invoke-virtual {v0, v9, v10}, Landroid/os/image/IDynamicSystemService$Stub;->submitFromAshmem(J)Z

    move-result v6

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v3, v6}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_25b

    :cond_a4
    new-instance v5, Ljava/lang/SecurityException;

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    :pswitch_aa  #0xc
    sget-object v9, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v9}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/ParcelFileDescriptor;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-static {}, Landroid/os/image/IDynamicSystemService$Stub;->getCallingPid()I

    move-result v12

    new-instance v13, Landroid/content/AttributionSource;

    invoke-static {}, Landroid/os/image/IDynamicSystemService$Stub;->getCallingUid()I

    move-result v14

    invoke-direct {v13, v14, v8, v8}, Landroid/content/AttributionSource;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v7, v12, v13}, Landroid/os/image/IDynamicSystemService$Stub;->permissionCheckerWrapper(Ljava/lang/String;ILandroid/content/AttributionSource;)Z

    move-result v7

    if-ne v7, v5, :cond_d8

    invoke-virtual {v0, v9, v10, v11}, Landroid/os/image/IDynamicSystemService$Stub;->setAshmem(Landroid/os/ParcelFileDescriptor;J)Z

    move-result v6

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v3, v6}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_25b

    :cond_d8
    new-instance v5, Ljava/lang/SecurityException;

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    :pswitch_de  #0xb
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-static {}, Landroid/os/image/IDynamicSystemService$Stub;->getCallingPid()I

    move-result v11

    new-instance v12, Landroid/content/AttributionSource;

    invoke-static {}, Landroid/os/image/IDynamicSystemService$Stub;->getCallingUid()I

    move-result v13

    invoke-direct {v12, v13, v8, v8}, Landroid/content/AttributionSource;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v7, v11, v12}, Landroid/os/image/IDynamicSystemService$Stub;->permissionCheckerWrapper(Ljava/lang/String;ILandroid/content/AttributionSource;)Z

    move-result v7

    if-ne v7, v5, :cond_108

    invoke-virtual {v0, v9, v10}, Landroid/os/image/IDynamicSystemService$Stub;->setEnable(ZZ)Z

    move-result v6

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v3, v6}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_25b

    :cond_108
    new-instance v5, Ljava/lang/SecurityException;

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    :pswitch_10e  #0xa
    invoke-static {}, Landroid/os/image/IDynamicSystemService$Stub;->getCallingPid()I

    move-result v9

    new-instance v10, Landroid/content/AttributionSource;

    invoke-static {}, Landroid/os/image/IDynamicSystemService$Stub;->getCallingUid()I

    move-result v11

    invoke-direct {v10, v11, v8, v8}, Landroid/content/AttributionSource;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v7, v9, v10}, Landroid/os/image/IDynamicSystemService$Stub;->permissionCheckerWrapper(Ljava/lang/String;ILandroid/content/AttributionSource;)Z

    move-result v7

    if-ne v7, v5, :cond_12d

    invoke-virtual/range {p0 .. p0}, Landroid/os/image/IDynamicSystemService$Stub;->remove()Z

    move-result v6

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v3, v6}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_25b

    :cond_12d
    new-instance v5, Ljava/lang/SecurityException;

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    :pswitch_133  #0x9
    invoke-static {}, Landroid/os/image/IDynamicSystemService$Stub;->getCallingPid()I

    move-result v9

    new-instance v10, Landroid/content/AttributionSource;

    invoke-static {}, Landroid/os/image/IDynamicSystemService$Stub;->getCallingUid()I

    move-result v11

    invoke-direct {v10, v11, v8, v8}, Landroid/content/AttributionSource;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v7, v9, v10}, Landroid/os/image/IDynamicSystemService$Stub;->permissionCheckerWrapper(Ljava/lang/String;ILandroid/content/AttributionSource;)Z

    move-result v7

    if-ne v7, v5, :cond_152

    invoke-virtual/range {p0 .. p0}, Landroid/os/image/IDynamicSystemService$Stub;->isEnabled()Z

    move-result v6

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v3, v6}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_25b

    :cond_152
    new-instance v5, Ljava/lang/SecurityException;

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    :pswitch_158  #0x8
    invoke-virtual/range {p0 .. p0}, Landroid/os/image/IDynamicSystemService$Stub;->isInstalled()Z

    move-result v6

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v3, v6}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_25b

    :pswitch_164  #0x7
    invoke-virtual/range {p0 .. p0}, Landroid/os/image/IDynamicSystemService$Stub;->isInUse()Z

    move-result v6

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v3, v6}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_25b

    :pswitch_170  #0x6
    invoke-static {}, Landroid/os/image/IDynamicSystemService$Stub;->getCallingPid()I

    move-result v9

    new-instance v10, Landroid/content/AttributionSource;

    invoke-static {}, Landroid/os/image/IDynamicSystemService$Stub;->getCallingUid()I

    move-result v11

    invoke-direct {v10, v11, v8, v8}, Landroid/content/AttributionSource;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v7, v9, v10}, Landroid/os/image/IDynamicSystemService$Stub;->permissionCheckerWrapper(Ljava/lang/String;ILandroid/content/AttributionSource;)Z

    move-result v7

    if-ne v7, v5, :cond_18f

    invoke-virtual/range {p0 .. p0}, Landroid/os/image/IDynamicSystemService$Stub;->abort()Z

    move-result v6

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v3, v6}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_25b

    :cond_18f
    new-instance v5, Ljava/lang/SecurityException;

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    :pswitch_195  #0x5
    invoke-static {}, Landroid/os/image/IDynamicSystemService$Stub;->getCallingPid()I

    move-result v9

    new-instance v10, Landroid/content/AttributionSource;

    invoke-static {}, Landroid/os/image/IDynamicSystemService$Stub;->getCallingUid()I

    move-result v11

    invoke-direct {v10, v11, v8, v8}, Landroid/content/AttributionSource;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v7, v9, v10}, Landroid/os/image/IDynamicSystemService$Stub;->permissionCheckerWrapper(Ljava/lang/String;ILandroid/content/AttributionSource;)Z

    move-result v7

    if-ne v7, v5, :cond_1b4

    invoke-virtual/range {p0 .. p0}, Landroid/os/image/IDynamicSystemService$Stub;->getInstallationProgress()Landroid/gsi/GsiProgress;

    move-result-object v6

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v3, v6, v5}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_25b

    :cond_1b4
    new-instance v5, Ljava/lang/SecurityException;

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    :pswitch_1ba  #0x4
    invoke-static {}, Landroid/os/image/IDynamicSystemService$Stub;->getCallingPid()I

    move-result v9

    new-instance v10, Landroid/content/AttributionSource;

    invoke-static {}, Landroid/os/image/IDynamicSystemService$Stub;->getCallingUid()I

    move-result v11

    invoke-direct {v10, v11, v8, v8}, Landroid/content/AttributionSource;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v7, v9, v10}, Landroid/os/image/IDynamicSystemService$Stub;->permissionCheckerWrapper(Ljava/lang/String;ILandroid/content/AttributionSource;)Z

    move-result v7

    if-ne v7, v5, :cond_1d9

    invoke-virtual/range {p0 .. p0}, Landroid/os/image/IDynamicSystemService$Stub;->finishInstallation()Z

    move-result v6

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v3, v6}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_25b

    :cond_1d9
    new-instance v5, Ljava/lang/SecurityException;

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    :pswitch_1df  #0x3
    invoke-static {}, Landroid/os/image/IDynamicSystemService$Stub;->getCallingPid()I

    move-result v9

    new-instance v10, Landroid/content/AttributionSource;

    invoke-static {}, Landroid/os/image/IDynamicSystemService$Stub;->getCallingUid()I

    move-result v11

    invoke-direct {v10, v11, v8, v8}, Landroid/content/AttributionSource;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v7, v9, v10}, Landroid/os/image/IDynamicSystemService$Stub;->permissionCheckerWrapper(Ljava/lang/String;ILandroid/content/AttributionSource;)Z

    move-result v7

    if-ne v7, v5, :cond_1fd

    invoke-virtual/range {p0 .. p0}, Landroid/os/image/IDynamicSystemService$Stub;->closePartition()Z

    move-result v6

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v3, v6}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_25b

    :cond_1fd
    new-instance v5, Ljava/lang/SecurityException;

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    :pswitch_203  #0x2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-static {}, Landroid/os/image/IDynamicSystemService$Stub;->getCallingPid()I

    move-result v13

    new-instance v14, Landroid/content/AttributionSource;

    invoke-static {}, Landroid/os/image/IDynamicSystemService$Stub;->getCallingUid()I

    move-result v15

    invoke-direct {v14, v15, v8, v8}, Landroid/content/AttributionSource;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v7, v13, v14}, Landroid/os/image/IDynamicSystemService$Stub;->permissionCheckerWrapper(Ljava/lang/String;ILandroid/content/AttributionSource;)Z

    move-result v7

    if-ne v7, v5, :cond_230

    invoke-virtual {v0, v9, v10, v11, v12}, Landroid/os/image/IDynamicSystemService$Stub;->createPartition(Ljava/lang/String;JZ)I

    move-result v6

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_25b

    :cond_230
    new-instance v5, Ljava/lang/SecurityException;

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    :pswitch_236  #0x1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-static {}, Landroid/os/image/IDynamicSystemService$Stub;->getCallingPid()I

    move-result v10

    new-instance v11, Landroid/content/AttributionSource;

    invoke-static {}, Landroid/os/image/IDynamicSystemService$Stub;->getCallingUid()I

    move-result v12

    invoke-direct {v11, v12, v8, v8}, Landroid/content/AttributionSource;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v7, v10, v11}, Landroid/os/image/IDynamicSystemService$Stub;->permissionCheckerWrapper(Ljava/lang/String;ILandroid/content/AttributionSource;)Z

    move-result v7

    if-ne v7, v5, :cond_25c

    invoke-virtual {v0, v9}, Landroid/os/image/IDynamicSystemService$Stub;->startInstallation(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v3, v6}, Landroid/os/Parcel;->writeBoolean(Z)V

    nop

    :goto_25b
    return v5

    :cond_25c
    new-instance v5, Ljava/lang/SecurityException;

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    :pswitch_data_262
    .packed-switch 0x5f4e5446
        :pswitch_25  #5f4e5446
    .end packed-switch

    :pswitch_data_268
    .packed-switch 0x1
        :pswitch_236  #00000001
        :pswitch_203  #00000002
        :pswitch_1df  #00000003
        :pswitch_1ba  #00000004
        :pswitch_195  #00000005
        :pswitch_170  #00000006
        :pswitch_164  #00000007
        :pswitch_158  #00000008
        :pswitch_133  #00000009
        :pswitch_10e  #0000000a
        :pswitch_de  #0000000b
        :pswitch_aa  #0000000c
        :pswitch_7e  #0000000d
        :pswitch_4e  #0000000e
        :pswitch_29  #0000000f
    .end packed-switch
.end method
