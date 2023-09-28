# classes.dex

.class public final Landroid/bluetooth/le/AdvertisingSetParameters$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/le/AdvertisingSetParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mConnectable:Z

.field private mIncludeTxPower:Z

.field private mInterval:I

.field private mIsAnonymous:Z

.field private mIsLegacy:Z

.field private mOwnAddressType:I

.field private mPrimaryPhy:I

.field private mScannable:Z

.field private mSecondaryPhy:I

.field private mTxPowerLevel:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->mConnectable:Z

    iput-boolean v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->mScannable:Z

    iput-boolean v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->mIsLegacy:Z

    iput-boolean v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->mIsAnonymous:Z

    iput-boolean v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->mIncludeTxPower:Z

    const/4 v0, 0x1

    iput v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->mPrimaryPhy:I

    iput v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->mSecondaryPhy:I

    const/16 v0, 0xa0

    iput v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->mInterval:I

    const/4 v0, -0x7

    iput v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->mTxPowerLevel:I

    const/4 v0, -0x1

    iput v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->mOwnAddressType:I

    return-void
.end method


# virtual methods
.method public build()Landroid/bluetooth/le/AdvertisingSetParameters;
    .registers 15

    iget-boolean v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->mIsLegacy:Z

    if-eqz v0, :cond_2e

    iget-boolean v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->mIsAnonymous:Z

    if-nez v0, :cond_26

    iget-boolean v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->mConnectable:Z

    if-eqz v0, :cond_19

    iget-boolean v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->mScannable:Z

    if-eqz v0, :cond_11

    goto :goto_19

    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Legacy advertisement can\'t be connectable and non-scannable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_19
    :goto_19
    iget-boolean v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->mIncludeTxPower:Z

    if-nez v0, :cond_1e

    goto :goto_4e

    :cond_1e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Legacy advertising can\'t include TX power level in header"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_26
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Legacy advertising can\'t be anonymous"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2e
    iget-boolean v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->mConnectable:Z

    if-eqz v0, :cond_3f

    iget-boolean v1, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->mScannable:Z

    if-nez v1, :cond_37

    goto :goto_3f

    :cond_37
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Advertising can\'t be both connectable and scannable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3f
    :goto_3f
    iget-boolean v1, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->mIsAnonymous:Z

    if-eqz v1, :cond_4e

    if-nez v0, :cond_46

    goto :goto_4e

    :cond_46
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Advertising can\'t be both connectable and anonymous"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4e
    :goto_4e
    new-instance v0, Landroid/bluetooth/le/AdvertisingSetParameters;

    iget-boolean v3, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->mConnectable:Z

    iget-boolean v4, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->mScannable:Z

    iget-boolean v5, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->mIsLegacy:Z

    iget-boolean v6, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->mIsAnonymous:Z

    iget-boolean v7, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->mIncludeTxPower:Z

    iget v8, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->mPrimaryPhy:I

    iget v9, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->mSecondaryPhy:I

    iget v10, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->mInterval:I

    iget v11, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->mTxPowerLevel:I

    iget v12, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->mOwnAddressType:I

    const/4 v13, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v13}, Landroid/bluetooth/le/AdvertisingSetParameters;-><init>(ZZZZZIIIIILandroid/bluetooth/le/AdvertisingSetParameters-IA;)V

    return-object v0
.end method

.method public setAnonymous(Z)Landroid/bluetooth/le/AdvertisingSetParameters$Builder;
    .registers 2

    iput-boolean p1, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->mIsAnonymous:Z

    return-object p0
.end method

.method public setConnectable(Z)Landroid/bluetooth/le/AdvertisingSetParameters$Builder;
    .registers 2

    iput-boolean p1, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->mConnectable:Z

    return-object p0
.end method

.method public setIncludeTxPower(Z)Landroid/bluetooth/le/AdvertisingSetParameters$Builder;
    .registers 2

    iput-boolean p1, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->mIncludeTxPower:Z

    return-object p0
.end method

.method public setInterval(I)Landroid/bluetooth/le/AdvertisingSetParameters$Builder;
    .registers 5

    const/16 v0, 0xa0

    if-lt p1, v0, :cond_c

    const v0, 0xffffff

    if-gt p1, v0, :cond_c

    iput p1, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->mInterval:I

    return-object p0

    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown interval "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setLegacyMode(Z)Landroid/bluetooth/le/AdvertisingSetParameters$Builder;
    .registers 2

    iput-boolean p1, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->mIsLegacy:Z

    return-object p0
.end method

.method public setOwnAddressType(I)Landroid/bluetooth/le/AdvertisingSetParameters$Builder;
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const/4 v0, -0x1

    if-lt p1, v0, :cond_9

    const/4 v0, 0x1

    if-gt p1, v0, :cond_9

    iput p1, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->mOwnAddressType:I

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

.method public setPrimaryPhy(I)Landroid/bluetooth/le/AdvertisingSetParameters$Builder;
    .registers 5

    const/4 v0, 0x1

    if-eq p1, v0, :cond_20

    const/4 v0, 0x3

    if-ne p1, v0, :cond_7

    goto :goto_20

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad primaryPhy "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_20
    :goto_20
    iput p1, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->mPrimaryPhy:I

    return-object p0
.end method

.method public setScannable(Z)Landroid/bluetooth/le/AdvertisingSetParameters$Builder;
    .registers 2

    iput-boolean p1, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->mScannable:Z

    return-object p0
.end method

.method public setSecondaryPhy(I)Landroid/bluetooth/le/AdvertisingSetParameters$Builder;
    .registers 5

    const/4 v0, 0x1

    if-eq p1, v0, :cond_23

    const/4 v0, 0x2

    if-eq p1, v0, :cond_23

    const/4 v0, 0x3

    if-ne p1, v0, :cond_a

    goto :goto_23

    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad secondaryPhy "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_23
    :goto_23
    iput p1, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->mSecondaryPhy:I

    return-object p0
.end method

.method public setTxPowerLevel(I)Landroid/bluetooth/le/AdvertisingSetParameters$Builder;
    .registers 7

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.bluetooth"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v2, -0x7f

    if-eqz v1, :cond_2e

    const/16 v1, 0x14

    if-lt p1, v2, :cond_15

    if-gt p1, v1, :cond_15

    goto :goto_33

    :cond_15
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid txPowerLevel "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2e
    if-lt p1, v2, :cond_36

    const/4 v1, 0x1

    if-gt p1, v1, :cond_36

    :goto_33
    iput p1, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->mTxPowerLevel:I

    return-object p0

    :cond_36
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unknown txPowerLevel "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
