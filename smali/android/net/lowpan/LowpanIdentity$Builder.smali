# classes2.dex

.class public Landroid/net/lowpan/LowpanIdentity$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/lowpan/LowpanIdentity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# static fields
.field private static final stringPrep:Landroid/icu/text/StringPrep;


# instance fields
.field final mIdentity:Landroid/net/lowpan/LowpanIdentity;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    nop

    const/16 v0, 0x8

    invoke-static {v0}, Landroid/icu/text/StringPrep;->getInstance(I)Landroid/icu/text/StringPrep;

    move-result-object v0

    sput-object v0, Landroid/net/lowpan/LowpanIdentity$Builder;->stringPrep:Landroid/icu/text/StringPrep;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/net/lowpan/LowpanIdentity;

    invoke-direct {v0}, Landroid/net/lowpan/LowpanIdentity;-><init>()V

    iput-object v0, p0, Landroid/net/lowpan/LowpanIdentity$Builder;->mIdentity:Landroid/net/lowpan/LowpanIdentity;

    return-void
.end method

.method private static escape([B)Ljava/lang/String;
    .registers 8

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_8
    if-ge v3, v1, :cond_30

    aget-byte v4, p0, v3

    const/16 v5, 0x20

    if-lt v4, v5, :cond_19

    const/16 v5, 0x7e

    if-gt v4, v5, :cond_19

    int-to-char v5, v4

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2d

    :cond_19
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    and-int/lit16 v6, v4, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    const-string v6, "\\0x%02x"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_2d
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_30
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public build()Landroid/net/lowpan/LowpanIdentity;
    .registers 2

    iget-object v0, p0, Landroid/net/lowpan/LowpanIdentity$Builder;->mIdentity:Landroid/net/lowpan/LowpanIdentity;

    return-object v0
.end method

.method public setChannel(I)Landroid/net/lowpan/LowpanIdentity$Builder;
    .registers 3

    iget-object v0, p0, Landroid/net/lowpan/LowpanIdentity$Builder;->mIdentity:Landroid/net/lowpan/LowpanIdentity;

    invoke-static {v0, p1}, Landroid/net/lowpan/LowpanIdentity;->-$$Nest$fputmChannel(Landroid/net/lowpan/LowpanIdentity;I)V

    return-object p0
.end method

.method public setLowpanIdentity(Landroid/net/lowpan/LowpanIdentity;)Landroid/net/lowpan/LowpanIdentity$Builder;
    .registers 3

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/net/lowpan/LowpanIdentity;->getRawName()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/lowpan/LowpanIdentity$Builder;->setRawName([B)Landroid/net/lowpan/LowpanIdentity$Builder;

    invoke-virtual {p1}, Landroid/net/lowpan/LowpanIdentity;->getXpanid()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/lowpan/LowpanIdentity$Builder;->setXpanid([B)Landroid/net/lowpan/LowpanIdentity$Builder;

    invoke-virtual {p1}, Landroid/net/lowpan/LowpanIdentity;->getPanid()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/net/lowpan/LowpanIdentity$Builder;->setPanid(I)Landroid/net/lowpan/LowpanIdentity$Builder;

    invoke-virtual {p1}, Landroid/net/lowpan/LowpanIdentity;->getChannel()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/net/lowpan/LowpanIdentity$Builder;->setChannel(I)Landroid/net/lowpan/LowpanIdentity$Builder;

    invoke-virtual {p1}, Landroid/net/lowpan/LowpanIdentity;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/lowpan/LowpanIdentity$Builder;->setType(Ljava/lang/String;)Landroid/net/lowpan/LowpanIdentity$Builder;

    return-object p0
.end method

.method public setName(Ljava/lang/String;)Landroid/net/lowpan/LowpanIdentity$Builder;
    .registers 5

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_3
    iget-object v0, p0, Landroid/net/lowpan/LowpanIdentity$Builder;->mIdentity:Landroid/net/lowpan/LowpanIdentity;

    sget-object v1, Landroid/net/lowpan/LowpanIdentity$Builder;->stringPrep:Landroid/icu/text/StringPrep;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/icu/text/StringPrep;->prepare(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/lowpan/LowpanIdentity;->-$$Nest$fputmName(Landroid/net/lowpan/LowpanIdentity;Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/lowpan/LowpanIdentity$Builder;->mIdentity:Landroid/net/lowpan/LowpanIdentity;

    invoke-static {v0}, Landroid/net/lowpan/LowpanIdentity;->-$$Nest$fgetmName(Landroid/net/lowpan/LowpanIdentity;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/lowpan/LowpanIdentity;->-$$Nest$fputmRawName(Landroid/net/lowpan/LowpanIdentity;[B)V

    iget-object v0, p0, Landroid/net/lowpan/LowpanIdentity$Builder;->mIdentity:Landroid/net/lowpan/LowpanIdentity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/net/lowpan/LowpanIdentity;->-$$Nest$fputmIsNameValid(Landroid/net/lowpan/LowpanIdentity;Z)V
    :try_end_24
    .catch Landroid/icu/text/StringPrepParseException; {:try_start_3 .. :try_end_24} :catch_25

    goto :goto_3a

    :catch_25
    move-exception v0

    invoke-static {}, Landroid/net/lowpan/LowpanIdentity;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/icu/text/StringPrepParseException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/net/lowpan/LowpanIdentity$Builder;->setRawName([B)Landroid/net/lowpan/LowpanIdentity$Builder;

    :goto_3a
    return-object p0
.end method

.method public setPanid(I)Landroid/net/lowpan/LowpanIdentity$Builder;
    .registers 3

    iget-object v0, p0, Landroid/net/lowpan/LowpanIdentity$Builder;->mIdentity:Landroid/net/lowpan/LowpanIdentity;

    invoke-static {v0, p1}, Landroid/net/lowpan/LowpanIdentity;->-$$Nest$fputmPanid(Landroid/net/lowpan/LowpanIdentity;I)V

    return-object p0
.end method

.method public setRawName([B)Landroid/net/lowpan/LowpanIdentity$Builder;
    .registers 6

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/net/lowpan/LowpanIdentity$Builder;->mIdentity:Landroid/net/lowpan/LowpanIdentity;

    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-static {v0, v1}, Landroid/net/lowpan/LowpanIdentity;->-$$Nest$fputmRawName(Landroid/net/lowpan/LowpanIdentity;[B)V

    iget-object v0, p0, Landroid/net/lowpan/LowpanIdentity$Builder;->mIdentity:Landroid/net/lowpan/LowpanIdentity;

    new-instance v1, Ljava/lang/String;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, p1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-static {v0, v1}, Landroid/net/lowpan/LowpanIdentity;->-$$Nest$fputmName(Landroid/net/lowpan/LowpanIdentity;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_1b
    sget-object v1, Landroid/net/lowpan/LowpanIdentity$Builder;->stringPrep:Landroid/icu/text/StringPrep;

    iget-object v2, p0, Landroid/net/lowpan/LowpanIdentity$Builder;->mIdentity:Landroid/net/lowpan/LowpanIdentity;

    invoke-static {v2}, Landroid/net/lowpan/LowpanIdentity;->-$$Nest$fgetmName(Landroid/net/lowpan/LowpanIdentity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/icu/text/StringPrep;->prepare(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/net/lowpan/LowpanIdentity$Builder;->mIdentity:Landroid/net/lowpan/LowpanIdentity;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    invoke-static {v3, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    invoke-static {v2, v3}, Landroid/net/lowpan/LowpanIdentity;->-$$Nest$fputmIsNameValid(Landroid/net/lowpan/LowpanIdentity;Z)V
    :try_end_36
    .catch Landroid/icu/text/StringPrepParseException; {:try_start_1b .. :try_end_36} :catch_37

    goto :goto_48

    :catch_37
    move-exception v1

    invoke-static {}, Landroid/net/lowpan/LowpanIdentity;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Landroid/icu/text/StringPrepParseException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Landroid/net/lowpan/LowpanIdentity$Builder;->mIdentity:Landroid/net/lowpan/LowpanIdentity;

    invoke-static {v2, v0}, Landroid/net/lowpan/LowpanIdentity;->-$$Nest$fputmIsNameValid(Landroid/net/lowpan/LowpanIdentity;Z)V

    :goto_48
    iget-object v0, p0, Landroid/net/lowpan/LowpanIdentity$Builder;->mIdentity:Landroid/net/lowpan/LowpanIdentity;

    invoke-static {v0}, Landroid/net/lowpan/LowpanIdentity;->-$$Nest$fgetmIsNameValid(Landroid/net/lowpan/LowpanIdentity;)Z

    move-result v0

    if-nez v0, :cond_72

    iget-object v0, p0, Landroid/net/lowpan/LowpanIdentity$Builder;->mIdentity:Landroid/net/lowpan/LowpanIdentity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "«"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Landroid/net/lowpan/LowpanIdentity$Builder;->escape([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "»"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/lowpan/LowpanIdentity;->-$$Nest$fputmName(Landroid/net/lowpan/LowpanIdentity;Ljava/lang/String;)V

    :cond_72
    return-object p0
.end method

.method public setType(Ljava/lang/String;)Landroid/net/lowpan/LowpanIdentity$Builder;
    .registers 3

    iget-object v0, p0, Landroid/net/lowpan/LowpanIdentity$Builder;->mIdentity:Landroid/net/lowpan/LowpanIdentity;

    invoke-static {v0, p1}, Landroid/net/lowpan/LowpanIdentity;->-$$Nest$fputmType(Landroid/net/lowpan/LowpanIdentity;Ljava/lang/String;)V

    return-object p0
.end method

.method public setXpanid([B)Landroid/net/lowpan/LowpanIdentity$Builder;
    .registers 4

    iget-object v0, p0, Landroid/net/lowpan/LowpanIdentity$Builder;->mIdentity:Landroid/net/lowpan/LowpanIdentity;

    if-eqz p1, :cond_b

    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    invoke-static {v0, v1}, Landroid/net/lowpan/LowpanIdentity;->-$$Nest$fputmXpanid(Landroid/net/lowpan/LowpanIdentity;[B)V

    return-object p0
.end method
