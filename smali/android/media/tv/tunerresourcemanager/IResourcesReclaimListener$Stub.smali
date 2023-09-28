# classes2.dex

.class public abstract Landroid/media/tv/tunerresourcemanager/IResourcesReclaimListener$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Landroid/media/tv/tunerresourcemanager/IResourcesReclaimListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/tunerresourcemanager/IResourcesReclaimListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/tunerresourcemanager/IResourcesReclaimListener$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_onReclaimResources:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    sget-object v0, Landroid/media/tv/tunerresourcemanager/IResourcesReclaimListener$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/media/tv/tunerresourcemanager/IResourcesReclaimListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/media/tv/tunerresourcemanager/IResourcesReclaimListener;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    sget-object v0, Landroid/media/tv/tunerresourcemanager/IResourcesReclaimListener$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/media/tv/tunerresourcemanager/IResourcesReclaimListener;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Landroid/media/tv/tunerresourcemanager/IResourcesReclaimListener;

    return-object v1

    :cond_14
    new-instance v1, Landroid/media/tv/tunerresourcemanager/IResourcesReclaimListener$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/tv/tunerresourcemanager/IResourcesReclaimListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    sget-object v0, Landroid/media/tv/tunerresourcemanager/IResourcesReclaimListener$Stub;->DESCRIPTOR:Ljava/lang/String;

    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    packed-switch p1, :pswitch_data_24

    packed-switch p1, :pswitch_data_2a

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :pswitch_18  #0x5f4e5446
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_1c  #0x1
    invoke-virtual {p0}, Landroid/media/tv/tunerresourcemanager/IResourcesReclaimListener$Stub;->onReclaimResources()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    nop

    return v1

    :pswitch_data_24
    .packed-switch 0x5f4e5446
        :pswitch_18  #5f4e5446
    .end packed-switch

    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_1c  #00000001
    .end packed-switch
.end method