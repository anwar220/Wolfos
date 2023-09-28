# classes4.dex

.class public abstract Lcom/android/internal/app/IAppOpsNotedCallback$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/android/internal/app/IAppOpsNotedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/IAppOpsNotedCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/IAppOpsNotedCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_opNoted:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.android.internal.app.IAppOpsNotedCallback"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/app/IAppOpsNotedCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsNotedCallback;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "com.android.internal.app.IAppOpsNotedCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/internal/app/IAppOpsNotedCallback;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Lcom/android/internal/app/IAppOpsNotedCallback;

    return-object v1

    :cond_14
    new-instance v1, Lcom/android/internal/app/IAppOpsNotedCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/app/IAppOpsNotedCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_a

    const/4 v0, 0x0

    return-object v0

    :pswitch_5  #0x1
    const-string/jumbo v0, "opNoted"

    return-object v0

    nop

    :pswitch_data_a
    .packed-switch 0x1
        :pswitch_5  #00000001
    .end packed-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3

    invoke-static {p1}, Lcom/android/internal/app/IAppOpsNotedCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move/from16 v0, p1

    const-string v1, "com.android.internal.app.IAppOpsNotedCallback"

    const/4 v2, 0x1

    if-lt v0, v2, :cond_12

    const v3, 0xffffff

    if-gt v0, v3, :cond_12

    move-object/from16 v3, p2

    invoke-virtual {v3, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    goto :goto_14

    :cond_12
    move-object/from16 v3, p2

    :goto_14
    packed-switch v0, :pswitch_data_52

    move-object/from16 v4, p3

    packed-switch v0, :pswitch_data_58

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    return v2

    :pswitch_21  #0x5f4e5446
    move-object/from16 v4, p3

    invoke-virtual {v4, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :pswitch_27  #0x1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v5, p0

    move v6, v12

    move v7, v13

    move-object v8, v14

    move-object v9, v15

    move/from16 v10, v16

    move/from16 v11, v17

    invoke-virtual/range {v5 .. v11}, Lcom/android/internal/app/IAppOpsNotedCallback$Stub;->opNoted(IILjava/lang/String;Ljava/lang/String;II)V

    nop

    return v2

    nop

    :pswitch_data_52
    .packed-switch 0x5f4e5446
        :pswitch_21  #5f4e5446
    .end packed-switch

    :pswitch_data_58
    .packed-switch 0x1
        :pswitch_27  #00000001
    .end packed-switch
.end method
