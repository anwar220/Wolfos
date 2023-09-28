# classes.dex

.class public abstract Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Landroid/accessibilityservice/IAccessibilityServiceClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accessibilityservice/IAccessibilityServiceClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/accessibilityservice/IAccessibilityServiceClient$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.accessibilityservice.IAccessibilityServiceClient"

.field static final TRANSACTION_bindInput:I = 0x13

.field static final TRANSACTION_clearAccessibilityCache:I = 0x5

.field static final TRANSACTION_createImeSession:I = 0x11

.field static final TRANSACTION_init:I = 0x1

.field static final TRANSACTION_onAccessibilityButtonAvailabilityChanged:I = 0xf

.field static final TRANSACTION_onAccessibilityButtonClicked:I = 0xe

.field static final TRANSACTION_onAccessibilityEvent:I = 0x2

.field static final TRANSACTION_onFingerprintCapturingGesturesChanged:I = 0xc

.field static final TRANSACTION_onFingerprintGesture:I = 0xd

.field static final TRANSACTION_onGesture:I = 0x4

.field static final TRANSACTION_onInterrupt:I = 0x3

.field static final TRANSACTION_onKeyEvent:I = 0x6

.field static final TRANSACTION_onMagnificationChanged:I = 0x7

.field static final TRANSACTION_onMotionEvent:I = 0x8

.field static final TRANSACTION_onPerformGestureResult:I = 0xb

.field static final TRANSACTION_onSoftKeyboardShowModeChanged:I = 0xa

.field static final TRANSACTION_onSystemActionsChanged:I = 0x10

.field static final TRANSACTION_onTouchStateChanged:I = 0x9

.field static final TRANSACTION_setImeSessionEnabled:I = 0x12

.field static final TRANSACTION_startInput:I = 0x15

