# classes4.dex

.class public Lcom/android/internal/org/bouncycastle/util/io/pem/PemHeader;
.super Ljava/lang/Object;


# instance fields
.field private name:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/util/io/pem/PemHeader;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/util/io/pem/PemHeader;->value:Ljava/lang/String;

    return-void
.end method

.method private getHashCode(Ljava/lang/String;)I
    .registers 3

    if-nez p1, :cond_4

    const/4 v0, 0x1

    return v0

    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method private isEqual(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    if-ne p1, p2, :cond_4

    const/4 v0, 0x1

    return v0

    :cond_4
    if-eqz p1, :cond_e

    if-nez p2, :cond_9

    goto :goto_e

    :cond_9
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_e
    :goto_e
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/util/io/pem/PemHeader;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    move-object v0, p1

    check-cast v0, Lcom/android/internal/org/bouncycastle/util/io/pem/PemHeader;

    if-eq v0, p0, :cond_1f

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/util/io/pem/PemHeader;->name:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/internal/org/bouncycastle/util/io/pem/PemHeader;->name:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/android/internal/org/bouncycastle/util/io/pem/PemHeader;->isEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_20

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/util/io/pem/PemHeader;->value:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/internal/org/bouncycastle/util/io/pem/PemHeader;->value:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/android/internal/org/bouncycastle/util/io/pem/PemHeader;->isEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_20

    :cond_1f
    const/4 v1, 0x1

    :cond_20
    return v1
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/util/io/pem/PemHeader;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/util/io/pem/PemHeader;->value:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/util/io/pem/PemHeader;->name:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/util/io/pem/PemHeader;->getHashCode(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/util/io/pem/PemHeader;->value:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/internal/org/bouncycastle/util/io/pem/PemHeader;->getHashCode(Ljava/lang/String;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    return v0
.end method
