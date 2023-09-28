# classes3.dex

.class public Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer$MainDataStream;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer$Stream;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MainDataStream"
.end annotation


# instance fields
.field private final mOperation:Landroid/security/KeyStoreOperation;


# direct methods
.method constructor <init>(Landroid/security/KeyStoreOperation;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer$MainDataStream;->mOperation:Landroid/security/KeyStoreOperation;

    return-void
.end method


# virtual methods
.method public finish([B[B)[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/KeyStoreException;
        }
    .end annotation

    iget-object v0, p0, Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer$MainDataStream;->mOperation:Landroid/security/KeyStoreOperation;

    invoke-virtual {v0, p1, p2}, Landroid/security/KeyStoreOperation;->finish([B[B)[B

    move-result-object v0

    return-object v0
.end method

.method public update([B)[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/KeyStoreException;
        }
    .end annotation

    iget-object v0, p0, Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer$MainDataStream;->mOperation:Landroid/security/KeyStoreOperation;

    invoke-virtual {v0, p1}, Landroid/security/KeyStoreOperation;->update([B)[B

    move-result-object v0

    return-object v0
.end method
