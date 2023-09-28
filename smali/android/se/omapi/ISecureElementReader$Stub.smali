# classes3.dex

.class public abstract Landroid/se/omapi/ISecureElementReader$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Landroid/se/omapi/ISecureElementReader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/se/omapi/ISecureElementReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/se/omapi/ISecureElementReader$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String;

.field static final TRANSACTION_closeSessions:I = 0x3

.field static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_isSecureElementPresent:I = 0x1

.field static final TRANSACTION_openSession:I = 0x2

.field static final TRANSACTION_reset:I = 0x4


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-string v0, "android$se$omapi$ISecureElementReader"

    const/16 v1, 0x24

    const/16 v2, 0x2e

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/se/omapi/ISecureElementReader$Stub;->DESCRIPTOR:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    invoke-virtual {p0}, Landroid/se/omapi/ISecureElementReader$Stub;->markVintfStability()V

    sget-object v0, Landroid/se/omapi/ISecureElementReader$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/se/omapi/ISecureElementReader$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/se/omapi/ISecureElementReader;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    sget-object v0, Landroid/se/omapi/ISecureElementReader$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/se/omapi/ISecureElementReader;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Landroid/se/omapi/ISecureElementReader;

    return-object v1

    :cond_14
    new-instance v1, Landroid/se/omapi/ISecureElementReader$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/se/omapi/ISecureElementReader$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-object v0, Landroid/se/omapi/ISecureElementReader$Stub;->DESCRIPTOR:Ljava/lang/String;

    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    sparse-switch p1, :sswitch_data_5c

    packed-switch p1, :pswitch_data_6a

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :sswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :sswitch_1c
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p0}, Landroid/se/omapi/ISecureElementReader$Stub;->getInterfaceVersion()I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :sswitch_27
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p0}, Landroid/se/omapi/ISecureElementReader$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_32  #0x4
    invoke-virtual {p0}, Landroid/se/omapi/ISecureElementReader$Stub;->reset()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_5a

    :pswitch_3d  #0x3
    invoke-virtual {p0}, Landroid/se/omapi/ISecureElementReader$Stub;->closeSessions()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_5a

    :pswitch_44  #0x2
    invoke-virtual {p0}, Landroid/se/omapi/ISecureElementReader$Stub;->openSession()Landroid/se/omapi/ISecureElementSession;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    goto :goto_5a

    :pswitch_4f  #0x1
    invoke-virtual {p0}, Landroid/se/omapi/ISecureElementReader$Stub;->isSecureElementPresent()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    nop

    :goto_5a
    return v1

    nop

    :sswitch_data_5c
    .sparse-switch
        0xfffffe -> :sswitch_27
        0xffffff -> :sswitch_1c
        0x5f4e5446 -> :sswitch_18
    .end sparse-switch

    :pswitch_data_6a
    .packed-switch 0x1
        :pswitch_4f  #00000001
        :pswitch_44  #00000002
        :pswitch_3d  #00000003
        :pswitch_32  #00000004
    .end packed-switch
.end method
