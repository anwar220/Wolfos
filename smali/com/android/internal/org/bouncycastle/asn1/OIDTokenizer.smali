# classes4.dex

.class public Lcom/android/internal/org/bouncycastle/asn1/OIDTokenizer;
.super Ljava/lang/Object;


# instance fields
.field private index:I

.field private oid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/OIDTokenizer;->oid:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/asn1/OIDTokenizer;->index:I

    return-void
.end method


# virtual methods
.method public hasMoreTokens()Z
    .registers 3

    iget v0, p0, Lcom/android/internal/org/bouncycastle/asn1/OIDTokenizer;->index:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public nextToken()Ljava/lang/String;
    .registers 5

    iget v0, p0, Lcom/android/internal/org/bouncycastle/asn1/OIDTokenizer;->index:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_7

    const/4 v0, 0x0

    return-object v0

    :cond_7
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/OIDTokenizer;->oid:Ljava/lang/String;

    const/16 v3, 0x2e

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-ne v0, v1, :cond_1c

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/OIDTokenizer;->oid:Ljava/lang/String;

    iget v3, p0, Lcom/android/internal/org/bouncycastle/asn1/OIDTokenizer;->index:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput v1, p0, Lcom/android/internal/org/bouncycastle/asn1/OIDTokenizer;->index:I

    return-object v2

    :cond_1c
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/OIDTokenizer;->oid:Ljava/lang/String;

    iget v2, p0, Lcom/android/internal/org/bouncycastle/asn1/OIDTokenizer;->index:I

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/android/internal/org/bouncycastle/asn1/OIDTokenizer;->index:I

    return-object v1
.end method
