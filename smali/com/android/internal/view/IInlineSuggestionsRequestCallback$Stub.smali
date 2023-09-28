# classes4.dex

.class public abstract Lcom/android/internal/view/IInlineSuggestionsRequestCallback$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/android/internal/view/IInlineSuggestionsRequestCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/view/IInlineSuggestionsRequestCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/view/IInlineSuggestionsRequestCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_onInlineSuggestionsRequest:I = 0x2

.field static final TRANSACTION_onInlineSuggestionsSessionInvalidated:I = 0x8

.field static final TRANSACTION_onInlineSuggestionsUnsupported:I = 0x1

.field static final TRANSACTION_onInputMethodFinishInput:I = 0x7

.field static final TRANSACTION_onInputMethodFinishInputView:I = 0x6

.field static final TRANSACTION_onInputMethodShowInputRequested:I = 0x4

.field static final TRANSACTION_onInputMethodStartInput:I = 0x3

.field static final TRANSACTION_onInputMethodStartInputView:I = 0x5


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.android.internal.view.IInlineSuggestionsRequestCallback"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/view/IInlineSuggestionsRequestCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInlineSuggestionsRequestCallback;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "com.android.internal.view.IInlineSuggestionsRequestCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/internal/view/IInlineSuggestionsRequestCallback;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Lcom/android/internal/view/IInlineSuggestionsRequestCallback;

    return-object v1

    :cond_14
    new-instance v1, Lcom/android/internal/view/IInlineSuggestionsRequestCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/view/IInlineSuggestionsRequestCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_26

    const/4 v0, 0x0

    return-object v0

    :pswitch_5  #0x8
    const-string/jumbo v0, "onInlineSuggestionsSessionInvalidated"

    return-object v0

    :pswitch_9  #0x7
    const-string/jumbo v0, "onInputMethodFinishInput"

    return-object v0

    :pswitch_d  #0x6
    const-string/jumbo v0, "onInputMethodFinishInputView"

    return-object v0

    :pswitch_11  #0x5
    const-string/jumbo v0, "onInputMethodStartInputView"

    return-object v0

    :pswitch_15  #0x4
    const-string/jumbo v0, "onInputMethodShowInputRequested"

    return-object v0

    :pswitch_19  #0x3
    const-string/jumbo v0, "onInputMethodStartInput"

    return-object v0

    :pswitch_1d  #0x2
    const-string/jumbo v0, "onInlineSuggestionsRequest"

    return-object v0

    :pswitch_21  #0x1
    const-string/jumbo v0, "onInlineSuggestionsUnsupported"

    return-object v0

    nop

    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_21  #00000001
        :pswitch_1d  #00000002
        :pswitch_19  #00000003
        :pswitch_15  #00000004
        :pswitch_11  #00000005
        :pswitch_d  #00000006
        :pswitch_9  #00000007
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

    invoke-static {p1}, Lcom/android/internal/view/IInlineSuggestionsRequestCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "com.android.internal.view.IInlineSuggestionsRequestCallback"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    packed-switch p1, :pswitch_data_62

    packed-switch p1, :pswitch_data_68

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :pswitch_18  #0x5f4e5446
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_1c  #0x8
    invoke-virtual {p0}, Lcom/android/internal/view/IInlineSuggestionsRequestCallback$Stub;->onInlineSuggestionsSessionInvalidated()V

    goto :goto_61

    :pswitch_20  #0x7
    invoke-virtual {p0}, Lcom/android/internal/view/IInlineSuggestionsRequestCallback$Stub;->onInputMethodFinishInput()V

    goto :goto_61

    :pswitch_24  #0x6
    invoke-virtual {p0}, Lcom/android/internal/view/IInlineSuggestionsRequestCallback$Stub;->onInputMethodFinishInputView()V

    goto :goto_61

    :pswitch_28  #0x5
    invoke-virtual {p0}, Lcom/android/internal/view/IInlineSuggestionsRequestCallback$Stub;->onInputMethodStartInputView()V

    goto :goto_61

    :pswitch_2c  #0x4
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/view/IInlineSuggestionsRequestCallback$Stub;->onInputMethodShowInputRequested(Z)V

    goto :goto_61

    :pswitch_37  #0x3
    sget-object v2, Landroid/view/autofill/AutofillId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/autofill/AutofillId;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/view/IInlineSuggestionsRequestCallback$Stub;->onInputMethodStartInput(Landroid/view/autofill/AutofillId;)V

    goto :goto_61

    :pswitch_46  #0x2
    sget-object v2, Landroid/view/inputmethod/InlineSuggestionsRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InlineSuggestionsRequest;

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/view/IInlineSuggestionsResponseCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInlineSuggestionsResponseCallback;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/view/IInlineSuggestionsRequestCallback$Stub;->onInlineSuggestionsRequest(Landroid/view/inputmethod/InlineSuggestionsRequest;Lcom/android/internal/view/IInlineSuggestionsResponseCallback;)V

    goto :goto_61

    :pswitch_5d  #0x1
    invoke-virtual {p0}, Lcom/android/internal/view/IInlineSuggestionsRequestCallback$Stub;->onInlineSuggestionsUnsupported()V

    nop

    :goto_61
    return v1

    :pswitch_data_62
    .packed-switch 0x5f4e5446
        :pswitch_18  #5f4e5446
    .end packed-switch

    :pswitch_data_68
    .packed-switch 0x1
        :pswitch_5d  #00000001
        :pswitch_46  #00000002
        :pswitch_37  #00000003
        :pswitch_2c  #00000004
        :pswitch_28  #00000005
        :pswitch_24  #00000006
        :pswitch_20  #00000007
        :pswitch_1c  #00000008
    .end packed-switch
.end method
