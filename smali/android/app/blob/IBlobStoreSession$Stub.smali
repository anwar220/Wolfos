# classes.dex

.class public abstract Landroid/app/blob/IBlobStoreSession$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Landroid/app/blob/IBlobStoreSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/blob/IBlobStoreSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/blob/IBlobStoreSession$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_abandon:I = 0xb

.field static final TRANSACTION_allowPackageAccess:I = 0x3

.field static final TRANSACTION_allowPublicAccess:I = 0x5

.field static final TRANSACTION_allowSameSignatureAccess:I = 0x4

.field static final TRANSACTION_close:I = 0xa

.field static final TRANSACTION_commit:I = 0xc

.field static final TRANSACTION_getSize:I = 0x9

.field static final TRANSACTION_isPackageAccessAllowed:I = 0x6

.field static final TRANSACTION_isPublicAccessAllowed:I = 0x8

.field static final TRANSACTION_isSameSignatureAccessAllowed:I = 0x7

.field static final TRANSACTION_openRead:I = 0x2

.field static final TRANSACTION_openWrite:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.app.blob.IBlobStoreSession"

    invoke-virtual {p0, p0, v0}, Landroid/app/blob/IBlobStoreSession$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/blob/IBlobStoreSession;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "android.app.blob.IBlobStoreSession"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/app/blob/IBlobStoreSession;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Landroid/app/blob/IBlobStoreSession;

    return-object v1

    :cond_14
    new-instance v1, Landroid/app/blob/IBlobStoreSession$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/blob/IBlobStoreSession$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_2c

    const/4 v0, 0x0

    return-object v0

    :pswitch_5  #0xc
    const-string v0, "commit"

    return-object v0

    :pswitch_8  #0xb
    const-string v0, "abandon"

    return-object v0

    :pswitch_b  #0xa
    const-string v0, "close"

    return-object v0

    :pswitch_e  #0x9
    const-string v0, "getSize"

    return-object v0

    :pswitch_11  #0x8
    const-string v0, "isPublicAccessAllowed"

    return-object v0

    :pswitch_14  #0x7
    const-string v0, "isSameSignatureAccessAllowed"

    return-object v0

    :pswitch_17  #0x6
    const-string v0, "isPackageAccessAllowed"

    return-object v0

    :pswitch_1a  #0x5
    const-string v0, "allowPublicAccess"

    return-object v0

    :pswitch_1d  #0x4
    const-string v0, "allowSameSignatureAccess"

    return-object v0

    :pswitch_20  #0x3
    const-string v0, "allowPackageAccess"

    return-object v0

    :pswitch_23  #0x2
    const-string/jumbo v0, "openRead"

    return-object v0

    :pswitch_27  #0x1
    const-string/jumbo v0, "openWrite"

    return-object v0

    nop

    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_27  #00000001
        :pswitch_23  #00000002
        :pswitch_20  #00000003
        :pswitch_1d  #00000004
        :pswitch_1a  #00000005
        :pswitch_17  #00000006
        :pswitch_14  #00000007
        :pswitch_11  #00000008
        :pswitch_e  #00000009
        :pswitch_b  #0000000a
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

    invoke-static {p1}, Landroid/app/blob/IBlobStoreSession$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    const-string v0, "android.app.blob.IBlobStoreSession"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    packed-switch p1, :pswitch_data_b8

    packed-switch p1, :pswitch_data_be

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :pswitch_18  #0x5f4e5446
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_1c  #0xc
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/blob/IBlobCommitCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/blob/IBlobCommitCallback;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/app/blob/IBlobStoreSession$Stub;->commit(Landroid/app/blob/IBlobCommitCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_b7

    :pswitch_2f  #0xb
    invoke-virtual {p0}, Landroid/app/blob/IBlobStoreSession$Stub;->abandon()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_b7

    :pswitch_37  #0xa
    invoke-virtual {p0}, Landroid/app/blob/IBlobStoreSession$Stub;->close()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_b7

    :pswitch_3f  #0x9
    invoke-virtual {p0}, Landroid/app/blob/IBlobStoreSession$Stub;->getSize()J

    move-result-wide v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_b7

    :pswitch_4a  #0x8
    invoke-virtual {p0}, Landroid/app/blob/IBlobStoreSession$Stub;->isPublicAccessAllowed()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_b7

    :pswitch_55  #0x7
    invoke-virtual {p0}, Landroid/app/blob/IBlobStoreSession$Stub;->isSameSignatureAccessAllowed()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_b7

    :pswitch_60  #0x6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/app/blob/IBlobStoreSession$Stub;->isPackageAccessAllowed(Ljava/lang/String;[B)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_b7

    :pswitch_76  #0x5
    invoke-virtual {p0}, Landroid/app/blob/IBlobStoreSession$Stub;->allowPublicAccess()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_b7

    :pswitch_7d  #0x4
    invoke-virtual {p0}, Landroid/app/blob/IBlobStoreSession$Stub;->allowSameSignatureAccess()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_b7

    :pswitch_84  #0x3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/app/blob/IBlobStoreSession$Stub;->allowPackageAccess(Ljava/lang/String;[B)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_b7

    :pswitch_96  #0x2
    invoke-virtual {p0}, Landroid/app/blob/IBlobStoreSession$Stub;->openRead()Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto :goto_b7

    :pswitch_a1  #0x1
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/app/blob/IBlobStoreSession$Stub;->openWrite(JJ)Landroid/os/ParcelFileDescriptor;

    move-result-object v6

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    nop

    :goto_b7
    return v1

    :pswitch_data_b8
    .packed-switch 0x5f4e5446
        :pswitch_18  #5f4e5446
    .end packed-switch

    :pswitch_data_be
    .packed-switch 0x1
        :pswitch_a1  #00000001
        :pswitch_96  #00000002
        :pswitch_84  #00000003
        :pswitch_7d  #00000004
        :pswitch_76  #00000005
        :pswitch_60  #00000006
        :pswitch_55  #00000007
        :pswitch_4a  #00000008
        :pswitch_3f  #00000009
        :pswitch_37  #0000000a
        :pswitch_2f  #0000000b
        :pswitch_1c  #0000000c
    .end packed-switch
.end method
