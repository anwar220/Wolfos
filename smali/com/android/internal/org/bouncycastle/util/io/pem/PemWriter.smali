# classes4.dex

.class public Lcom/android/internal/org/bouncycastle/util/io/pem/PemWriter;
.super Ljava/io/BufferedWriter;


# static fields
.field private static final LINE_LENGTH:I = 0x40


# instance fields
.field private buf:[C

.field private final nlLength:I


# direct methods
.method public constructor <init>(Ljava/io/Writer;)V
    .registers 4

    invoke-direct {p0, p1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    const/16 v0, 0x40

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/util/io/pem/PemWriter;->buf:[C

    invoke-static {}, Lcom/android/internal/org/bouncycastle/util/Strings;->lineSeparator()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    iput v1, p0, Lcom/android/internal/org/bouncycastle/util/io/pem/PemWriter;->nlLength:I

    goto :goto_19

    :cond_16
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/internal/org/bouncycastle/util/io/pem/PemWriter;->nlLength:I

    :goto_19
    return-void
.end method

.method private writeEncoded([B)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/util/encoders/Base64;->encode([B)[B

    move-result-object p1

    const/4 v0, 0x0

    :goto_5
    array-length v1, p1

    if-ge v0, v1, :cond_2a

    const/4 v1, 0x0

    :goto_9
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/util/io/pem/PemWriter;->buf:[C

    array-length v3, v2

    if-eq v1, v3, :cond_1e

    add-int v3, v0, v1

    array-length v4, p1

    if-lt v3, v4, :cond_14

    goto :goto_1e

    :cond_14
    add-int v3, v0, v1

    aget-byte v3, p1, v3

    int-to-char v3, v3

    aput-char v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_1e
    :goto_1e
    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, v1}, Lcom/android/internal/org/bouncycastle/util/io/pem/PemWriter;->write([CII)V

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/util/io/pem/PemWriter;->newLine()V

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/util/io/pem/PemWriter;->buf:[C

    array-length v1, v1

    add-int/2addr v0, v1

    goto :goto_5

    :cond_2a
    return-void
.end method

.method private writePostEncapsulationBoundary(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-----END "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-----"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/util/io/pem/PemWriter;->write(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/util/io/pem/PemWriter;->newLine()V

    return-void
.end method

.method private writePreEncapsulationBoundary(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-----BEGIN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-----"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/util/io/pem/PemWriter;->write(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/util/io/pem/PemWriter;->newLine()V

    return-void
.end method


# virtual methods
.method public getOutputSize(Lcom/android/internal/org/bouncycastle/util/io/pem/PemObject;)I
    .registers 7

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/util/io/pem/PemObject;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0xa

    iget v1, p0, Lcom/android/internal/org/bouncycastle/util/io/pem/PemWriter;->nlLength:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x6

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/util/io/pem/PemObject;->getHeaders()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_51

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/util/io/pem/PemObject;->getHeaders()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_25
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/org/bouncycastle/util/io/pem/PemHeader;

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/util/io/pem/PemHeader;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const-string v4, ": "

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/util/io/pem/PemHeader;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/internal/org/bouncycastle/util/io/pem/PemWriter;->nlLength:I

    add-int/2addr v3, v4

    add-int/2addr v0, v3

    goto :goto_25

    :cond_4e
    iget v1, p0, Lcom/android/internal/org/bouncycastle/util/io/pem/PemWriter;->nlLength:I

    add-int/2addr v0, v1

    :cond_51
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/util/io/pem/PemObject;->getContent()[B

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, 0x2

    div-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x4

    add-int/lit8 v2, v1, 0x40

    add-int/lit8 v2, v2, -0x1

    div-int/lit8 v2, v2, 0x40

    iget v3, p0, Lcom/android/internal/org/bouncycastle/util/io/pem/PemWriter;->nlLength:I

    mul-int/2addr v2, v3

    add-int/2addr v2, v1

    add-int/2addr v0, v2

    return v0
.end method

.method public writeObject(Lcom/android/internal/org/bouncycastle/util/io/pem/PemObjectGenerator;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Lcom/android/internal/org/bouncycastle/util/io/pem/PemObjectGenerator;->generate()Lcom/android/internal/org/bouncycastle/util/io/pem/PemObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/util/io/pem/PemObject;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/org/bouncycastle/util/io/pem/PemWriter;->writePreEncapsulationBoundary(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/util/io/pem/PemObject;->getHeaders()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_43

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/util/io/pem/PemObject;->getHeaders()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_40

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/org/bouncycastle/util/io/pem/PemHeader;

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/util/io/pem/PemHeader;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/org/bouncycastle/util/io/pem/PemWriter;->write(Ljava/lang/String;)V

    const-string v3, ": "

    invoke-virtual {p0, v3}, Lcom/android/internal/org/bouncycastle/util/io/pem/PemWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/util/io/pem/PemHeader;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/org/bouncycastle/util/io/pem/PemWriter;->write(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/util/io/pem/PemWriter;->newLine()V

    goto :goto_1d

    :cond_40
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/util/io/pem/PemWriter;->newLine()V

    :cond_43
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/util/io/pem/PemObject;->getContent()[B

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/org/bouncycastle/util/io/pem/PemWriter;->writeEncoded([B)V

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/util/io/pem/PemObject;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/org/bouncycastle/util/io/pem/PemWriter;->writePostEncapsulationBoundary(Ljava/lang/String;)V

    return-void
.end method
