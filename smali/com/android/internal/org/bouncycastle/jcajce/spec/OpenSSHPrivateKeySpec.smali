# classes4.dex

.class public Lcom/android/internal/org/bouncycastle/jcajce/spec/OpenSSHPrivateKeySpec;
.super Ljava/security/spec/EncodedKeySpec;


# instance fields
.field private final format:Ljava/lang/String;


# direct methods
.method public constructor <init>([B)V
    .registers 5

    invoke-direct {p0, p1}, Ljava/security/spec/EncodedKeySpec;-><init>([B)V

    const/4 v0, 0x0

    aget-byte v1, p1, v0

    const/16 v2, 0x30

    if-ne v1, v2, :cond_f

    const-string v0, "ASN.1"

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/spec/OpenSSHPrivateKeySpec;->format:Ljava/lang/String;

    goto :goto_19

    :cond_f
    aget-byte v0, p1, v0

    const/16 v1, 0x6f

    if-ne v0, v1, :cond_1a

    const-string v0, "OpenSSH"

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/spec/OpenSSHPrivateKeySpec;->format:Ljava/lang/String;

    :goto_19
    return-void

    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "unknown byte encoding"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getFormat()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/spec/OpenSSHPrivateKeySpec;->format:Ljava/lang/String;

    return-object v0
.end method