.field static final TRANSACTION_unbindInput:I = 0x14


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.accessibilityservice.IAccessibilityServiceClient"

    invoke-virtual {p0, p0, v0}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/accessibilityservice/IAccessibilityServiceClient;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "android.accessibilityservice.IAccessibilityServiceClient"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/accessibilityservice/IAccessibilityServiceClient;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Landroid/accessibilityservice/IAccessibilityServiceClient;

    return-object v1

    :cond_14
    new-instance v1, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_56

    const/4 v0, 0x0

    return-object v0

    :pswitch_5  #0x15
    const-string/jumbo v0, "startInput"

    return-object v0

    :pswitch_9  #0x14
    const-string/jumbo v0, "unbindInput"

    return-object v0

    :pswitch_d  #0x13
    const-string v0, "bindInput"

    return-object v0

    :pswitch_10  #0x12
    const-string/jumbo v0, "setImeSessionEnabled"

    return-object v0

    :pswitch_14  #0x11
    const-string v0, "createImeSession"

    return-object v0

    :pswitch_17  #0x10
    const-string/jumbo v0, "onSystemActionsChanged"

    return-object v0

    :pswitch_1b  #0xf
    const-string/jumbo v0, "onAccessibilityButtonAvailabilityChanged"

    return-object v0

    :pswitch_1f  #0xe
    const-string/jumbo v0, "onAccessibilityButtonClicked"

    return-object v0

    :pswitch_23  #0xd
    const-string/jumbo v0, "onFingerprintGesture"

    return-object v0

    :pswitch_27  #0xc
    const-string/jumbo v0, "onFingerprintCapturingGesturesChanged"

    return-object v0

    :pswitch_2b  #0xb
    const-string/jumbo v0, "onPerformGestureResult"

    return-object v0

    :pswitch_2f  #0xa
    const-string/jumbo v0, "onSoftKeyboardShowModeChanged"

    return-object v0

    :pswitch_33  #0x9
    const-string/jumbo v0, "onTouchStateChanged"

    return-object v0

    :pswitch_37  #0x8
    const-string/jumbo v0, "onMotionEvent"

    return-object v0

    :pswitch_3b  #0x7
    const-string/jumbo v0, "onMagnificationChanged"

    return-object v0

    :pswitch_3f  #0x6
    const-string/jumbo v0, "onKeyEvent"

    return-object v0

    :pswitch_43  #0x5
    const-string v0, "clearAccessibilityCache"

    return-object v0

    :pswitch_46  #0x4
    const-string/jumbo v0, "onGesture"

    return-object v0

    :pswitch_4a  #0x3
    const-string/jumbo v0, "onInterrupt"

    return-object v0

    :pswitch_4e  #0x2
    const-string/jumbo v0, "onAccessibilityEvent"

    return-object v0

    :pswitch_52  #0x1
    const-string v0, "init"

    return-object v0

    nop

    :pswitch_data_56
    .packed-switch 0x1
        :pswitch_52  #00000001
        :pswitch_4e  #00000002
        :pswitch_4a  #00000003
        :pswitch_46  #00000004
        :pswitch_43  #00000005
        :pswitch_3f  #00000006
        :pswitch_3b  #00000007
        :pswitch_37  #00000008
        :pswitch_33  #00000009
        :pswitch_2f  #0000000a
        :pswitch_2b  #0000000b
        :pswitch_27  #0000000c
        :pswitch_23  #0000000d
        :pswitch_1f  #0000000e
        :pswitch_1b  #0000000f
        :pswitch_17  #00000010
        :pswitch_14  #00000011
        :pswitch_10  #00000012
        :pswitch_d  #00000013
        :pswitch_9  #00000014
        :pswitch_5  #00000015
    .end packed-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    const/16 v0, 0x14

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3

    invoke-static {p1}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    const-string v0, "android.accessibilityservice.IAccessibilityServiceClient"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    packed-switch p1, :pswitch_data_146

    packed-switch p1, :pswitch_data_14c

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :pswitch_18  #0x5f4e5446
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_1c  #0x15
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;

    move-result-object v2

    sget-object v3, Landroid/view/inputmethod/EditorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/EditorInfo;

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->startInput(Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;Landroid/view/inputmethod/EditorInfo;Z)V

    goto/16 :goto_145

    :pswitch_38  #0x14
    invoke-virtual {p0}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->unbindInput()V

    goto/16 :goto_145

    :pswitch_3d  #0x13
    invoke-virtual {p0}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->bindInput()V

    goto/16 :goto_145

    :pswitch_42  #0x12
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->setImeSessionEnabled(Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;Z)V

    goto/16 :goto_145

    :pswitch_56  #0x11
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/inputmethod/IAccessibilityInputMethodSessionCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IAccessibilityInputMethodSessionCallback;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->createImeSession(Lcom/android/internal/inputmethod/IAccessibilityInputMethodSessionCallback;)V

    goto/16 :goto_145

    :pswitch_66  #0x10
    invoke-virtual {p0}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->onSystemActionsChanged()V

    goto/16 :goto_145

    :pswitch_6b  #0xf
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->onAccessibilityButtonAvailabilityChanged(Z)V

    goto/16 :goto_145

    :pswitch_77  #0xe
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->onAccessibilityButtonClicked(I)V

    goto/16 :goto_145

    :pswitch_83  #0xd
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->onFingerprintGesture(I)V

    goto/16 :goto_145

    :pswitch_8f  #0xc
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->onFingerprintCapturingGesturesChanged(Z)V

    goto/16 :goto_145

    :pswitch_9b  #0xb
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->onPerformGestureResult(IZ)V

    goto/16 :goto_145

    :pswitch_ab  #0xa
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->onSoftKeyboardShowModeChanged(I)V

    goto/16 :goto_145

    :pswitch_b7  #0x9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->onTouchStateChanged(II)V

    goto/16 :goto_145

    :pswitch_c7  #0x8
    sget-object v2, Landroid/view/MotionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/MotionEvent;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->onMotionEvent(Landroid/view/MotionEvent;)V

    goto :goto_145

    :pswitch_d6  #0x7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    sget-object v3, Landroid/graphics/Region;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Region;

    sget-object v4, Landroid/accessibilityservice/MagnificationConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/accessibilityservice/MagnificationConfig;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->onMagnificationChanged(ILandroid/graphics/Region;Landroid/accessibilityservice/MagnificationConfig;)V

    goto :goto_145

    :pswitch_f1  #0x6
    sget-object v2, Landroid/view/KeyEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/KeyEvent;

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->onKeyEvent(Landroid/view/KeyEvent;I)V

    goto :goto_145

    :pswitch_104  #0x5
    invoke-virtual {p0}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->clearAccessibilityCache()V

    goto :goto_145

    :pswitch_108  #0x4
    sget-object v2, Landroid/accessibilityservice/AccessibilityGestureEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accessibilityservice/AccessibilityGestureEvent;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->onGesture(Landroid/accessibilityservice/AccessibilityGestureEvent;)V

    goto :goto_145

    :pswitch_117  #0x3
    invoke-virtual {p0}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->onInterrupt()V

    goto :goto_145

    :pswitch_11b  #0x2
    sget-object v2, Landroid/view/accessibility/AccessibilityEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityEvent;

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Z)V

    goto :goto_145

    :pswitch_12e  #0x1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->init(Landroid/accessibilityservice/IAccessibilityServiceConnection;ILandroid/os/IBinder;)V

    nop

    :goto_145
    return v1

    :pswitch_data_146
    .packed-switch 0x5f4e5446
        :pswitch_18  #5f4e5446
    .end packed-switch

    :pswitch_data_14c
    .packed-switch 0x1
        :pswitch_12e  #00000001
        :pswitch_11b  #00000002
        :pswitch_117  #00000003
        :pswitch_108  #00000004
        :pswitch_104  #00000005
        :pswitch_f1  #00000006
        :pswitch_d6  #00000007
        :pswitch_c7  #00000008
        :pswitch_b7  #00000009
        :pswitch_ab  #0000000a
        :pswitch_9b  #0000000b
        :pswitch_8f  #0000000c
        :pswitch_83  #0000000d
        :pswitch_77  #0000000e
        :pswitch_6b  #0000000f
        :pswitch_66  #00000010
        :pswitch_56  #00000011
        :pswitch_42  #00000012
        :pswitch_3d  #00000013
        :pswitch_38  #00000014
        :pswitch_1c  #00000015
    .end packed-switch
.end method
