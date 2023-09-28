# classes4.dex

.class public abstract Lmiui/app/IFreeformCallback$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Lmiui/app/IFreeformCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/IFreeformCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/app/IFreeformCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_dispatchFreeFormStackModeChanged:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "miui.app.IFreeformCallback"

    invoke-virtual {p0, p0, v0}, Lmiui/app/IFreeformCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lmiui/app/IFreeformCallback;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string/jumbo v0, "miui.app.IFreeformCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_15

    instance-of v1, v0, Lmiui/app/IFreeformCallback;

    if-eqz v1, :cond_15

    move-object v1, v0

    check-cast v1, Lmiui/app/IFreeformCallback;

    return-object v1

    :cond_15
    new-instance v1, Lmiui/app/IFreeformCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Lmiui/app/IFreeformCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_8

    const/4 v0, 0x0

    return-object v0

    :pswitch_5  #0x1
    const-string v0, "dispatchFreeFormStackModeChanged"

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

    invoke-static {p1}, Lmiui/app/IFreeformCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    const-string/jumbo v0, "miui.app.IFreeformCallback"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_e
    packed-switch p1, :pswitch_data_32

    packed-switch p1, :pswitch_data_38

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :pswitch_19  #0x5f4e5446
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_1d  #0x1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    sget-object v3, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Lmiui/app/IFreeformCallback$Stub;->dispatchFreeFormStackModeChanged(ILmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;)V

    nop

    return v1

    nop

    :pswitch_data_32
    .packed-switch 0x5f4e5446
        :pswitch_19  #5f4e5446
    .end packed-switch

    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_1d  #00000001
    .end packed-switch
.end method
