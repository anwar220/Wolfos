# classes4.dex

.class public abstract Lcom/miui/window/IMiuiEmbeddingWindow$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/miui/window/IMiuiEmbeddingWindow;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/window/IMiuiEmbeddingWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/window/IMiuiEmbeddingWindow$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_getEmbeddedApps:I = 0x4

.field static final TRANSACTION_getEmbeddingPortraitBounds:I = 0x8

.field static final TRANSACTION_getSystemEmbeddedRules:I = 0x1

.field static final TRANSACTION_isAppNeedRelaunch:I = 0x6

.field static final TRANSACTION_isDisableSensor:I = 0x7

.field static final TRANSACTION_isEmbeddingEnabledForPackage:I = 0x2

.field static final TRANSACTION_setEmbeddedEnable:I = 0x5

.field static final TRANSACTION_setEmbeddingHomePage:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.miui.window.IMiuiEmbeddingWindow"

    invoke-virtual {p0, p0, v0}, Lcom/miui/window/IMiuiEmbeddingWindow$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/miui/window/IMiuiEmbeddingWindow;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "com.miui.window.IMiuiEmbeddingWindow"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/miui/window/IMiuiEmbeddingWindow;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Lcom/miui/window/IMiuiEmbeddingWindow;

    return-object v1

    :cond_14
    new-instance v1, Lcom/miui/window/IMiuiEmbeddingWindow$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/miui/window/IMiuiEmbeddingWindow$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_20

    const/4 v0, 0x0

    return-object v0

    :pswitch_5  #0x8
    const-string v0, "getEmbeddingPortraitBounds"

    return-object v0

    :pswitch_8  #0x7
    const-string v0, "isDisableSensor"

    return-object v0

    :pswitch_b  #0x6
    const-string v0, "isAppNeedRelaunch"

    return-object v0

    :pswitch_e  #0x5
    const-string/jumbo v0, "setEmbeddedEnable"

    return-object v0

    :pswitch_12  #0x4
    const-string v0, "getEmbeddedApps"

    return-object v0

    :pswitch_15  #0x3
    const-string/jumbo v0, "setEmbeddingHomePage"

    return-object v0

    :pswitch_19  #0x2
    const-string v0, "isEmbeddingEnabledForPackage"

    return-object v0

    :pswitch_1c  #0x1
    const-string v0, "getSystemEmbeddedRules"

    return-object v0

    nop

    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_1c  #00000001
        :pswitch_19  #00000002
        :pswitch_15  #00000003
        :pswitch_12  #00000004
        :pswitch_e  #00000005
        :pswitch_b  #00000006
        :pswitch_8  #00000007
        :pswitch_5  #00000008
    .end packed-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    const/4 v0, 0x7

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3

    invoke-static {p1}, Lcom/miui/window/IMiuiEmbeddingWindow$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    const-string v0, "com.miui.window.IMiuiEmbeddingWindow"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    packed-switch p1, :pswitch_data_a4

    packed-switch p1, :pswitch_data_aa

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :pswitch_18  #0x5f4e5446
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_1c  #0x8
    invoke-virtual {p0}, Lcom/miui/window/IMiuiEmbeddingWindow$Stub;->getEmbeddingPortraitBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_a3

    :pswitch_28  #0x7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/miui/window/IMiuiEmbeddingWindow$Stub;->isDisableSensor(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_a3

    :pswitch_3a  #0x6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/miui/window/IMiuiEmbeddingWindow$Stub;->isAppNeedRelaunch(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_a3

    :pswitch_4c  #0x5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Lcom/miui/window/IMiuiEmbeddingWindow$Stub;->setEmbeddedEnable(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_a3

    :pswitch_62  #0x4
    invoke-virtual {p0}, Lcom/miui/window/IMiuiEmbeddingWindow$Stub;->getEmbeddedApps()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    goto :goto_a3

    :pswitch_6d  #0x3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/miui/window/IMiuiEmbeddingWindow$Stub;->setEmbeddingHomePage(Landroid/os/IBinder;)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_a3

    :pswitch_7f  #0x2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/miui/window/IMiuiEmbeddingWindow$Stub;->isEmbeddingEnabledForPackage(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_a3

    :pswitch_91  #0x1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/miui/window/IMiuiEmbeddingWindow$Stub;->getSystemEmbeddedRules(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    nop

    :goto_a3
    return v1

    :pswitch_data_a4
    .packed-switch 0x5f4e5446
        :pswitch_18  #5f4e5446
    .end packed-switch

    :pswitch_data_aa
    .packed-switch 0x1
        :pswitch_91  #00000001
        :pswitch_7f  #00000002
        :pswitch_6d  #00000003
        :pswitch_62  #00000004
        :pswitch_4c  #00000005
        :pswitch_3a  #00000006
        :pswitch_28  #00000007
        :pswitch_1c  #00000008
    .end packed-switch
.end method
