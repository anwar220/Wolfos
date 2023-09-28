# classes4.dex

.class Lcom/android/internal/org/bouncycastle/its/asn1/Utils;
.super Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static octetStringFixed([B)[B
    .registers 3

    array-length v0, p0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_e

    array-length v0, p0

    const/16 v1, 0x20

    if-gt v0, v1, :cond_e

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0

    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "octet string out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static octetStringFixed([BI)[B
    .registers 4

    array-length v0, p0

    if-ne v0, p1, :cond_4

    return-object p0

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "octet string out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
