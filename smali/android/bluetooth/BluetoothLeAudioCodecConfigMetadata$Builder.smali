# classes.dex

.class public final Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata$Builder;
.super Ljava/lang/Object;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mAudioLocation:J

.field private mRawMetadata:[B


# direct methods
.method public constructor <init>()V
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata$Builder;->mAudioLocation:J

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata$Builder;->mRawMetadata:[B

    return-void
.end method

.method public constructor <init>(Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;)V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata$Builder;->mAudioLocation:J

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata$Builder;->mRawMetadata:[B

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;->getAudioLocation()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata$Builder;->mAudioLocation:J

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;->getRawMetadata()[B

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata$Builder;->mRawMetadata:[B

    return-void
.end method

.method static synthetic lambda$build$0(Landroid/bluetooth/BluetoothUtils$TypeValueEntry;)Z
    .registers 3

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothUtils$TypeValueEntry;->getType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method


# virtual methods
.method public build()Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;
    .registers 7
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata$Builder;->mRawMetadata:[B

    if-eqz v1, :cond_40

    invoke-static {v1}, Landroid/bluetooth/BluetoothUtils;->parseLengthTypeValueBytes([B)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata$Builder;->mRawMetadata:[B

    array-length v2, v1

    if-lez v2, :cond_40

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    if-lez v1, :cond_40

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1e

    goto :goto_40

    :cond_1e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No LTV entries are found from rawBytes of size "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata$Builder;->mRawMetadata:[B

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " please check the original object passed to Builder\'s copy constructor"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_40
    :goto_40
    iget-wide v1, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata$Builder;->mAudioLocation:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_69

    new-instance v1, Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata$Builder$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata$Builder$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    new-instance v1, Landroid/bluetooth/BluetoothUtils$TypeValueEntry;

    const/4 v2, 0x3

    const/16 v3, 0x8

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    iget-wide v4, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata$Builder;->mAudioLocation:J

    invoke-virtual {v3, v4, v5}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/bluetooth/BluetoothUtils$TypeValueEntry;-><init>(I[B)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_69
    invoke-static {v0}, Landroid/bluetooth/BluetoothUtils;->serializeTypeValue(Ljava/util/List;)[B

    move-result-object v1

    if-eqz v1, :cond_78

    new-instance v2, Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;

    iget-wide v3, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata$Builder;->mAudioLocation:J

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v1, v5}, Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;-><init>(J[BLandroid/bluetooth/BluetoothLeAudioCodecConfigMetadata-IA;)V

    return-object v2

    :cond_78
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Failed to serialize entries to bytes"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public setAudioLocation(J)Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata$Builder;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iput-wide p1, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata$Builder;->mAudioLocation:J

    return-object p0
.end method
