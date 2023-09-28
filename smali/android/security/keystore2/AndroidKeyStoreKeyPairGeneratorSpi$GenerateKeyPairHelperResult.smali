# classes3.dex

.class Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi$GenerateKeyPairHelperResult;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GenerateKeyPairHelperResult"
.end annotation


# instance fields
.field public final keyPair:Ljava/security/KeyPair;

.field public final rkpStatus:I


# direct methods
.method private constructor <init>(ILjava/security/KeyPair;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi$GenerateKeyPairHelperResult;->rkpStatus:I

    iput-object p2, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi$GenerateKeyPairHelperResult;->keyPair:Ljava/security/KeyPair;

    return-void
.end method

.method synthetic constructor <init>(ILjava/security/KeyPair;Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi$GenerateKeyPairHelperResult-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi$GenerateKeyPairHelperResult;-><init>(ILjava/security/KeyPair;)V

    return-void
.end method
