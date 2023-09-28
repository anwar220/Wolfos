# classes3.dex

.class public abstract Landroid/service/autofill/IAutofillFieldClassificationService$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Landroid/service/autofill/IAutofillFieldClassificationService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/autofill/IAutofillFieldClassificationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/autofill/IAutofillFieldClassificationService$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.service.autofill.IAutofillFieldClassificationService"

.field static final TRANSACTION_calculateScores:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.service.autofill.IAutofillFieldClassificationService"

    invoke-virtual {p0, p0, v0}, Landroid/service/autofill/IAutofillFieldClassificationService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/service/autofill/IAutofillFieldClassificationService;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "android.service.autofill.IAutofillFieldClassificationService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/service/autofill/IAutofillFieldClassificationService;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Landroid/service/autofill/IAutofillFieldClassificationService;

    return-object v1

    :cond_14
    new-instance v1, Landroid/service/autofill/IAutofillFieldClassificationService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/service/autofill/IAutofillFieldClassificationService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_8

    const/4 v0, 0x0

    return-object v0

    :pswitch_5  #0x1
    const-string v0, "calculateScores"

    return-object v0

    :pswitch_data_8
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

    invoke-static {p1}, Landroid/service/autofill/IAutofillFieldClassificationService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move/from16 v0, p1

    move-object/from16 v1, p2

    const-string v2, "android.service.autofill.IAutofillFieldClassificationService"

    const/4 v3, 0x1

    if-lt v0, v3, :cond_11

    const v4, 0xffffff

    if-gt v0, v4, :cond_11

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_11
    packed-switch v0, :pswitch_data_72

    move-object/from16 v4, p3

    packed-switch v0, :pswitch_data_78

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    return v3

    :pswitch_1e  #0x5f4e5446
    move-object/from16 v4, p3

    invoke-virtual {v4, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v3

    :pswitch_24  #0x1
    sget-object v5, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/RemoteCallback;

    sget-object v6, Landroid/view/autofill/AutofillValue;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v6}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v6}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v19, v6

    check-cast v19, Landroid/os/Bundle;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v14

    invoke-virtual {v1, v14}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v20

    invoke-virtual {v1, v14}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v21

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v6, p0

    move-object v7, v5

    move-object v8, v15

    move-object/from16 v9, v16

    move-object/from16 v10, v17

    move-object/from16 v11, v18

    move-object/from16 v12, v19

    move-object/from16 v13, v20

    move-object/from16 v22, v14

    move-object/from16 v14, v21

    invoke-virtual/range {v6 .. v14}, Landroid/service/autofill/IAutofillFieldClassificationService$Stub;->calculateScores(Landroid/os/RemoteCallback;Ljava/util/List;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/Map;Ljava/util/Map;)V

    nop

    return v3

    :pswitch_data_72
    .packed-switch 0x5f4e5446
        :pswitch_1e  #5f4e5446
    .end packed-switch

    :pswitch_data_78
    .packed-switch 0x1
        :pswitch_24  #00000001
    .end packed-switch
.end method
