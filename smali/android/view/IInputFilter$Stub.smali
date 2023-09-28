# classes3.dex

.class public abstract Landroid/view/IInputFilter$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Landroid/view/IInputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/IInputFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/IInputFilter$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.view.IInputFilter"

.field static final TRANSACTION_filterInputEvent:I = 0x3

.field static final TRANSACTION_install:I = 0x1

.field static final TRANSACTION_uninstall:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.view.IInputFilter"

    invoke-virtual {p0, p0, v0}, Landroid/view/IInputFilter$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/view/IInputFilter;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "android.view.IInputFilter"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/view/IInputFilter;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Landroid/view/IInputFilter;

    return-object v1

    :cond_14
    new-instance v1, Landroid/view/IInputFilter$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/view/IInputFilter$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_10

    const/4 v0, 0x0

    return-object v0

    :pswitch_5  #0x3
    const-string v0, "filterInputEvent"

    return-object v0

    :pswitch_8  #0x2
    const-string/jumbo v0, "uninstall"

    return-object v0

    :pswitch_c  #0x1
    const-string/jumbo v0, "install"

    return-object v0

    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_c  #00000001
        :pswitch_8  #00000002
        :pswitch_5  #00000003
    .end packed-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    const/4 v0, 0x2

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3

    invoke-static {p1}, Landroid/view/IInputFilter$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    const-string v0, "android.view.IInputFilter"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    packed-switch p1, :pswitch_data_44

    packed-switch p1, :pswitch_data_4a

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :pswitch_18  #0x5f4e5446
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_1c  #0x3
    sget-object v2, Landroid/view/InputEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InputEvent;

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/view/IInputFilter$Stub;->filterInputEvent(Landroid/view/InputEvent;I)V

    goto :goto_42

    :pswitch_2f  #0x2
    invoke-virtual {p0}, Landroid/view/IInputFilter$Stub;->uninstall()V

    goto :goto_42

    :pswitch_33  #0x1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IInputFilterHost$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IInputFilterHost;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/view/IInputFilter$Stub;->install(Landroid/view/IInputFilterHost;)V

    nop

    :goto_42
    return v1

    nop

    :pswitch_data_44
    .packed-switch 0x5f4e5446
        :pswitch_18  #5f4e5446
    .end packed-switch

    :pswitch_data_4a
    .packed-switch 0x1
        :pswitch_33  #00000001
        :pswitch_2f  #00000002
        :pswitch_1c  #00000003
    .end packed-switch
.end method
