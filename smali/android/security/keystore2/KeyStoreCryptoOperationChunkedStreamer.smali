# classes3.dex

.class Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer$MainDataStream;,
        Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer$Stream;
    }
.end annotation


# static fields
.field private static final DEFAULT_CHUNK_SIZE_MAX:I = 0x8000

.field private static final DEFAULT_CHUNK_SIZE_THRESHOLD:I = 0x800


# instance fields
.field private final mChunk:[B

.field private mChunkLength:I

.field private final mChunkSizeMax:I

.field private final mChunkSizeThreshold:I

.field private mConsumedInputSizeBytes:J

.field private final mKeyStoreStream:Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer$Stream;

.field private mProducedOutputSizeBytes:J


# direct methods
.method constructor <init>(Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer$Stream;)V
    .registers 4

    const/16 v0, 0x800

    const v1, 0x8000

    invoke-direct {p0, p1, v0, v1}, Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer;-><init>(Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer$Stream;II)V

    return-void
.end method

.method constructor <init>(Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer$Stream;I)V
    .registers 4

    const v0, 0x8000

    invoke-direct {p0, p1, p2, v0}, Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer;-><init>(Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer$Stream;II)V

    return-void
.end method

.method constructor <init>(Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer$Stream;II)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer;->mChunkLength:I

    iput v0, p0, Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer;->mChunkLength:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer;->mConsumedInputSizeBytes:J

    iput-wide v0, p0, Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer;->mProducedOutputSizeBytes:J

    iput-object p1, p0, Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer;->mKeyStoreStream:Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer$Stream;

    iput p3, p0, Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer;->mChunkSizeMax:I

    if-gtz p2, :cond_18

    const/4 v0, 0x1

    iput v0, p0, Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer;->mChunkSizeThreshold:I

    goto :goto_1f

    :cond_18
    if-le p2, p3, :cond_1d

    iput p3, p0, Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer;->mChunkSizeThreshold:I

    goto :goto_1f

    :cond_1d
    iput p2, p0, Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer;->mChunkSizeThreshold:I

    :goto_1f
    new-array v0, p3, [B

    iput-object v0, p0, Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer;->mChunk:[B

    return-void
.end method


# virtual methods
.method public doFinal([BII[B)[B
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/KeyStoreException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer;->update([BII)[B

    move-result-object v0

    iget-object v1, p0, Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer;->mChunk:[B

    iget v2, p0, Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer;->mChunkLength:I

    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Landroid/security/keystore/ArrayUtils;->subarray([BII)[B

    move-result-object v1

    iget-object v2, p0, Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer;->mKeyStoreStream:Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer$Stream;

    invoke-interface {v2, v1, p4}, Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer$Stream;->finish([B[B)[B

    move-result-object v2

    if-eqz v2, :cond_24

    iget-wide v3, p0, Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer;->mProducedOutputSizeBytes:J

    array-length v5, v2

    int-to-long v5, v5

    add-long/2addr v3, v5

    iput-wide v3, p0, Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer;->mProducedOutputSizeBytes:J

    if-eqz v0, :cond_23

    invoke-static {v0, v2}, Landroid/security/keystore/ArrayUtils;->concat([B[B)[B

    move-result-object v0

    goto :goto_24

    :cond_23
    move-object v0, v2

    :cond_24
    :goto_24
    return-object v0
.end method

.method public getConsumedInputSizeBytes()J
    .registers 3

    iget-wide v0, p0, Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer;->mConsumedInputSizeBytes:J

    return-wide v0
.end method

.method public getProducedOutputSizeBytes()J
    .registers 3

    iget-wide v0, p0, Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer;->mProducedOutputSizeBytes:J

    return-wide v0
.end method

.method public update([BII)[B
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/KeyStoreException;
        }
    .end annotation

    if-eqz p3, :cond_82

    if-nez p1, :cond_6

    goto/16 :goto_82

    :cond_6
    if-ltz p3, :cond_78

    if-ltz p2, :cond_78

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_78

    sget-object v0, Llibcore/util/EmptyArray;->BYTE:[B

    iget v1, p0, Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer;->mChunkLength:I

    const/4 v2, 0x0

    if-lez v1, :cond_3e

    iget-object v3, p0, Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer;->mChunk:[B

    invoke-static {p1, p2, v3, v1, p3}, Landroid/security/keystore/ArrayUtils;->copy([BI[BII)I

    move-result v1

    sub-int/2addr p3, v1

    add-int/2addr p2, v1

    iget v3, p0, Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer;->mChunkLength:I

    add-int/2addr v3, v1

    iput v3, p0, Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer;->mChunkLength:I

    iget v4, p0, Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer;->mChunkSizeMax:I

    if-ge v3, v4, :cond_28

    return-object v0

    :cond_28
    iget-object v3, p0, Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer;->mKeyStoreStream:Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer$Stream;

    iget-object v4, p0, Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer;->mChunk:[B

    invoke-interface {v3, v4}, Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer$Stream;->update([B)[B

    move-result-object v3

    if-eqz v3, :cond_36

    invoke-static {v0, v3}, Landroid/security/keystore/ArrayUtils;->concat([B[B)[B

    move-result-object v0

    :cond_36
    iget-wide v4, p0, Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer;->mConsumedInputSizeBytes:J

    int-to-long v6, v1

    add-long/2addr v4, v6

    iput-wide v4, p0, Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer;->mConsumedInputSizeBytes:J

    iput v2, p0, Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer;->mChunkLength:I

    :cond_3e
    :goto_3e
    iget v1, p0, Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer;->mChunkSizeThreshold:I

    if-lt p3, v1, :cond_60

    iget v1, p0, Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer;->mChunkSizeMax:I

    if-ge p3, v1, :cond_47

    move v1, p3

    :cond_47
    iget-object v3, p0, Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer;->mKeyStoreStream:Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer$Stream;

    invoke-static {p1, p2, v1}, Landroid/security/keystore/ArrayUtils;->subarray([BII)[B

    move-result-object v4

    invoke-interface {v3, v4}, Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer$Stream;->update([B)[B

    move-result-object v3

    sub-int/2addr p3, v1

    add-int/2addr p2, v1

    iget-wide v4, p0, Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer;->mConsumedInputSizeBytes:J

    int-to-long v6, v1

    add-long/2addr v4, v6

    iput-wide v4, p0, Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer;->mConsumedInputSizeBytes:J

    if-eqz v3, :cond_5f

    invoke-static {v0, v3}, Landroid/security/keystore/ArrayUtils;->concat([B[B)[B

    move-result-object v0

    :cond_5f
    goto :goto_3e

    :cond_60
    if-lez p3, :cond_70

    iget-object v1, p0, Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer;->mChunk:[B

    invoke-static {p1, p2, v1, v2, p3}, Landroid/security/keystore/ArrayUtils;->copy([BI[BII)I

    move-result v1

    iput v1, p0, Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer;->mChunkLength:I

    iget-wide v1, p0, Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer;->mConsumedInputSizeBytes:J

    int-to-long v3, p3

    add-long/2addr v1, v3

    iput-wide v1, p0, Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer;->mConsumedInputSizeBytes:J

    :cond_70
    iget-wide v1, p0, Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer;->mProducedOutputSizeBytes:J

    array-length v3, v0

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer;->mProducedOutputSizeBytes:J

    return-object v0

    :cond_78
    new-instance v0, Landroid/security/KeyStoreException;

    const/16 v1, -0x3e8

    const-string v2, "Input offset and length out of bounds of input array"

    invoke-direct {v0, v1, v2}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_82
    :goto_82
    sget-object v0, Llibcore/util/EmptyArray;->BYTE:[B

    return-object v0
.end method
