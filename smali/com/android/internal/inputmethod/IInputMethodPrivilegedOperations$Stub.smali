# classes4.dex

.class public abstract Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_applyImeVisibilityAsync:I = 0xe

.field static final TRANSACTION_createInputContentUriToken:I = 0x3

.field static final TRANSACTION_hideMySoftInput:I = 0x7

.field static final TRANSACTION_notifyUserActionAsync:I = 0xd

.field static final TRANSACTION_onStylusHandwritingReady:I = 0xf

.field static final TRANSACTION_reportFullscreenModeAsync:I = 0x4

.field static final TRANSACTION_reportStartInputAsync:I = 0x2

.field static final TRANSACTION_resetStylusHandwriting:I = 0x10

.field static final TRANSACTION_sendKeyboardCaps:I = 0x11

.field static final TRANSACTION_setImeWindowStatusAsync:I = 0x1

.field static final TRANSACTION_setInputMethod:I = 0x5

.field static final TRANSACTION_setInputMethodAndSubtype:I = 0x6

.field static final TRANSACTION_shouldOfferSwitchingToNextInputMethod:I = 0xc

.field static final TRANSACTION_showMySoftInput:I = 0x8

.field static final TRANSACTION_switchToNextInputMethod:I = 0xb

.field static final TRANSACTION_switchToPreviousInputMethod:I = 0xa

.field static final TRANSACTION_updateSessionId:I = 0x12

