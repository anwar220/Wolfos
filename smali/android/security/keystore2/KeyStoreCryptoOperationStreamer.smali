# classes3.dex

.class interface abstract Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;
.super Ljava/lang/Object;


# virtual methods
.method public abstract doFinal([BII[B)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/KeyStoreException;
        }
    .end annotation
.end method

.method public abstract getConsumedInputSizeBytes()J
.end method

.method public abstract getProducedOutputSizeBytes()J
.end method

.method public abstract update([BII)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/KeyStoreException;
        }
    .end annotation
.end method
