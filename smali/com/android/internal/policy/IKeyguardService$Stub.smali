# classes4.dex

.class public abstract Lcom/android/internal/policy/IKeyguardService$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/android/internal/policy/IKeyguardService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/IKeyguardService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/IKeyguardService$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.policy.IKeyguardService"

.field static final TRANSACTION_addStateMonitorCallback:I = 0x2

.field static final TRANSACTION_dismiss:I = 0x4

.field static final TRANSACTION_dismissKeyguardToLaunch:I = 0x17

.field static final TRANSACTION_doKeyguardTimeout:I = 0x11

.field static final TRANSACTION_onBootCompleted:I = 0x14

.field static final TRANSACTION_onDreamingStarted:I = 0x5

.field static final TRANSACTION_onDreamingStopped:I = 0x6

.field static final TRANSACTION_onFinishedGoingToSleep:I = 0x8

.field static final TRANSACTION_onFinishedWakingUp:I = 0xa

.field static final TRANSACTION_onScreenTurnedOff:I = 0xe

.field static final TRANSACTION_onScreenTurnedOn:I = 0xc

.field static final TRANSACTION_onScreenTurningOff:I = 0xd

.field static final TRANSACTION_onScreenTurningOn:I = 0xb

.field static final TRANSACTION_onShortPowerPressedGoHome:I = 0x16

.field static final TRANSACTION_onStartedGoingToSleep:I = 0x7

.field static final TRANSACTION_onStartedWakingUp:I = 0x9

.field static final TRANSACTION_onSystemKeyPressed:I = 0x18

.field static final TRANSACTION_onSystemReady:I = 0x10

.field static final TRANSACTION_setCurrentUser:I = 0x13

.field static final TRANSACTION_setKeyguardEnabled:I = 0xf

.field static final TRANSACTION_setOccluded:I = 0x1

.field static final TRANSACTION_setSwitchingUser:I = 0x12

.field static final TRANSACTION_startKeyguardExitAnimation:I = 0x15

