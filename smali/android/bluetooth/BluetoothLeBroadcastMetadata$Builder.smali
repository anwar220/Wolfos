# classes.dex

.class public final Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;
.super Ljava/lang/Object;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothLeBroadcastMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mBroadcastCode:[B

.field private mBroadcastId:I

.field private mIsEncrypted:Z

.field private mPaSyncInterval:I

.field private mPresentationDelayMicros:I

.field private mSourceAddressType:I

.field private mSourceAdvertisingSid:I

.field private mSourceDevice:Landroid/bluetooth/BluetoothDevice;

.field private mSubgroups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothLeBroadcastSubgroup;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0xffff

    iput v0, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->mSourceAddressType:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->mSourceDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v1, -0x1

    iput v1, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->mSourceAdvertisingSid:I

    iput v1, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->mBroadcastId:I

    iput v1, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->mPaSyncInterval:I

    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->mIsEncrypted:Z

    iput-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->mBroadcastCode:[B

    iput v1, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->mPresentationDelayMicros:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->mSubgroups:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/bluetooth/BluetoothLeBroadcastMetadata;)V
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0xffff

    iput v0, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->mSourceAddressType:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->mSourceDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v1, -0x1

    iput v1, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->mSourceAdvertisingSid:I

    iput v1, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->mBroadcastId:I

    iput v1, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->mPaSyncInterval:I

    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->mIsEncrypted:Z

    iput-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->mBroadcastCode:[B

    iput v1, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->mPresentationDelayMicros:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->mSubgroups:Ljava/util/List;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->getSourceAddressType()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->mSourceAddressType:I

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->getSourceDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->mSourceDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->getSourceAdvertisingSid()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->mSourceAdvertisingSid:I

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->getBroadcastId()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->mBroadcastId:I

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->getPaSyncInterval()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->mPaSyncInterval:I

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->isEncrypted()Z

    move-result v0

    iput-boolean v0, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->mIsEncrypted:Z

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->getBroadcastCode()[B

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->mBroadcastCode:[B

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->getPresentationDelayMicros()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->mPresentationDelayMicros:I

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->getSubgroups()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->mSubgroups:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addSubgroup(Landroid/bluetooth/BluetoothLeBroadcastSubgroup;)Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const-string/jumbo v0, "subgroup cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->mSubgroups:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public build()Landroid/bluetooth/BluetoothLeBroadcastMetadata;
    .registers 13
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget v0, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->mSourceAddressType:I

    const v1, 0xffff

    if-eq v0, v1, :cond_61

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2f

    if-nez v0, :cond_d

    goto :goto_2f

    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sourceAddressType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->mSourceAddressType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is invalid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2f
    :goto_2f
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->mSourceDevice:Landroid/bluetooth/BluetoothDevice;

    const-string/jumbo v1, "mSourceDevice cannot be null"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->mSubgroups:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_59

    new-instance v0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;

    iget v2, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->mSourceAddressType:I

    iget-object v3, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->mSourceDevice:Landroid/bluetooth/BluetoothDevice;

    iget v4, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->mSourceAdvertisingSid:I

    iget v5, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->mBroadcastId:I

    iget v6, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->mPaSyncInterval:I

    iget-boolean v7, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->mIsEncrypted:Z

    iget-object v8, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->mBroadcastCode:[B

    iget v9, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->mPresentationDelayMicros:I

    iget-object v10, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->mSubgroups:Ljava/util/List;

    const/4 v11, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v11}, Landroid/bluetooth/BluetoothLeBroadcastMetadata;-><init>(ILandroid/bluetooth/BluetoothDevice;IIIZ[BILjava/util/List;Landroid/bluetooth/BluetoothLeBroadcastMetadata-IA;)V

    return-object v0

    :cond_59
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must contain at least one subgroup"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_61
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SourceAddressTyp cannot be unknown"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public clearSubgroup()Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->mSubgroups:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-object p0
.end method

.method public setBroadcastCode([B)Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iput-object p1, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->mBroadcastCode:[B

    return-object p0
.end method

.method public setBroadcastId(I)Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iput p1, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->mBroadcastId:I

    return-object p0
.end method

.method public setEncrypted(Z)Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iput-boolean p1, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->mIsEncrypted:Z

    return-object p0
.end method

.method public setPaSyncInterval(I)Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iput p1, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->mPaSyncInterval:I

    return-object p0
.end method

.method public setPresentationDelayMicros(I)Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    if-ltz p1, :cond_a

    const v0, 0xffffff

    if-ge p1, v0, :cond_a

    iput p1, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->mPresentationDelayMicros:I

    return-object p0

    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "presentationDelayMicros "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not fall in [0, 0xFFFFFF]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSourceAdvertisingSid(I)Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iput p1, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->mSourceAdvertisingSid:I

    return-object p0
.end method

.method public setSourceDevice(Landroid/bluetooth/BluetoothDevice;I)Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const v0, 0xffff

    if-eq p2, v0, :cond_36

    const/4 v0, 0x1

    if-eq p2, v0, :cond_2b

    if-nez p2, :cond_b

    goto :goto_2b

    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sourceAddressType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is invalid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2b
    :goto_2b
    const-string/jumbo v0, "sourceDevice cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput p2, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->mSourceAddressType:I

    iput-object p1, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->mSourceDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p0

    :cond_36
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "sourceAddressType cannot be ADDRESS_TYPE_UNKNOWN"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
