# classes2.dex

.class public abstract Landroid/view/contentcapture/IDataShareWriteAdapter$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Landroid/view/contentcapture/IDataShareWriteAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/contentcapture/IDataShareWriteAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/contentcapture/IDataShareWriteAdapter$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_error:I = 0x2

.field static final TRANSACTION_finish:I = 0x4

.field static final TRANSACTION_rejected:I = 0x3

.field static final TRANSACTION_write:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.view.contentcapture.IDataShareWriteAdapter"

    invoke-virtual {p0, p0, v0}, Landroid/view/contentcapture/IDataShareWriteAdapter$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/view/contentcapture/IDataShareWriteAdapter;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "android.view.contentcapture.IDataShareWriteAdapter"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/view/contentcapture/IDataShareWriteAdapter;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Landroid/view/contentcapture/IDataShareWriteAdapter;

    return-object v1

    :cond_14
    new-instance v1, Landroid/view/contentcapture/IDataShareWriteAdapter$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/view/contentcapture/IDataShareWriteAdapter$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_12

    const/4 v0, 0x0

    return-object v0

    :pswitch_5  #0x4
    const-string v0, "finish"

    return-object v0

    :pswitch_8  #0x3
    const-string v0, "rejected"

    return-object v0

    :pswitch_b  #0x2
    const-string v0, "error"

    return-object v0

    :pswitch_e  #0x1
    const-string v0, "write"

    return-object v0

    nop

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_e  #00000001
        :pswitch_b  #00000002
        :pswitch_8  #00000003
        :pswitch_5  #00000004
    .end packed-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    const/4 v0, 0x3

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3

    invoke-static {p1}, Landroid/view/contentcapture/IDataShareWriteAdapter$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    const-string v0, "android.view.contentcapture.IDataShareWriteAdapter"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    packed-switch p1, :pswitch_data_40

    packed-switch p1, :pswitch_data_46

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :pswitch_18  #0x5f4e5446
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_1c  #0x4
    invoke-virtual {p0}, Landroid/view/contentcapture/IDataShareWriteAdapter$Stub;->finish()V

    goto :goto_3e

    :pswitch_20  #0x3
    invoke-virtual {p0}, Landroid/view/contentcapture/IDataShareWriteAdapter$Stub;->rejected()V

    goto :goto_3e

    :pswitch_24  #0x2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/view/contentcapture/IDataShareWriteAdapter$Stub;->error(I)V

    goto :goto_3e

    :pswitch_2f  #0x1
    sget-object v2, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/view/contentcapture/IDataShareWriteAdapter$Stub;->write(Landroid/os/ParcelFileDescriptor;)V

    nop

    :goto_3e
    return v1

    nop

    :pswitch_data_40
    .packed-switch 0x5f4e5446
        :pswitch_18  #5f4e5446
    .end packed-switch

    :pswitch_data_46
    .packed-switch 0x1
        :pswitch_2f  #00000001
        :pswitch_24  #00000002
        :pswitch_20  #00000003
        :pswitch_1c  #00000004
    .end packed-switch
.end method
