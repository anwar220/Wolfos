# classes4.dex

.class public abstract Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_finishInput:I = 0x2

.field static final TRANSACTION_finishSession:I = 0x3

.field static final TRANSACTION_invalidateInput:I = 0x4

.field static final TRANSACTION_updateSelection:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.android.internal.inputmethod.IAccessibilityInputMethodSession"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "com.android.internal.inputmethod.IAccessibilityInputMethodSession"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;

    return-object v1

    :cond_14
    new-instance v1, Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_12

    const/4 v0, 0x0

    return-object v0

    :pswitch_5  #0x4
    const-string v0, "invalidateInput"

    return-object v0

    :pswitch_8  #0x3
    const-string v0, "finishSession"

    return-object v0

    :pswitch_b  #0x2
    const-string v0, "finishInput"

    return-object v0

    :pswitch_e  #0x1
    const-string/jumbo v0, "updateSelection"

    return-object v0

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_e  #00000001
        :pswitch_b  #00000002
        :pswitch_8  #00000003
        :pswitch_5  #00000004
    .end packed-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    const/4 v0, 0x3

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3

    invoke-static {p1}, Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move/from16 v0, p1

    move-object/from16 v1, p2

    const-string v2, "com.android.internal.inputmethod.IAccessibilityInputMethodSession"

    const/4 v3, 0x1

    if-lt v0, v3, :cond_11

    const v4, 0xffffff

    if-gt v0, v4, :cond_11

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_11
    packed-switch v0, :pswitch_data_7c

    move-object/from16 v4, p3

    packed-switch v0, :pswitch_data_82

    move-object/from16 v15, p0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    return v3

    :pswitch_20  #0x5f4e5446
    move-object/from16 v4, p3

    invoke-virtual {v4, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v3

    :pswitch_26  #0x4
    sget-object v5, Landroid/view/inputmethod/EditorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/EditorInfo;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v15, p0

    invoke-virtual {v15, v5, v6, v7}, Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession$Stub;->invalidateInput(Landroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;I)V

    goto :goto_7b

    :pswitch_43  #0x3
    move-object/from16 v15, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession$Stub;->finishSession()V

    goto :goto_7b

    :pswitch_49  #0x2
    move-object/from16 v15, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession$Stub;->finishInput()V

    goto :goto_7b

    :pswitch_4f  #0x1
    move-object/from16 v15, p0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v8, p0

    move v9, v5

    move v10, v6

    move v11, v7

    move/from16 v12, v16

    move/from16 v13, v17

    move/from16 v14, v18

    invoke-virtual/range {v8 .. v14}, Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession$Stub;->updateSelection(IIIIII)V

    nop

    :goto_7b
    return v3

    :pswitch_data_7c
    .packed-switch 0x5f4e5446
        :pswitch_20  #5f4e5446
    .end packed-switch

    :pswitch_data_82
    .packed-switch 0x1
        :pswitch_4f  #00000001
        :pswitch_49  #00000002
        :pswitch_43  #00000003
        :pswitch_26  #00000004
    .end packed-switch
.end method