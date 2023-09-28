# classes.dex

.class public final Landroid/bluetooth/le/AdvertiseSettings$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/le/AdvertiseSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mConnectable:Z

.field private mMode:I

.field private mOwnAddressType:I

.field private mTimeoutMillis:I

.field private mTxPowerLevel:I


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/bluetooth/le/AdvertiseSettings$Builder;->mMode:I

    const/4 v1, 0x2

    iput v1, p0, Landroid/bluetooth/le/AdvertiseSettings$Builder;->mTxPowerLevel:I

    iput v0, p0, Landroid/bluetooth/le/AdvertiseSettings$Builder;->mTimeoutMillis:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/bluetooth/le/AdvertiseSettings$Builder;->mConnectable:Z

    const/4 v0, -0x1

    iput v0, p0, Landroid/bluetooth/le/AdvertiseSettings$Builder;->mOwnAddressType:I

    return-void
.end method


# virtual methods
.method public build()Landroid/bluetooth/le/AdvertiseSettings;
    .registers 9

    new-instance v7, Landroid/bluetooth/le/AdvertiseSettings;

    iget v1, p0, Landroid/bluetooth/le/AdvertiseSettings$Builder;->mMode:I

    iget v2, p0, Landroid/bluetooth/le/AdvertiseSettings$Builder;->mTxPowerLevel:I

    iget-boolean v3, p0, Landroid/bluetooth/le/AdvertiseSettings$Builder;->mConnectable:Z

    iget v4, p0, Landroid/bluetooth/le/AdvertiseSettings$Builder;->mTimeoutMillis:I

    iget v5, p0, Landroid/bluetooth/le/AdvertiseSettings$Builder;->mOwnAddressType:I

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Landroid/bluetooth/le/AdvertiseSettings;-><init>(IIZIILandroid/bluetooth/le/AdvertiseSettings-IA;)V

    return-object v7
.end method

.method public setAdvertiseMode(I)Landroid/bluetooth/le/AdvertiseSettings$Builder;
    .registers 5

    if-ltz p1, :cond_8

    const/4 v0, 0x2

    if-gt p1, v0, :cond_8

    iput p1, p0, Landroid/bluetooth/le/AdvertiseSettings$Builder;->mMode:I

    return-object p0

    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setConnectable(Z)Landroid/bluetooth/le/AdvertiseSettings$Builder;
    .registers 2

    iput-boolean p1, p0, Landroid/bluetooth/le/AdvertiseSettings$Builder;->mConnectable:Z

    return-object p0
.end method

.method public setOwnAddressType(I)Landroid/bluetooth/le/AdvertiseSettings$Builder;
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const/4 v0, -0x1

    if-lt p1, v0, :cond_9

    const/4 v0, 0x1

    if-gt p1, v0, :cond_9

    iput p1, p0, Landroid/bluetooth/le/AdvertiseSettings$Builder;->mOwnAddressType:I

    return-object p0

    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown address type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setTimeout(I)Landroid/bluetooth/le/AdvertiseSettings$Builder;
    .registers 4

    if-ltz p1, :cond_a

    const v0, 0x2bf20

    if-gt p1, v0, :cond_a

    iput p1, p0, Landroid/bluetooth/le/AdvertiseSettings$Builder;->mTimeoutMillis:I

    return-object p0

    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "timeoutMillis invalid (must be 0-180000 milliseconds)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setTxPowerLevel(I)Landroid/bluetooth/le/AdvertiseSettings$Builder;
    .registers 5

    if-ltz p1, :cond_8

    const/4 v0, 0x3

    if-gt p1, v0, :cond_8

    iput p1, p0, Landroid/bluetooth/le/AdvertiseSettings$Builder;->mTxPowerLevel:I

    return-object p0

    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown tx power level "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
