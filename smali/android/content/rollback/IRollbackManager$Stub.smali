# classes.dex

.class public abstract Landroid/content/rollback/IRollbackManager$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Landroid/content/rollback/IRollbackManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/rollback/IRollbackManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/rollback/IRollbackManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_blockRollbackManager:I = 0x8

.field static final TRANSACTION_commitRollback:I = 0x3

.field static final TRANSACTION_expireRollbackForPackage:I = 0x6

.field static final TRANSACTION_getAvailableRollbacks:I = 0x1

.field static final TRANSACTION_getRecentlyCommittedRollbacks:I = 0x2

.field static final TRANSACTION_notifyStagedSession:I = 0x7

.field static final TRANSACTION_reloadPersistedData:I = 0x5

.field static final TRANSACTION_snapshotAndRestoreUserData:I = 0x4


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.content.rollback.IRollbackManager"

    invoke-virtual {p0, p0, v0}, Landroid/content/rollback/IRollbackManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/content/rollback/IRollbackManager;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "android.content.rollback.IRollbackManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/content/rollback/IRollbackManager;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Landroid/content/rollback/IRollbackManager;

    return-object v1

    :cond_14
    new-instance v1, Landroid/content/rollback/IRollbackManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/content/rollback/IRollbackManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_20

    const/4 v0, 0x0

    return-object v0

    :pswitch_5  #0x8
    const-string v0, "blockRollbackManager"

    return-object v0

    :pswitch_8  #0x7
    const-string/jumbo v0, "notifyStagedSession"

    return-object v0

    :pswitch_c  #0x6
    const-string v0, "expireRollbackForPackage"

    return-object v0

    :pswitch_f  #0x5
    const-string/jumbo v0, "reloadPersistedData"

    return-object v0

    :pswitch_13  #0x4
    const-string/jumbo v0, "snapshotAndRestoreUserData"

    return-object v0

    :pswitch_17  #0x3
    const-string v0, "commitRollback"

    return-object v0

    :pswitch_1a  #0x2
    const-string v0, "getRecentlyCommittedRollbacks"

    return-object v0

    :pswitch_1d  #0x1
    const-string v0, "getAvailableRollbacks"

    return-object v0

    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_1d  #00000001
        :pswitch_1a  #00000002
        :pswitch_17  #00000003
        :pswitch_13  #00000004
        :pswitch_f  #00000005
        :pswitch_c  #00000006
        :pswitch_8  #00000007
        :pswitch_5  #00000008
    .end packed-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    const/4 v0, 0x7

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3

    invoke-static {p1}, Landroid/content/rollback/IRollbackManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v8, p0

    move/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    const-string v12, "android.content.rollback.IRollbackManager"

    const/4 v13, 0x1

    if-lt v9, v13, :cond_15

    const v0, 0xffffff

    if-gt v9, v0, :cond_15

    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_15
    packed-switch v9, :pswitch_data_c4

    packed-switch v9, :pswitch_data_ca

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :pswitch_20  #0x5f4e5446
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v13

    :pswitch_24  #0x8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v8, v0, v1}, Landroid/content/rollback/IRollbackManager$Stub;->blockRollbackManager(J)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_c2

    :pswitch_33  #0x7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v8, v0}, Landroid/content/rollback/IRollbackManager$Stub;->notifyStagedSession(I)I

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_c2

    :pswitch_46  #0x6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v8, v0}, Landroid/content/rollback/IRollbackManager$Stub;->expireRollbackForPackage(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_c2

    :pswitch_55  #0x5
    invoke-virtual/range {p0 .. p0}, Landroid/content/rollback/IRollbackManager$Stub;->reloadPersistedData()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_c2

    :pswitch_5c  #0x4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move-object v1, v14

    move-object v2, v15

    move/from16 v3, v16

    move-wide/from16 v4, v17

    move-object/from16 v6, v19

    move/from16 v7, v20

    invoke-virtual/range {v0 .. v7}, Landroid/content/rollback/IRollbackManager$Stub;->snapshotAndRestoreUserData(Ljava/lang/String;[IIJLjava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_c2

    :pswitch_8a  #0x3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    sget-object v1, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ParceledListSlice;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/content/IntentSender;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/IntentSender;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/content/rollback/IRollbackManager$Stub;->commitRollback(ILandroid/content/pm/ParceledListSlice;Ljava/lang/String;Landroid/content/IntentSender;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_c2

    :pswitch_ac  #0x2
    invoke-virtual/range {p0 .. p0}, Landroid/content/rollback/IRollbackManager$Stub;->getRecentlyCommittedRollbacks()Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v0, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto :goto_c2

    :pswitch_b7  #0x1
    invoke-virtual/range {p0 .. p0}, Landroid/content/rollback/IRollbackManager$Stub;->getAvailableRollbacks()Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v0, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    nop

    :goto_c2
    return v13

    nop

    :pswitch_data_c4
    .packed-switch 0x5f4e5446
        :pswitch_20  #5f4e5446
    .end packed-switch

    :pswitch_data_ca
    .packed-switch 0x1
        :pswitch_b7  #00000001
        :pswitch_ac  #00000002
        :pswitch_8a  #00000003
        :pswitch_5c  #00000004
        :pswitch_55  #00000005
        :pswitch_46  #00000006
        :pswitch_33  #00000007
        :pswitch_24  #00000008
    .end packed-switch
.end method
