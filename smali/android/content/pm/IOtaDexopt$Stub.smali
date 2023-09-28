# classes.dex

.class public abstract Landroid/content/pm/IOtaDexopt$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Landroid/content/pm/IOtaDexopt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/IOtaDexopt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/IOtaDexopt$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.content.pm.IOtaDexopt"

.field static final TRANSACTION_cleanup:I = 0x2

.field static final TRANSACTION_dexoptNextPackage:I = 0x5

.field static final TRANSACTION_getProgress:I = 0x4

.field static final TRANSACTION_isDone:I = 0x3

.field static final TRANSACTION_nextDexoptCommand:I = 0x6

.field static final TRANSACTION_prepare:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.content.pm.IOtaDexopt"

    invoke-virtual {p0, p0, v0}, Landroid/content/pm/IOtaDexopt$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/content/pm/IOtaDexopt;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "android.content.pm.IOtaDexopt"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/content/pm/IOtaDexopt;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Landroid/content/pm/IOtaDexopt;

    return-object v1

    :cond_14
    new-instance v1, Landroid/content/pm/IOtaDexopt$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/content/pm/IOtaDexopt$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_1a

    const/4 v0, 0x0

    return-object v0

    :pswitch_5  #0x6
    const-string/jumbo v0, "nextDexoptCommand"

    return-object v0

    :pswitch_9  #0x5
    const-string v0, "dexoptNextPackage"

    return-object v0

    :pswitch_c  #0x4
    const-string v0, "getProgress"

    return-object v0

    :pswitch_f  #0x3
    const-string v0, "isDone"

    return-object v0

    :pswitch_12  #0x2
    const-string v0, "cleanup"

    return-object v0

    :pswitch_15  #0x1
    const-string/jumbo v0, "prepare"

    return-object v0

    nop

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_15  #00000001
        :pswitch_12  #00000002
        :pswitch_f  #00000003
        :pswitch_c  #00000004
        :pswitch_9  #00000005
        :pswitch_5  #00000006
    .end packed-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    const/4 v0, 0x5

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3

    invoke-static {p1}, Landroid/content/pm/IOtaDexopt$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    const-string v0, "android.content.pm.IOtaDexopt"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    packed-switch p1, :pswitch_data_54

    packed-switch p1, :pswitch_data_5a

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :pswitch_18  #0x5f4e5446
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_1c  #0x6
    invoke-virtual {p0}, Landroid/content/pm/IOtaDexopt$Stub;->nextDexoptCommand()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_52

    :pswitch_27  #0x5
    invoke-virtual {p0}, Landroid/content/pm/IOtaDexopt$Stub;->dexoptNextPackage()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_52

    :pswitch_2e  #0x4
    invoke-virtual {p0}, Landroid/content/pm/IOtaDexopt$Stub;->getProgress()F

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeFloat(F)V

    goto :goto_52

    :pswitch_39  #0x3
    invoke-virtual {p0}, Landroid/content/pm/IOtaDexopt$Stub;->isDone()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_52

    :pswitch_44  #0x2
    invoke-virtual {p0}, Landroid/content/pm/IOtaDexopt$Stub;->cleanup()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_52

    :pswitch_4b  #0x1
    invoke-virtual {p0}, Landroid/content/pm/IOtaDexopt$Stub;->prepare()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    nop

    :goto_52
    return v1

    nop

    :pswitch_data_54
    .packed-switch 0x5f4e5446
        :pswitch_18  #5f4e5446
    .end packed-switch

    :pswitch_data_5a
    .packed-switch 0x1
        :pswitch_4b  #00000001
        :pswitch_44  #00000002
        :pswitch_39  #00000003
        :pswitch_2e  #00000004
        :pswitch_27  #00000005
        :pswitch_1c  #00000006
    .end packed-switch
.end method
