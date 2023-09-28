# classes2.dex

.class public abstract Landroid/nfc/INfcDta$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Landroid/nfc/INfcDta;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/nfc/INfcDta;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/nfc/INfcDta$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.nfc.INfcDta"

.field static final TRANSACTION_disableClient:I = 0x6

.field static final TRANSACTION_disableDta:I = 0x2

.field static final TRANSACTION_disableServer:I = 0x4

.field static final TRANSACTION_enableClient:I = 0x5

.field static final TRANSACTION_enableDta:I = 0x1

.field static final TRANSACTION_enableServer:I = 0x3

.field static final TRANSACTION_registerMessageService:I = 0x7


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.nfc.INfcDta"

    invoke-virtual {p0, p0, v0}, Landroid/nfc/INfcDta$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcDta;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "android.nfc.INfcDta"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/nfc/INfcDta;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Landroid/nfc/INfcDta;

    return-object v1

    :cond_14
    new-instance v1, Landroid/nfc/INfcDta$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/nfc/INfcDta$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_1a

    const/4 v0, 0x0

    return-object v0

    :pswitch_5  #0x7
    const-string v0, "registerMessageService"

    return-object v0

    :pswitch_8  #0x6
    const-string v0, "disableClient"

    return-object v0

    :pswitch_b  #0x5
    const-string v0, "enableClient"

    return-object v0

    :pswitch_e  #0x4
    const-string v0, "disableServer"

    return-object v0

    :pswitch_11  #0x3
    const-string v0, "enableServer"

    return-object v0

    :pswitch_14  #0x2
    const-string v0, "disableDta"

    return-object v0

    :pswitch_17  #0x1
    const-string v0, "enableDta"

    return-object v0

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_17  #00000001
        :pswitch_14  #00000002
        :pswitch_11  #00000003
        :pswitch_e  #00000004
        :pswitch_b  #00000005
        :pswitch_8  #00000006
        :pswitch_5  #00000007
    .end packed-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    const/4 v0, 0x6

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3

    invoke-static {p1}, Landroid/nfc/INfcDta$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    move-object/from16 v8, p3

    const-string v9, "android.nfc.INfcDta"

    const/4 v10, 0x1

    if-lt v7, v10, :cond_16

    const v0, 0xffffff

    if-gt v7, v0, :cond_16

    move-object/from16 v11, p2

    invoke-virtual {v11, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    goto :goto_18

    :cond_16
    move-object/from16 v11, p2

    :goto_18
    packed-switch v7, :pswitch_data_9e

    packed-switch v7, :pswitch_data_a4

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :pswitch_23  #0x5f4e5446
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v10

    :pswitch_27  #0x7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Landroid/nfc/INfcDta$Stub;->registerMessageService(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_9d

    :pswitch_39  #0x6
    invoke-virtual/range {p0 .. p0}, Landroid/nfc/INfcDta$Stub;->disableClient()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9d

    :pswitch_40  #0x5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/nfc/INfcDta$Stub;->enableClient(Ljava/lang/String;III)Z

    move-result v4

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v8, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_9d

    :pswitch_5e  #0x4
    invoke-virtual/range {p0 .. p0}, Landroid/nfc/INfcDta$Stub;->disableServer()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9d

    :pswitch_65  #0x3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move-object v1, v12

    move v2, v13

    move v3, v14

    move v4, v15

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/nfc/INfcDta$Stub;->enableServer(Ljava/lang/String;IIII)Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_9d

    :pswitch_8f  #0x2
    invoke-virtual/range {p0 .. p0}, Landroid/nfc/INfcDta$Stub;->disableDta()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9d

    :pswitch_96  #0x1
    invoke-virtual/range {p0 .. p0}, Landroid/nfc/INfcDta$Stub;->enableDta()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    nop

    :goto_9d
    return v10

    :pswitch_data_9e
    .packed-switch 0x5f4e5446
        :pswitch_23  #5f4e5446
    .end packed-switch

    :pswitch_data_a4
    .packed-switch 0x1
        :pswitch_96  #00000001
        :pswitch_8f  #00000002
        :pswitch_65  #00000003
        :pswitch_5e  #00000004
        :pswitch_40  #00000005
        :pswitch_39  #00000006
        :pswitch_27  #00000007
    .end packed-switch
.end method
