# classes4.dex

.class public abstract Lmiui/app/IMiuiMultiWinSplitManager$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Lmiui/app/IMiuiMultiWinSplitManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/IMiuiMultiWinSplitManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/app/IMiuiMultiWinSplitManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_adjustToSplitWindingMode:I = 0x4

.field static final TRANSACTION_getSplitRootTasksPos:I = 0x2

.field static final TRANSACTION_getTouchOffsetInTask:I = 0x5

.field static final TRANSACTION_handleMultiWindowSwitch:I = 0x1

.field static final TRANSACTION_isSupportDragForMultiWin:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "miui.app.IMiuiMultiWinSplitManager"

    invoke-virtual {p0, p0, v0}, Lmiui/app/IMiuiMultiWinSplitManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lmiui/app/IMiuiMultiWinSplitManager;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string/jumbo v0, "miui.app.IMiuiMultiWinSplitManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_15

    instance-of v1, v0, Lmiui/app/IMiuiMultiWinSplitManager;

    if-eqz v1, :cond_15

    move-object v1, v0

    check-cast v1, Lmiui/app/IMiuiMultiWinSplitManager;

    return-object v1

    :cond_15
    new-instance v1, Lmiui/app/IMiuiMultiWinSplitManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lmiui/app/IMiuiMultiWinSplitManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_14

    const/4 v0, 0x0

    return-object v0

    :pswitch_5  #0x5
    const-string v0, "getTouchOffsetInTask"

    return-object v0

    :pswitch_8  #0x4
    const-string v0, "adjustToSplitWindingMode"

    return-object v0

    :pswitch_b  #0x3
    const-string v0, "isSupportDragForMultiWin"

    return-object v0

    :pswitch_e  #0x2
    const-string v0, "getSplitRootTasksPos"

    return-object v0

    :pswitch_11  #0x1
    const-string v0, "handleMultiWindowSwitch"

    return-object v0

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_11  #00000001
        :pswitch_e  #00000002
        :pswitch_b  #00000003
        :pswitch_8  #00000004
        :pswitch_5  #00000005
    .end packed-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    const/4 v0, 0x4

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3

    invoke-static {p1}, Lmiui/app/IMiuiMultiWinSplitManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    const-string/jumbo v0, "miui.app.IMiuiMultiWinSplitManager"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_e
    packed-switch p1, :pswitch_data_88

    packed-switch p1, :pswitch_data_8e

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :pswitch_19  #0x5f4e5446
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_1d  #0x5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    sget-object v3, Landroid/graphics/Point;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Point;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Lmiui/app/IMiuiMultiWinSplitManager$Stub;->getTouchOffsetInTask(Landroid/os/IBinder;Landroid/graphics/Point;)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto :goto_86

    :pswitch_3a  #0x4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lmiui/app/IMiuiMultiWinSplitManager$Stub;->adjustToSplitWindingMode(Landroid/os/IBinder;)I

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_86

    :pswitch_4c  #0x3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lmiui/app/IMiuiMultiWinSplitManager$Stub;->isSupportDragForMultiWin(Landroid/os/IBinder;)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_86

    :pswitch_5e  #0x2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lmiui/app/IMiuiMultiWinSplitManager$Stub;->getSplitRootTasksPos(I)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto :goto_86

    :pswitch_70  #0x1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Lmiui/app/IMiuiMultiWinSplitManager$Stub;->handleMultiWindowSwitch(Landroid/os/IBinder;Landroid/os/Bundle;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    nop

    :goto_86
    return v1

    nop

    :pswitch_data_88
    .packed-switch 0x5f4e5446
        :pswitch_19  #5f4e5446
    .end packed-switch

    :pswitch_data_8e
    .packed-switch 0x1
        :pswitch_70  #00000001
        :pswitch_5e  #00000002
        :pswitch_4c  #00000003
        :pswitch_3a  #00000004
        :pswitch_1d  #00000005
    .end packed-switch
.end method
