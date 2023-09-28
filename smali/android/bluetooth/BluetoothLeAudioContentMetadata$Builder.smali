# classes.dex

.class public final Landroid/bluetooth/BluetoothLeAudioContentMetadata$Builder;
.super Ljava/lang/Object;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothLeAudioContentMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mLanguage:Ljava/lang/String;

.field private mProgramInfo:Ljava/lang/String;

.field private mRawMetadata:[B


# direct methods
.method public constructor <init>()V
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/bluetooth/BluetoothLeAudioContentMetadata$Builder;->mProgramInfo:Ljava/lang/String;

    iput-object v0, p0, Landroid/bluetooth/BluetoothLeAudioContentMetadata$Builder;->mLanguage:Ljava/lang/String;

    iput-object v0, p0, Landroid/bluetooth/BluetoothLeAudioContentMetadata$Builder;->mRawMetadata:[B

    return-void
.end method

.method public constructor <init>(Landroid/bluetooth/BluetoothLeAudioContentMetadata;)V
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/bluetooth/BluetoothLeAudioContentMetadata$Builder;->mProgramInfo:Ljava/lang/String;

    iput-object v0, p0, Landroid/bluetooth/BluetoothLeAudioContentMetadata$Builder;->mLanguage:Ljava/lang/String;

    iput-object v0, p0, Landroid/bluetooth/BluetoothLeAudioContentMetadata$Builder;->mRawMetadata:[B

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeAudioContentMetadata;->getProgramInfo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothLeAudioContentMetadata$Builder;->mProgramInfo:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeAudioContentMetadata;->getLanguage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothLeAudioContentMetadata$Builder;->mLanguage:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeAudioContentMetadata;->getRawMetadata()[B

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothLeAudioContentMetadata$Builder;->mRawMetadata:[B

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

.method static synthetic lambda$build$1(Landroid/bluetooth/BluetoothUtils$TypeValueEntry;)Z
    .registers 3

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothUtils$TypeValueEntry;->getType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method


# virtual methods
.method public build()Landroid/bluetooth/BluetoothLeAudioContentMetadata;
    .registers 8
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Landroid/bluetooth/BluetoothLeAudioContentMetadata$Builder;->mRawMetadata:[B

    if-eqz v1, :cond_40

    invoke-static {v1}, Landroid/bluetooth/BluetoothUtils;->parseLengthTypeValueBytes([B)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/BluetoothLeAudioContentMetadata$Builder;->mRawMetadata:[B

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

    iget-object v3, p0, Landroid/bluetooth/BluetoothLeAudioContentMetadata$Builder;->mRawMetadata:[B

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
    iget-object v1, p0, Landroid/bluetooth/BluetoothLeAudioContentMetadata$Builder;->mProgramInfo:Ljava/lang/String;

    const/4 v2, 0x3

    if-eqz v1, :cond_5d

    new-instance v1, Landroid/bluetooth/BluetoothLeAudioContentMetadata$Builder$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/bluetooth/BluetoothLeAudioContentMetadata$Builder$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    new-instance v1, Landroid/bluetooth/BluetoothUtils$TypeValueEntry;

    iget-object v3, p0, Landroid/bluetooth/BluetoothLeAudioContentMetadata$Builder;->mProgramInfo:Ljava/lang/String;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/bluetooth/BluetoothUtils$TypeValueEntry;-><init>(I[B)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5d
    iget-object v1, p0, Landroid/bluetooth/BluetoothLeAudioContentMetadata$Builder;->mLanguage:Ljava/lang/String;

    if-eqz v1, :cond_ae

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->strip()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    array-length v4, v3

    if-ne v4, v2, :cond_84

    new-instance v2, Landroid/bluetooth/BluetoothLeAudioContentMetadata$Builder$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Landroid/bluetooth/BluetoothLeAudioContentMetadata$Builder$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    new-instance v2, Landroid/bluetooth/BluetoothUtils$TypeValueEntry;

    const/4 v4, 0x4

    invoke-direct {v2, v4, v3}, Landroid/bluetooth/BluetoothUtils$TypeValueEntry;-><init>(I[B)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_ae

    :cond_84
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Language byte size "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is less than "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", needed ISO 639-3, to build"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_ae
    :goto_ae
    invoke-static {v0}, Landroid/bluetooth/BluetoothUtils;->serializeTypeValue(Ljava/util/List;)[B

    move-result-object v1

    if-eqz v1, :cond_bf

    new-instance v2, Landroid/bluetooth/BluetoothLeAudioContentMetadata;

    iget-object v3, p0, Landroid/bluetooth/BluetoothLeAudioContentMetadata$Builder;->mProgramInfo:Ljava/lang/String;

    iget-object v4, p0, Landroid/bluetooth/BluetoothLeAudioContentMetadata$Builder;->mLanguage:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v1, v5}, Landroid/bluetooth/BluetoothLeAudioContentMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;[BLandroid/bluetooth/BluetoothLeAudioContentMetadata-IA;)V

    return-object v2

    :cond_bf
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Failed to serialize entries to bytes"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public setLanguage(Ljava/lang/String;)Landroid/bluetooth/BluetoothLeAudioContentMetadata$Builder;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iput-object p1, p0, Landroid/bluetooth/BluetoothLeAudioContentMetadata$Builder;->mLanguage:Ljava/lang/String;

    return-object p0
.end method

.method public setProgramInfo(Ljava/lang/String;)Landroid/bluetooth/BluetoothLeAudioContentMetadata$Builder;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iput-object p1, p0, Landroid/bluetooth/BluetoothLeAudioContentMetadata$Builder;->mProgramInfo:Ljava/lang/String;

    return-object p0
.end method