.field static final TRANSACTION_verifyUnlock:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.android.internal.policy.IKeyguardService"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/policy/IKeyguardService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/policy/IKeyguardService;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "com.android.internal.policy.IKeyguardService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/internal/policy/IKeyguardService;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Lcom/android/internal/policy/IKeyguardService;

    return-object v1

    :cond_14
    new-instance v1, Lcom/android/internal/policy/IKeyguardService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/IKeyguardService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_62

    const/4 v0, 0x0

    return-object v0

    :pswitch_5  #0x18
    const-string/jumbo v0, "onSystemKeyPressed"

    return-object v0

    :pswitch_9  #0x17
    const-string v0, "dismissKeyguardToLaunch"

    return-object v0

    :pswitch_c  #0x16
    const-string/jumbo v0, "onShortPowerPressedGoHome"

    return-object v0

    :pswitch_10  #0x15
    const-string/jumbo v0, "startKeyguardExitAnimation"

    return-object v0

    :pswitch_14  #0x14
    const-string/jumbo v0, "onBootCompleted"

    return-object v0

    :pswitch_18  #0x13
    const-string/jumbo v0, "setCurrentUser"

    return-object v0

    :pswitch_1c  #0x12
    const-string/jumbo v0, "setSwitchingUser"

    return-object v0

    :pswitch_20  #0x11
    const-string v0, "doKeyguardTimeout"

    return-object v0

    :pswitch_23  #0x10
    const-string/jumbo v0, "onSystemReady"

    return-object v0

    :pswitch_27  #0xf
    const-string/jumbo v0, "setKeyguardEnabled"

    return-object v0

    :pswitch_2b  #0xe
    const-string/jumbo v0, "onScreenTurnedOff"

    return-object v0

    :pswitch_2f  #0xd
    const-string/jumbo v0, "onScreenTurningOff"

    return-object v0

    :pswitch_33  #0xc
    const-string/jumbo v0, "onScreenTurnedOn"

    return-object v0

    :pswitch_37  #0xb
    const-string/jumbo v0, "onScreenTurningOn"

    return-object v0

    :pswitch_3b  #0xa
    const-string/jumbo v0, "onFinishedWakingUp"

    return-object v0

    :pswitch_3f  #0x9
    const-string/jumbo v0, "onStartedWakingUp"

    return-object v0

    :pswitch_43  #0x8
    const-string/jumbo v0, "onFinishedGoingToSleep"

    return-object v0

    :pswitch_47  #0x7
    const-string/jumbo v0, "onStartedGoingToSleep"

    return-object v0

    :pswitch_4b  #0x6
    const-string/jumbo v0, "onDreamingStopped"

    return-object v0

    :pswitch_4f  #0x5
    const-string/jumbo v0, "onDreamingStarted"

    return-object v0

    :pswitch_53  #0x4
    const-string v0, "dismiss"

    return-object v0

    :pswitch_56  #0x3
    const-string/jumbo v0, "verifyUnlock"

    return-object v0

    :pswitch_5a  #0x2
    const-string v0, "addStateMonitorCallback"

    return-object v0

    :pswitch_5d  #0x1
    const-string/jumbo v0, "setOccluded"

    return-object v0

    nop

    :pswitch_data_62
    .packed-switch 0x1
        :pswitch_5d  #00000001
        :pswitch_5a  #00000002
        :pswitch_56  #00000003
        :pswitch_53  #00000004
        :pswitch_4f  #00000005
        :pswitch_4b  #00000006
        :pswitch_47  #00000007
        :pswitch_43  #00000008
        :pswitch_3f  #00000009
        :pswitch_3b  #0000000a
        :pswitch_37  #0000000b
        :pswitch_33  #0000000c
        :pswitch_2f  #0000000d
        :pswitch_2b  #0000000e
        :pswitch_27  #0000000f
        :pswitch_23  #00000010
        :pswitch_20  #00000011
        :pswitch_1c  #00000012
        :pswitch_18  #00000013
        :pswitch_14  #00000014
        :pswitch_10  #00000015
        :pswitch_c  #00000016
        :pswitch_9  #00000017
        :pswitch_5  #00000018
    .end packed-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    const/16 v0, 0x17

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3

    invoke-static {p1}, Lcom/android/internal/policy/IKeyguardService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "com.android.internal.policy.IKeyguardService"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    packed-switch p1, :pswitch_data_126

    packed-switch p1, :pswitch_data_12c

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :pswitch_18  #0x5f4e5446
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_1c  #0x18
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/IKeyguardService$Stub;->onSystemKeyPressed(I)V

    goto/16 :goto_124

    :pswitch_28  #0x17
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/IKeyguardService$Stub;->dismissKeyguardToLaunch(Landroid/content/Intent;)V

    goto/16 :goto_124

    :pswitch_38  #0x16
    invoke-virtual {p0}, Lcom/android/internal/policy/IKeyguardService$Stub;->onShortPowerPressedGoHome()V

    goto/16 :goto_124

    :pswitch_3d  #0x15
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/internal/policy/IKeyguardService$Stub;->startKeyguardExitAnimation(JJ)V

    goto/16 :goto_124

    :pswitch_4d  #0x14
    invoke-virtual {p0}, Lcom/android/internal/policy/IKeyguardService$Stub;->onBootCompleted()V

    goto/16 :goto_124

    :pswitch_52  #0x13
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/IKeyguardService$Stub;->setCurrentUser(I)V

    goto/16 :goto_124

    :pswitch_5e  #0x12
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/IKeyguardService$Stub;->setSwitchingUser(Z)V

    goto/16 :goto_124

    :pswitch_6a  #0x11
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/IKeyguardService$Stub;->doKeyguardTimeout(Landroid/os/Bundle;)V

    goto/16 :goto_124

    :pswitch_7a  #0x10
    invoke-virtual {p0}, Lcom/android/internal/policy/IKeyguardService$Stub;->onSystemReady()V

    goto/16 :goto_124

    :pswitch_7f  #0xf
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/IKeyguardService$Stub;->setKeyguardEnabled(Z)V

    goto/16 :goto_124

    :pswitch_8b  #0xe
    invoke-virtual {p0}, Lcom/android/internal/policy/IKeyguardService$Stub;->onScreenTurnedOff()V

    goto/16 :goto_124

    :pswitch_90  #0xd
    invoke-virtual {p0}, Lcom/android/internal/policy/IKeyguardService$Stub;->onScreenTurningOff()V

    goto/16 :goto_124

    :pswitch_95  #0xc
    invoke-virtual {p0}, Lcom/android/internal/policy/IKeyguardService$Stub;->onScreenTurnedOn()V

    goto/16 :goto_124

    :pswitch_9a  #0xb
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/policy/IKeyguardDrawnCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/policy/IKeyguardDrawnCallback;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/IKeyguardService$Stub;->onScreenTurningOn(Lcom/android/internal/policy/IKeyguardDrawnCallback;)V

    goto/16 :goto_124

    :pswitch_aa  #0xa
    invoke-virtual {p0}, Lcom/android/internal/policy/IKeyguardService$Stub;->onFinishedWakingUp()V

    goto/16 :goto_124

    :pswitch_af  #0x9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/policy/IKeyguardService$Stub;->onStartedWakingUp(IZ)V

    goto :goto_124

    :pswitch_be  #0x8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/policy/IKeyguardService$Stub;->onFinishedGoingToSleep(IZ)V

    goto :goto_124

    :pswitch_cd  #0x7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/IKeyguardService$Stub;->onStartedGoingToSleep(I)V

    goto :goto_124

    :pswitch_d8  #0x6
    invoke-virtual {p0}, Lcom/android/internal/policy/IKeyguardService$Stub;->onDreamingStopped()V

    goto :goto_124

    :pswitch_dc  #0x5
    invoke-virtual {p0}, Lcom/android/internal/policy/IKeyguardService$Stub;->onDreamingStarted()V

    goto :goto_124

    :pswitch_e0  #0x4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/policy/IKeyguardDismissCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/policy/IKeyguardDismissCallback;

    move-result-object v2

    sget-object v3, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/policy/IKeyguardService$Stub;->dismiss(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V

    goto :goto_124

    :pswitch_f7  #0x3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/policy/IKeyguardExitCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/policy/IKeyguardExitCallback;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/IKeyguardService$Stub;->verifyUnlock(Lcom/android/internal/policy/IKeyguardExitCallback;)V

    goto :goto_124

    :pswitch_106  #0x2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/policy/IKeyguardStateCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/policy/IKeyguardStateCallback;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/IKeyguardService$Stub;->addStateMonitorCallback(Lcom/android/internal/policy/IKeyguardStateCallback;)V

    goto :goto_124

    :pswitch_115  #0x1
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/policy/IKeyguardService$Stub;->setOccluded(ZZ)V

    nop

    :goto_124
    return v1

    nop

    :pswitch_data_126
    .packed-switch 0x5f4e5446
        :pswitch_18  #5f4e5446
    .end packed-switch

    :pswitch_data_12c
    .packed-switch 0x1
        :pswitch_115  #00000001
        :pswitch_106  #00000002
        :pswitch_f7  #00000003
        :pswitch_e0  #00000004
        :pswitch_dc  #00000005
        :pswitch_d8  #00000006
        :pswitch_cd  #00000007
        :pswitch_be  #00000008
        :pswitch_af  #00000009
        :pswitch_aa  #0000000a
        :pswitch_9a  #0000000b
        :pswitch_95  #0000000c
        :pswitch_90  #0000000d
        :pswitch_8b  #0000000e
        :pswitch_7f  #0000000f
        :pswitch_7a  #00000010
        :pswitch_6a  #00000011
        :pswitch_5e  #00000012
        :pswitch_52  #00000013
        :pswitch_4d  #00000014
        :pswitch_3d  #00000015
        :pswitch_38  #00000016
        :pswitch_28  #00000017
        :pswitch_1c  #00000018
    .end packed-switch
.end method
