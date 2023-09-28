# classes.dex

.class public abstract Landroid/app/admin/IKeyguardCallback$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Landroid/app/admin/IKeyguardCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/admin/IKeyguardCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/admin/IKeyguardCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_onDismiss:I = 0x2

.field static final TRANSACTION_onRemoteContentReady:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.app.admin.IKeyguardCallback"

    invoke-virtual {p0, p0, v0}, Landroid/app/admin/IKeyguardCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/admin/IKeyguardCallback;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "android.app.admin.IKeyguardCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/app/admin/IKeyguardCallback;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Landroid/app/admin/IKeyguardCallback;

    return-object v1

    :cond_14
    new-instance v1, Landroid/app/admin/IKeyguardCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/admin/IKeyguardCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_e

    const/4 v0, 0x0

    return-object v0

    :pswitch_5  #0x2
    const-string/jumbo v0, "onDismiss"

    return-object v0

    :pswitch_9  #0x1
    const-string/jumbo v0, "onRemoteContentReady"

    return-object v0

    nop

    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_9  #00000001
        :pswitch_5  #00000002
    .end packed-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3

    invoke-static {p1}, Landroid/app/admin/IKeyguardCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "android.app.admin.IKeyguardCallback"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    packed-switch p1, :pswitch_data_30

    packed-switch p1, :pswitch_data_36

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :pswitch_18  #0x5f4e5446
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_1c  #0x2
    invoke-virtual {p0}, Landroid/app/admin/IKeyguardCallback$Stub;->onDismiss()V

    goto :goto_2f

    :pswitch_20  #0x1
    sget-object v2, Landroid/view/SurfaceControlViewHost$SurfacePackage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/SurfaceControlViewHost$SurfacePackage;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/app/admin/IKeyguardCallback$Stub;->onRemoteContentReady(Landroid/view/SurfaceControlViewHost$SurfacePackage;)V

    nop

    :goto_2f
    return v1

    :pswitch_data_30
    .packed-switch 0x5f4e5446
        :pswitch_18  #5f4e5446
    .end packed-switch

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_20  #00000001
        :pswitch_1c  #00000002
    .end packed-switch
.end method