.field static final TRANSACTION_updateStatusIconAsync:I = 0x9


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.android.internal.inputmethod.IInputMethodPrivilegedOperations"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "com.android.internal.inputmethod.IInputMethodPrivilegedOperations"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;

    return-object v1

    :cond_14
    new-instance v1, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_4a

    const/4 v0, 0x0

    return-object v0

    :pswitch_5  #0x12
    const-string/jumbo v0, "updateSessionId"

    return-object v0

    :pswitch_9  #0x11
    const-string/jumbo v0, "sendKeyboardCaps"

    return-object v0

    :pswitch_d  #0x10
    const-string/jumbo v0, "resetStylusHandwriting"

    return-object v0

    :pswitch_11  #0xf
    const-string/jumbo v0, "onStylusHandwritingReady"

    return-object v0

    :pswitch_15  #0xe
    const-string v0, "applyImeVisibilityAsync"

    return-object v0

    :pswitch_18  #0xd
    const-string/jumbo v0, "notifyUserActionAsync"

    return-object v0

    :pswitch_1c  #0xc
    const-string/jumbo v0, "shouldOfferSwitchingToNextInputMethod"

    return-object v0

    :pswitch_20  #0xb
    const-string/jumbo v0, "switchToNextInputMethod"

    return-object v0

    :pswitch_24  #0xa
    const-string/jumbo v0, "switchToPreviousInputMethod"

    return-object v0

    :pswitch_28  #0x9
    const-string/jumbo v0, "updateStatusIconAsync"

    return-object v0

    :pswitch_2c  #0x8
    const-string/jumbo v0, "showMySoftInput"

    return-object v0

    :pswitch_30  #0x7
    const-string v0, "hideMySoftInput"

    return-object v0

    :pswitch_33  #0x6
    const-string/jumbo v0, "setInputMethodAndSubtype"

    return-object v0

    :pswitch_37  #0x5
    const-string/jumbo v0, "setInputMethod"

    return-object v0

    :pswitch_3b  #0x4
    const-string/jumbo v0, "reportFullscreenModeAsync"

    return-object v0

    :pswitch_3f  #0x3
    const-string v0, "createInputContentUriToken"

    return-object v0

    :pswitch_42  #0x2
    const-string/jumbo v0, "reportStartInputAsync"

    return-object v0

    :pswitch_46  #0x1
    const-string/jumbo v0, "setImeWindowStatusAsync"

    return-object v0

    :pswitch_data_4a
    .packed-switch 0x1
        :pswitch_46  #00000001
        :pswitch_42  #00000002
        :pswitch_3f  #00000003
        :pswitch_3b  #00000004
        :pswitch_37  #00000005
        :pswitch_33  #00000006
        :pswitch_30  #00000007
        :pswitch_2c  #00000008
        :pswitch_28  #00000009
        :pswitch_24  #0000000a
        :pswitch_20  #0000000b
        :pswitch_1c  #0000000c
        :pswitch_18  #0000000d
        :pswitch_15  #0000000e
        :pswitch_11  #0000000f
        :pswitch_d  #00000010
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

    invoke-static {p1}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "com.android.internal.inputmethod.IInputMethodPrivilegedOperations"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    packed-switch p1, :pswitch_data_138

    packed-switch p1, :pswitch_data_13e

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :pswitch_18  #0x5f4e5446
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_1c  #0x12
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations$Stub;->updateSessionId(I)V

    goto/16 :goto_137

    :pswitch_28  #0x11
    invoke-virtual {p0}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations$Stub;->sendKeyboardCaps()V

    goto/16 :goto_137

    :pswitch_2d  #0x10
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations$Stub;->resetStylusHandwriting(I)V

    goto/16 :goto_137

    :pswitch_39  #0xf
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations$Stub;->onStylusHandwritingReady(II)V

    goto/16 :goto_137

    :pswitch_49  #0xe
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations$Stub;->applyImeVisibilityAsync(Landroid/os/IBinder;Z)V

    goto/16 :goto_137

    :pswitch_59  #0xd
    invoke-virtual {p0}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations$Stub;->notifyUserActionAsync()V

    goto/16 :goto_137

    :pswitch_5e  #0xc
    sget-object v2, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/infra/AndroidFuture;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations$Stub;->shouldOfferSwitchingToNextInputMethod(Lcom/android/internal/infra/AndroidFuture;)V

    goto/16 :goto_137

    :pswitch_6e  #0xb
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    sget-object v3, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/infra/AndroidFuture;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations$Stub;->switchToNextInputMethod(ZLcom/android/internal/infra/AndroidFuture;)V

    goto/16 :goto_137

    :pswitch_82  #0xa
    sget-object v2, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/infra/AndroidFuture;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations$Stub;->switchToPreviousInputMethod(Lcom/android/internal/infra/AndroidFuture;)V

    goto/16 :goto_137

    :pswitch_92  #0x9
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations$Stub;->updateStatusIconAsync(Ljava/lang/String;I)V

    goto/16 :goto_137

    :pswitch_a2  #0x8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    sget-object v3, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/infra/AndroidFuture;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations$Stub;->showMySoftInput(ILcom/android/internal/infra/AndroidFuture;)V

    goto/16 :goto_137

    :pswitch_b6  #0x7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    sget-object v3, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/infra/AndroidFuture;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations$Stub;->hideMySoftInput(ILcom/android/internal/infra/AndroidFuture;)V

    goto :goto_137

    :pswitch_c9  #0x6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/view/inputmethod/InputMethodSubtype;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodSubtype;

    sget-object v4, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/infra/AndroidFuture;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations$Stub;->setInputMethodAndSubtype(Ljava/lang/String;Landroid/view/inputmethod/InputMethodSubtype;Lcom/android/internal/infra/AndroidFuture;)V

    goto :goto_137

    :pswitch_e4  #0x5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/infra/AndroidFuture;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations$Stub;->setInputMethod(Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V

    goto :goto_137

    :pswitch_f7  #0x4
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations$Stub;->reportFullscreenModeAsync(Z)V

    goto :goto_137

    :pswitch_102  #0x3
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/infra/AndroidFuture;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations$Stub;->createInputContentUriToken(Landroid/net/Uri;Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V

    goto :goto_137

    :pswitch_11d  #0x2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations$Stub;->reportStartInputAsync(Landroid/os/IBinder;)V

    goto :goto_137

    :pswitch_128  #0x1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations$Stub;->setImeWindowStatusAsync(II)V

    nop

    :goto_137
    return v1

    :pswitch_data_138
    .packed-switch 0x5f4e5446
        :pswitch_18  #5f4e5446
    .end packed-switch

    :pswitch_data_13e
    .packed-switch 0x1
        :pswitch_128  #00000001
        :pswitch_11d  #00000002
        :pswitch_102  #00000003
        :pswitch_f7  #00000004
        :pswitch_e4  #00000005
        :pswitch_c9  #00000006
        :pswitch_b6  #00000007
        :pswitch_a2  #00000008
        :pswitch_92  #00000009
        :pswitch_82  #0000000a
        :pswitch_6e  #0000000b
        :pswitch_5e  #0000000c
        :pswitch_59  #0000000d
        :pswitch_49  #0000000e
        :pswitch_39  #0000000f
        :pswitch_2d  #00000010
        :pswitch_28  #00000011
        :pswitch_1c  #00000012
    .end packed-switch
.end method
