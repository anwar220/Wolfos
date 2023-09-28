# classes.dex

.class public abstract Landroid/app/IMiuiActivityObserver$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Landroid/app/IMiuiActivityObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IMiuiActivityObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IMiuiActivityObserver$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_activityDestroyed:I = 0x5

.field static final TRANSACTION_activityIdle:I = 0x1

.field static final TRANSACTION_activityPaused:I = 0x3

.field static final TRANSACTION_activityResumed:I = 0x2

.field static final TRANSACTION_activityStopped:I = 0x4


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.app.IMiuiActivityObserver"

    invoke-virtual {p0, p0, v0}, Landroid/app/IMiuiActivityObserver$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/IMiuiActivityObserver;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "android.app.IMiuiActivityObserver"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/app/IMiuiActivityObserver;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Landroid/app/IMiuiActivityObserver;

    return-object v1

    :cond_14
    new-instance v1, Landroid/app/IMiuiActivityObserver$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/IMiuiActivityObserver$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_14

    const/4 v0, 0x0

    return-object v0

    :pswitch_5  #0x5
    const-string v0, "activityDestroyed"

    return-object v0

    :pswitch_8  #0x4
    const-string v0, "activityStopped"

    return-object v0

    :pswitch_b  #0x3
    const-string v0, "activityPaused"

    return-object v0

    :pswitch_e  #0x2
    const-string v0, "activityResumed"

    return-object v0

    :pswitch_11  #0x1
    const-string v0, "activityIdle"

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

    invoke-static {p1}, Landroid/app/IMiuiActivityObserver$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    const-string v0, "android.app.IMiuiActivityObserver"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    packed-switch p1, :pswitch_data_68

    packed-switch p1, :pswitch_data_6e

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :pswitch_18  #0x5f4e5446
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_1c  #0x5
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/app/IMiuiActivityObserver$Stub;->activityDestroyed(Landroid/content/Intent;)V

    goto :goto_67

    :pswitch_2b  #0x4
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/app/IMiuiActivityObserver$Stub;->activityStopped(Landroid/content/Intent;)V

    goto :goto_67

    :pswitch_3a  #0x3
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/app/IMiuiActivityObserver$Stub;->activityPaused(Landroid/content/Intent;)V

    goto :goto_67

    :pswitch_49  #0x2
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/app/IMiuiActivityObserver$Stub;->activityResumed(Landroid/content/Intent;)V

    goto :goto_67

    :pswitch_58  #0x1
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/app/IMiuiActivityObserver$Stub;->activityIdle(Landroid/content/Intent;)V

    nop

    :goto_67
    return v1

    :pswitch_data_68
    .packed-switch 0x5f4e5446
        :pswitch_18  #5f4e5446
    .end packed-switch

    :pswitch_data_6e
    .packed-switch 0x1
        :pswitch_58  #00000001
        :pswitch_49  #00000002
        :pswitch_3a  #00000003
        :pswitch_2b  #00000004
        :pswitch_1c  #00000005
    .end packed-switch
.end method
