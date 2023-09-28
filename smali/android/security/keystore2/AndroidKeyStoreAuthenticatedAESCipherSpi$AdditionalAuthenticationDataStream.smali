# classes3.dex

.class Landroid/security/keystore2/AndroidKeyStoreAuthenticatedAESCipherSpi$AdditionalAuthenticationDataStream;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer$Stream;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/keystore2/AndroidKeyStoreAuthenticatedAESCipherSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AdditionalAuthenticationDataStream"
.end annotation


# instance fields
.field private final mOperation:Landroid/security/KeyStoreOperation;


# direct methods
.method private constructor <init>(Landroid/security/KeyStoreOperation;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/security/keystore2/AndroidKeyStoreAuthenticatedAESCipherSpi$AdditionalAuthenticationDataStream;->mOperation:Landroid/security/KeyStoreOperation;

    return-void
.end method

.method synthetic constructor <init>(Landroid/security/KeyStoreOperation;Landroid/security/keystore2/AndroidKeyStoreAuthenticatedAESCipherSpi$AdditionalAuthenticationDataStream-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/security/keystore2/AndroidKeyStoreAuthenticatedAESCipherSpi$AdditionalAuthenticationDataStream;-><init>(Landroid/security/KeyStoreOperation;)V

    return-void
.end method


# virtual methods
.method public finish([B[B)[B
    .registers 4

    const/4 v0, 0x0

    return-object v0
.end method

.method public update([B)[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/KeyStoreException;
        }
    .end annotation

    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreAuthenticatedAESCipherSpi$AdditionalAuthenticationDataStream;->mOperation:Landroid/security/KeyStoreOperation;

    invoke-virtual {v0, p1}, Landroid/security/KeyStoreOperation;->updateAad([B)V

    const/4 v0, 0x0

    return-object v0
.end method
