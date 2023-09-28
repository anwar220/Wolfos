# classes4.dex

.class public Lcom/android/internal/org/bouncycastle/asn1/x500/style/X500NameTokenizer;
.super Ljava/lang/Object;


# instance fields
.field private buf:Ljava/lang/StringBuffer;

.field private index:I

.field private separator:C

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const/16 v0, 0x2c

    invoke-direct {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/x500/style/X500NameTokenizer;-><init>(Ljava/lang/String;C)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;C)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->buf:Ljava/lang/StringBuffer;

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->value:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->index:I

    iput-char p2, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->separator:C

    return-void
.end method


# virtual methods
.method public hasMoreTokens()Z
    .registers 3

    iget v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->index:I

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->value:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public nextToken()Ljava/lang/String;
    .registers 8

    iget v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->index:I

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->value:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_c

    const/4 v0, 0x0

    return-object v0

    :cond_c
    iget v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->index:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->buf:Ljava/lang/StringBuffer;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->setLength(I)V

    :goto_18
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->value:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v0, v4, :cond_5e

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->value:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v6, 0x22

    if-ne v4, v6, :cond_39

    if-nez v3, :cond_32

    if-nez v2, :cond_30

    move v6, v1

    goto :goto_31

    :cond_30
    move v6, v5

    :goto_31
    move v2, v6

    :cond_32
    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v3, 0x0

    goto :goto_5a

    :cond_39
    if-nez v3, :cond_54

    if-eqz v2, :cond_3e

    goto :goto_54

    :cond_3e
    const/16 v6, 0x5c

    if-ne v4, v6, :cond_49

    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v3, 0x1

    goto :goto_5a

    :cond_49
    iget-char v6, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->separator:C

    if-ne v4, v6, :cond_4e

    goto :goto_5e

    :cond_4e
    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_5a

    :cond_54
    :goto_54
    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v3, 0x0

    :goto_5a
    nop

    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    :cond_5e
    :goto_5e
    iput v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->index:I

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
