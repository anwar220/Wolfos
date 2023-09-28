# classes4.dex

.class public abstract Landroid/window/IWindowOrganizerController$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Landroid/window/IWindowOrganizerController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/IWindowOrganizerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/IWindowOrganizerController$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_applySyncTransaction:I = 0x2

.field static final TRANSACTION_applyTransaction:I = 0x1

.field static final TRANSACTION_finishTransition:I = 0x5

.field static final TRANSACTION_getDisplayAreaOrganizerController:I = 0x7

.field static final TRANSACTION_getTaskFragmentOrganizerController:I = 0x8

.field static final TRANSACTION_getTaskOrganizerController:I = 0x6

.field static final TRANSACTION_getTransitionMetricsReporter:I = 0xa

.field static final TRANSACTION_registerTransitionPlayer:I = 0x9

.field static final TRANSACTION_startLegacyTransition:I = 0x4

.field static final TRANSACTION_startTransition:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.window.IWindowOrganizerController"

    invoke-virtual {p0, p0, v0}, Landroid/window/IWindowOrganizerController$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/window/IWindowOrganizerController;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "android.window.IWindowOrganizerController"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/window/IWindowOrganizerController;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Landroid/window/IWindowOrganizerController;

    return-object v1

    :cond_14
    new-instance v1, Landroid/window/IWindowOrganizerController$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/window/IWindowOrganizerController$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_26

    const/4 v0, 0x0

    return-object v0

    :pswitch_5  #0xa
    const-string v0, "getTransitionMetricsReporter"

    return-object v0

    :pswitch_8  #0x9
    const-string/jumbo v0, "registerTransitionPlayer"

    return-object v0

    :pswitch_c  #0x8
    const-string v0, "getTaskFragmentOrganizerController"

    return-object v0

    :pswitch_f  #0x7
    const-string v0, "getDisplayAreaOrganizerController"

    return-object v0

    :pswitch_12  #0x6
    const-string v0, "getTaskOrganizerController"

    return-object v0

    :pswitch_15  #0x5
    const-string v0, "finishTransition"

    return-object v0

    :pswitch_18  #0x4
    const-string/jumbo v0, "startLegacyTransition"

    return-object v0

    :pswitch_1c  #0x3
    const-string/jumbo v0, "startTransition"

    return-object v0

    :pswitch_20  #0x2
    const-string v0, "applySyncTransaction"

    return-object v0

    :pswitch_23  #0x1
    const-string v0, "applyTransaction"

    return-object v0

    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_23  #00000001
        :pswitch_20  #00000002
        :pswitch_1c  #00000003
        :pswitch_18  #00000004
        :pswitch_15  #00000005
        :pswitch_12  #00000006
        :pswitch_f  #00000007
        :pswitch_c  #00000008
        :pswitch_8  #00000009
        :pswitch_5  #0000000a
    .end packed-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    const/16 v0, 0x9

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3

    invoke-static {p1}, Landroid/window/IWindowOrganizerController$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "android.window.IWindowOrganizerController"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    packed-switch p1, :pswitch_data_fc

    packed-switch p1, :pswitch_data_102

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :pswitch_18  #0x5f4e5446
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_1c  #0xa
    invoke-virtual {p0}, Landroid/window/IWindowOrganizerController$Stub;->getTransitionMetricsReporter()Landroid/window/ITransitionMetricsReporter;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    goto/16 :goto_fa

    :pswitch_28  #0x9
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/window/ITransitionPlayer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/window/ITransitionPlayer;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/window/IWindowOrganizerController$Stub;->registerTransitionPlayer(Landroid/window/ITransitionPlayer;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_fa

    :pswitch_3b  #0x8
    invoke-virtual {p0}, Landroid/window/IWindowOrganizerController$Stub;->getTaskFragmentOrganizerController()Landroid/window/ITaskFragmentOrganizerController;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    goto/16 :goto_fa

    :pswitch_47  #0x7
    invoke-virtual {p0}, Landroid/window/IWindowOrganizerController$Stub;->getDisplayAreaOrganizerController()Landroid/window/IDisplayAreaOrganizerController;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    goto/16 :goto_fa

    :pswitch_53  #0x6
    invoke-virtual {p0}, Landroid/window/IWindowOrganizerController$Stub;->getTaskOrganizerController()Landroid/window/ITaskOrganizerController;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    goto/16 :goto_fa

    :pswitch_5f  #0x5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    sget-object v3, Landroid/window/WindowContainerTransaction;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/window/WindowContainerTransaction;

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/window/IWindowContainerTransactionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/window/IWindowContainerTransactionCallback;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4}, Landroid/window/IWindowOrganizerController$Stub;->finishTransition(Landroid/os/IBinder;Landroid/window/WindowContainerTransaction;Landroid/window/IWindowContainerTransactionCallback;)I

    move-result v5

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_fa

    :pswitch_82  #0x4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    sget-object v3, Landroid/view/RemoteAnimationAdapter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/RemoteAnimationAdapter;

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/window/IWindowContainerTransactionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/window/IWindowContainerTransactionCallback;

    move-result-object v4

    sget-object v5, Landroid/window/WindowContainerTransaction;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/window/WindowContainerTransaction;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/window/IWindowOrganizerController$Stub;->startLegacyTransition(ILandroid/view/RemoteAnimationAdapter;Landroid/window/IWindowContainerTransactionCallback;Landroid/window/WindowContainerTransaction;)I

    move-result v6

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_fa

    :pswitch_ac  #0x3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    sget-object v4, Landroid/window/WindowContainerTransaction;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/window/WindowContainerTransaction;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4}, Landroid/window/IWindowOrganizerController$Stub;->startTransition(ILandroid/os/IBinder;Landroid/window/WindowContainerTransaction;)Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto :goto_fa

    :pswitch_ca  #0x2
    sget-object v2, Landroid/window/WindowContainerTransaction;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/WindowContainerTransaction;

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/window/IWindowContainerTransactionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/window/IWindowContainerTransactionCallback;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/window/IWindowOrganizerController$Stub;->applySyncTransaction(Landroid/window/WindowContainerTransaction;Landroid/window/IWindowContainerTransactionCallback;)I

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_fa

    :pswitch_e8  #0x1
    sget-object v2, Landroid/window/WindowContainerTransaction;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/WindowContainerTransaction;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/window/IWindowOrganizerController$Stub;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    nop

    :goto_fa
    return v1

    nop

    :pswitch_data_fc
    .packed-switch 0x5f4e5446
        :pswitch_18  #5f4e5446
    .end packed-switch

    :pswitch_data_102
    .packed-switch 0x1
        :pswitch_e8  #00000001
        :pswitch_ca  #00000002
        :pswitch_ac  #00000003
        :pswitch_82  #00000004
        :pswitch_5f  #00000005
        :pswitch_53  #00000006
        :pswitch_47  #00000007
        :pswitch_3b  #00000008
        :pswitch_28  #00000009
        :pswitch_1c  #0000000a
    .end packed-switch
.end method
