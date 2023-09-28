# classes4.dex

.class public abstract Landroid/window/ITaskOrganizer$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Landroid/window/ITaskOrganizer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/ITaskOrganizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/ITaskOrganizer$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_addStartingWindow:I = 0x1

.field static final TRANSACTION_copySplashScreenView:I = 0x3

.field static final TRANSACTION_enterSplitScreen:I = 0xa

.field static final TRANSACTION_exitSplitScreen:I = 0xc

.field static final TRANSACTION_onAppSplashScreenViewRemoved:I = 0x4

.field static final TRANSACTION_onBackPressedOnTaskRoot:I = 0x8

.field static final TRANSACTION_onImeDrawnOnTask:I = 0x9

.field static final TRANSACTION_onTaskAppeared:I = 0x5

.field static final TRANSACTION_onTaskInfoChanged:I = 0x7

.field static final TRANSACTION_onTaskVanished:I = 0x6

.field static final TRANSACTION_removeStartingWindow:I = 0x2

.field static final TRANSACTION_swapSplitTasks:I = 0xb


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.window.ITaskOrganizer"

    invoke-virtual {p0, p0, v0}, Landroid/window/ITaskOrganizer$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/window/ITaskOrganizer;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "android.window.ITaskOrganizer"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/window/ITaskOrganizer;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Landroid/window/ITaskOrganizer;

    return-object v1

    :cond_14
    new-instance v1, Landroid/window/ITaskOrganizer$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/window/ITaskOrganizer$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_32

    const/4 v0, 0x0

    return-object v0

    :pswitch_5  #0xc
    const-string v0, "exitSplitScreen"

    return-object v0

    :pswitch_8  #0xb
    const-string/jumbo v0, "swapSplitTasks"

    return-object v0

    :pswitch_c  #0xa
    const-string v0, "enterSplitScreen"

    return-object v0

    :pswitch_f  #0x9
    const-string/jumbo v0, "onImeDrawnOnTask"

    return-object v0

    :pswitch_13  #0x8
    const-string/jumbo v0, "onBackPressedOnTaskRoot"

    return-object v0

    :pswitch_17  #0x7
    const-string/jumbo v0, "onTaskInfoChanged"

    return-object v0

    :pswitch_1b  #0x6
    const-string/jumbo v0, "onTaskVanished"

    return-object v0

    :pswitch_1f  #0x5
    const-string/jumbo v0, "onTaskAppeared"

    return-object v0

    :pswitch_23  #0x4
    const-string/jumbo v0, "onAppSplashScreenViewRemoved"

    return-object v0

    :pswitch_27  #0x3
    const-string v0, "copySplashScreenView"

    return-object v0

    :pswitch_2a  #0x2
    const-string/jumbo v0, "removeStartingWindow"

    return-object v0

    :pswitch_2e  #0x1
    const-string v0, "addStartingWindow"

    return-object v0

    nop

    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_2e  #00000001
        :pswitch_2a  #00000002
        :pswitch_27  #00000003
        :pswitch_23  #00000004
        :pswitch_1f  #00000005
        :pswitch_1b  #00000006
        :pswitch_17  #00000007
        :pswitch_13  #00000008
        :pswitch_f  #00000009
        :pswitch_c  #0000000a
        :pswitch_8  #0000000b
        :pswitch_5  #0000000c
    .end packed-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    const/16 v0, 0xb

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3

    invoke-static {p1}, Landroid/window/ITaskOrganizer$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    const-string v0, "android.window.ITaskOrganizer"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    packed-switch p1, :pswitch_data_c6

    packed-switch p1, :pswitch_data_cc

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :pswitch_18  #0x5f4e5446
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_1c  #0xc
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/window/ITaskOrganizer$Stub;->exitSplitScreen(I)V

    goto/16 :goto_c5

    :pswitch_28  #0xb
    invoke-virtual {p0}, Landroid/window/ITaskOrganizer$Stub;->swapSplitTasks()V

    goto/16 :goto_c5

    :pswitch_2d  #0xa
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/window/ITaskOrganizer$Stub;->enterSplitScreen(IZ)V

    goto/16 :goto_c5

    :pswitch_3d  #0x9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/window/ITaskOrganizer$Stub;->onImeDrawnOnTask(I)V

    goto/16 :goto_c5

    :pswitch_49  #0x8
    sget-object v2, Landroid/app/ActivityManager$RunningTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/window/ITaskOrganizer$Stub;->onBackPressedOnTaskRoot(Landroid/app/ActivityManager$RunningTaskInfo;)V

    goto :goto_c5

    :pswitch_58  #0x7
    sget-object v2, Landroid/app/ActivityManager$RunningTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/window/ITaskOrganizer$Stub;->onTaskInfoChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V

    goto :goto_c5

    :pswitch_67  #0x6
    sget-object v2, Landroid/app/ActivityManager$RunningTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/window/ITaskOrganizer$Stub;->onTaskVanished(Landroid/app/ActivityManager$RunningTaskInfo;)V

    goto :goto_c5

    :pswitch_76  #0x5
    sget-object v2, Landroid/app/ActivityManager$RunningTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    sget-object v3, Landroid/view/SurfaceControl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/SurfaceControl;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/window/ITaskOrganizer$Stub;->onTaskAppeared(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V

    goto :goto_c5

    :pswitch_8d  #0x4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/window/ITaskOrganizer$Stub;->onAppSplashScreenViewRemoved(I)V

    goto :goto_c5

    :pswitch_98  #0x3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/window/ITaskOrganizer$Stub;->copySplashScreenView(I)V

    goto :goto_c5

    :pswitch_a3  #0x2
    sget-object v2, Landroid/window/StartingWindowRemovalInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/StartingWindowRemovalInfo;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/window/ITaskOrganizer$Stub;->removeStartingWindow(Landroid/window/StartingWindowRemovalInfo;)V

    goto :goto_c5

    :pswitch_b2  #0x1
    sget-object v2, Landroid/window/StartingWindowInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/StartingWindowInfo;

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/window/ITaskOrganizer$Stub;->addStartingWindow(Landroid/window/StartingWindowInfo;Landroid/os/IBinder;)V

    nop

    :goto_c5
    return v1

    :pswitch_data_c6
    .packed-switch 0x5f4e5446
        :pswitch_18  #5f4e5446
    .end packed-switch

    :pswitch_data_cc
    .packed-switch 0x1
        :pswitch_b2  #00000001
        :pswitch_a3  #00000002
        :pswitch_98  #00000003
        :pswitch_8d  #00000004
        :pswitch_76  #00000005
        :pswitch_67  #00000006
        :pswitch_58  #00000007
        :pswitch_49  #00000008
        :pswitch_3d  #00000009
        :pswitch_2d  #0000000a
        :pswitch_28  #0000000b
        :pswitch_1c  #0000000c
    .end packed-switch
.end method
