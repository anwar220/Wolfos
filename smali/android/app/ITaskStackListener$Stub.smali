# classes.dex

.class public abstract Landroid/app/ITaskStackListener$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Landroid/app/ITaskStackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ITaskStackListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ITaskStackListener$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.app.ITaskStackListener"

.field static final TRANSACTION_onActivityDismissingDockedTask:I = 0x6

.field static final TRANSACTION_onActivityForcedResizable:I = 0x5

.field static final TRANSACTION_onActivityLaunchOnSecondaryDisplayFailed:I = 0x7

.field static final TRANSACTION_onActivityLaunchOnSecondaryDisplayRerouted:I = 0x8

.field static final TRANSACTION_onActivityPinned:I = 0x2

.field static final TRANSACTION_onActivityRequestedOrientationChanged:I = 0xd

.field static final TRANSACTION_onActivityRestartAttempt:I = 0x4

.field static final TRANSACTION_onActivityRotation:I = 0x17

.field static final TRANSACTION_onActivityUnpinned:I = 0x3

.field static final TRANSACTION_onBackPressedOnTaskRoot:I = 0x11

.field static final TRANSACTION_onLockTaskModeChanged:I = 0x19

.field static final TRANSACTION_onRecentTaskListFrozenChanged:I = 0x14

.field static final TRANSACTION_onRecentTaskListUpdated:I = 0x13

.field static final TRANSACTION_onTaskCreated:I = 0x9

.field static final TRANSACTION_onTaskDescriptionChanged:I = 0xc

.field static final TRANSACTION_onTaskDisplayChanged:I = 0x12

.field static final TRANSACTION_onTaskFocusChanged:I = 0x15

.field static final TRANSACTION_onTaskMovedToBack:I = 0x18

.field static final TRANSACTION_onTaskMovedToFront:I = 0xb

.field static final TRANSACTION_onTaskProfileLocked:I = 0xf

.field static final TRANSACTION_onTaskRemovalStarted:I = 0xe

.field static final TRANSACTION_onTaskRemoved:I = 0xa

.field static final TRANSACTION_onTaskRequestedOrientationChanged:I = 0x16

.field static final TRANSACTION_onTaskSnapshotChanged:I = 0x10

.field static final TRANSACTION_onTaskStackChanged:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.app.ITaskStackListener"

    invoke-virtual {p0, p0, v0}, Landroid/app/ITaskStackListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/ITaskStackListener;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "android.app.ITaskStackListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/app/ITaskStackListener;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Landroid/app/ITaskStackListener;

    return-object v1

    :cond_14
    new-instance v1, Landroid/app/ITaskStackListener$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/ITaskStackListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_6a

    const/4 v0, 0x0

    return-object v0

    :pswitch_5  #0x19
    const-string/jumbo v0, "onLockTaskModeChanged"

    return-object v0

    :pswitch_9  #0x18
    const-string/jumbo v0, "onTaskMovedToBack"

    return-object v0

    :pswitch_d  #0x17
    const-string/jumbo v0, "onActivityRotation"

    return-object v0

    :pswitch_11  #0x16
    const-string/jumbo v0, "onTaskRequestedOrientationChanged"

    return-object v0

    :pswitch_15  #0x15
    const-string/jumbo v0, "onTaskFocusChanged"

    return-object v0

    :pswitch_19  #0x14
    const-string/jumbo v0, "onRecentTaskListFrozenChanged"

    return-object v0

    :pswitch_1d  #0x13
    const-string/jumbo v0, "onRecentTaskListUpdated"

    return-object v0

    :pswitch_21  #0x12
    const-string/jumbo v0, "onTaskDisplayChanged"

    return-object v0

    :pswitch_25  #0x11
    const-string/jumbo v0, "onBackPressedOnTaskRoot"

    return-object v0

    :pswitch_29  #0x10
    const-string/jumbo v0, "onTaskSnapshotChanged"

    return-object v0

    :pswitch_2d  #0xf
    const-string/jumbo v0, "onTaskProfileLocked"

    return-object v0

    :pswitch_31  #0xe
    const-string/jumbo v0, "onTaskRemovalStarted"

    return-object v0

    :pswitch_35  #0xd
    const-string/jumbo v0, "onActivityRequestedOrientationChanged"

    return-object v0

    :pswitch_39  #0xc
    const-string/jumbo v0, "onTaskDescriptionChanged"

    return-object v0

    :pswitch_3d  #0xb
    const-string/jumbo v0, "onTaskMovedToFront"

    return-object v0

    :pswitch_41  #0xa
    const-string/jumbo v0, "onTaskRemoved"

    return-object v0

    :pswitch_45  #0x9
    const-string/jumbo v0, "onTaskCreated"

    return-object v0

    :pswitch_49  #0x8
    const-string/jumbo v0, "onActivityLaunchOnSecondaryDisplayRerouted"

    return-object v0

    :pswitch_4d  #0x7
    const-string/jumbo v0, "onActivityLaunchOnSecondaryDisplayFailed"

    return-object v0

    :pswitch_51  #0x6
    const-string/jumbo v0, "onActivityDismissingDockedTask"

    return-object v0

    :pswitch_55  #0x5
    const-string/jumbo v0, "onActivityForcedResizable"

    return-object v0

    :pswitch_59  #0x4
    const-string/jumbo v0, "onActivityRestartAttempt"

    return-object v0

    :pswitch_5d  #0x3
    const-string/jumbo v0, "onActivityUnpinned"

    return-object v0

    :pswitch_61  #0x2
    const-string/jumbo v0, "onActivityPinned"

    return-object v0

    :pswitch_65  #0x1
    const-string/jumbo v0, "onTaskStackChanged"

    return-object v0

    nop

    :pswitch_data_6a
    .packed-switch 0x1
        :pswitch_65  #00000001
        :pswitch_61  #00000002
        :pswitch_5d  #00000003
        :pswitch_59  #00000004
        :pswitch_55  #00000005
        :pswitch_51  #00000006
        :pswitch_4d  #00000007
        :pswitch_49  #00000008
        :pswitch_45  #00000009
        :pswitch_41  #0000000a
        :pswitch_3d  #0000000b
        :pswitch_39  #0000000c
        :pswitch_35  #0000000d
        :pswitch_31  #0000000e
        :pswitch_2d  #0000000f
        :pswitch_29  #00000010
        :pswitch_25  #00000011
        :pswitch_21  #00000012
        :pswitch_1d  #00000013
        :pswitch_19  #00000014
        :pswitch_15  #00000015
        :pswitch_11  #00000016
        :pswitch_d  #00000017
        :pswitch_9  #00000018
        :pswitch_5  #00000019
    .end packed-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    const/16 v0, 0x18

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3

    invoke-static {p1}, Landroid/app/ITaskStackListener$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    const-string v0, "android.app.ITaskStackListener"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    packed-switch p1, :pswitch_data_192

    packed-switch p1, :pswitch_data_198

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :pswitch_18  #0x5f4e5446
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_1c  #0x19
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/app/ITaskStackListener$Stub;->onLockTaskModeChanged(I)V

    goto/16 :goto_190

    :pswitch_28  #0x18
    sget-object v2, Landroid/app/ActivityManager$RunningTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/app/ITaskStackListener$Stub;->onTaskMovedToBack(Landroid/app/ActivityManager$RunningTaskInfo;)V

    goto/16 :goto_190

    :pswitch_38  #0x17
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/app/ITaskStackListener$Stub;->onActivityRotation(I)V

    goto/16 :goto_190

    :pswitch_44  #0x16
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/app/ITaskStackListener$Stub;->onTaskRequestedOrientationChanged(II)V

    goto/16 :goto_190

    :pswitch_54  #0x15
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/app/ITaskStackListener$Stub;->onTaskFocusChanged(IZ)V

    goto/16 :goto_190

    :pswitch_64  #0x14
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/app/ITaskStackListener$Stub;->onRecentTaskListFrozenChanged(Z)V

    goto/16 :goto_190

    :pswitch_70  #0x13
    invoke-virtual {p0}, Landroid/app/ITaskStackListener$Stub;->onRecentTaskListUpdated()V

    goto/16 :goto_190

    :pswitch_75  #0x12
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/app/ITaskStackListener$Stub;->onTaskDisplayChanged(II)V

    goto/16 :goto_190

    :pswitch_85  #0x11
    sget-object v2, Landroid/app/ActivityManager$RunningTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/app/ITaskStackListener$Stub;->onBackPressedOnTaskRoot(Landroid/app/ActivityManager$RunningTaskInfo;)V

    goto/16 :goto_190

    :pswitch_95  #0x10
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    sget-object v3, Landroid/window/TaskSnapshot;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/window/TaskSnapshot;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/app/ITaskStackListener$Stub;->onTaskSnapshotChanged(ILandroid/window/TaskSnapshot;)V

    goto/16 :goto_190

    :pswitch_a9  #0xf
    sget-object v2, Landroid/app/ActivityManager$RunningTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/app/ITaskStackListener$Stub;->onTaskProfileLocked(Landroid/app/ActivityManager$RunningTaskInfo;)V

    goto/16 :goto_190

    :pswitch_b9  #0xe
    sget-object v2, Landroid/app/ActivityManager$RunningTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/app/ITaskStackListener$Stub;->onTaskRemovalStarted(Landroid/app/ActivityManager$RunningTaskInfo;)V

    goto/16 :goto_190

    :pswitch_c9  #0xd
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/app/ITaskStackListener$Stub;->onActivityRequestedOrientationChanged(II)V

    goto/16 :goto_190

    :pswitch_d9  #0xc
    sget-object v2, Landroid/app/ActivityManager$RunningTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/app/ITaskStackListener$Stub;->onTaskDescriptionChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V

    goto/16 :goto_190

    :pswitch_e9  #0xb
    sget-object v2, Landroid/app/ActivityManager$RunningTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/app/ITaskStackListener$Stub;->onTaskMovedToFront(Landroid/app/ActivityManager$RunningTaskInfo;)V

    goto/16 :goto_190

    :pswitch_f9  #0xa
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/app/ITaskStackListener$Stub;->onTaskRemoved(I)V

    goto/16 :goto_190

    :pswitch_105  #0x9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/app/ITaskStackListener$Stub;->onTaskCreated(ILandroid/content/ComponentName;)V

    goto/16 :goto_190

    :pswitch_119  #0x8
    sget-object v2, Landroid/app/ActivityManager$RunningTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/app/ITaskStackListener$Stub;->onActivityLaunchOnSecondaryDisplayRerouted(Landroid/app/ActivityManager$RunningTaskInfo;I)V

    goto :goto_190

    :pswitch_12c  #0x7
    sget-object v2, Landroid/app/ActivityManager$RunningTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/app/ITaskStackListener$Stub;->onActivityLaunchOnSecondaryDisplayFailed(Landroid/app/ActivityManager$RunningTaskInfo;I)V

    goto :goto_190

    :pswitch_13f  #0x6
    invoke-virtual {p0}, Landroid/app/ITaskStackListener$Stub;->onActivityDismissingDockedTask()V

    goto :goto_190

    :pswitch_143  #0x5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4}, Landroid/app/ITaskStackListener$Stub;->onActivityForcedResizable(Ljava/lang/String;II)V

    goto :goto_190

    :pswitch_156  #0x4
    sget-object v2, Landroid/app/ActivityManager$RunningTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/app/ITaskStackListener$Stub;->onActivityRestartAttempt(Landroid/app/ActivityManager$RunningTaskInfo;ZZZ)V

    goto :goto_190

    :pswitch_171  #0x3
    invoke-virtual {p0}, Landroid/app/ITaskStackListener$Stub;->onActivityUnpinned()V

    goto :goto_190

    :pswitch_175  #0x2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/app/ITaskStackListener$Stub;->onActivityPinned(Ljava/lang/String;III)V

    goto :goto_190

    :pswitch_18c  #0x1
    invoke-virtual {p0}, Landroid/app/ITaskStackListener$Stub;->onTaskStackChanged()V

    nop

    :goto_190
    return v1

    nop

    :pswitch_data_192
    .packed-switch 0x5f4e5446
        :pswitch_18  #5f4e5446
    .end packed-switch

    :pswitch_data_198
    .packed-switch 0x1
        :pswitch_18c  #00000001
        :pswitch_175  #00000002
        :pswitch_171  #00000003
        :pswitch_156  #00000004
        :pswitch_143  #00000005
        :pswitch_13f  #00000006
        :pswitch_12c  #00000007
        :pswitch_119  #00000008
        :pswitch_105  #00000009
        :pswitch_f9  #0000000a
        :pswitch_e9  #0000000b
        :pswitch_d9  #0000000c
        :pswitch_c9  #0000000d
        :pswitch_b9  #0000000e
        :pswitch_a9  #0000000f
        :pswitch_95  #00000010
        :pswitch_85  #00000011
        :pswitch_75  #00000012
        :pswitch_70  #00000013
        :pswitch_64  #00000014
        :pswitch_54  #00000015
        :pswitch_44  #00000016
        :pswitch_38  #00000017
        :pswitch_28  #00000018
        :pswitch_1c  #00000019
    .end packed-switch
.end method
